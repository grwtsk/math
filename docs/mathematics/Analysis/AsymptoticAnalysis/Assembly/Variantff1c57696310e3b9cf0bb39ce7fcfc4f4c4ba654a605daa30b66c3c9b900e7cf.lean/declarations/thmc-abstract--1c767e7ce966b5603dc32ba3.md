# thmC_abstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52b03892-43f4-64fb-b3db-e176704cf379",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6da143dc-b04a-b770-3382-2fd3c9912d2f",
  "kind": "theorem",
  "lexical_name": "thmC_abstract",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "thmc-abstract--1c767e7ce966b5603dc32ba3",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1566,
    "line": 1546,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c767e7ce966b5603dc32ba3b730aee75637dd356f43ea35b0f74a4507beb1f2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da143dc-b04a-b770-3382-2fd3c9912d2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1546–1566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmC_abstract (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid)
    (hlam : P.lam < 1) (hTr : ThmTracesHyp P Z)
    (hBlock : ∀ᶠ T in atTop, BlockInputs Z P T)
    (θ₀ : ℝ → ℝ) (hTail : ∀ᶠ T in atTop, TailInputs Z P T (θ₀ T))
    (hθ₀ : ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1))
    (hNII : ∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T)
    (hGzGp : ∀ᶠ T in atTop, Z.Gz P T = P.Gp T)
    (hcalE : Tendsto P.calE atTop (𝓝 0)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (Ffun P.lam - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.Nd T (2 * T) := by
  obtain ⟨R, hR, hev⟩ := thmBC_core Z H P hP hlam hTr hBlock θ₀ hTail hθ₀ hNII hGzGp hcalE
  exact eps_form_of_isLittleO (err := R) (hev.mono fun T h => h.2)
    (Eventually.of_forall fun T => Nat.cast_nonneg _) hR

end MainBC

/-! ### F5.  `𝓔_T → 0` (paper [thm:traces]: "`𝓔_T ≪_λ w/L + T^{λ−1} log l` (λ<1), `≪ w/L + log l/l` (λ=1)") -/

section CalE
open Filter Topology Real

/-- `X = (T/2π)^λ ≤ T` once `T ≥ 2π` (for `λ ≤ 1`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L1546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
