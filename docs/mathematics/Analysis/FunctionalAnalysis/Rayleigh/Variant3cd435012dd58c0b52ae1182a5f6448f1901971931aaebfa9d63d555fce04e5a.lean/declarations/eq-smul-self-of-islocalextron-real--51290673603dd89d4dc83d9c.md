# eq_smul_self_of_isLocalExtrOn_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb6a15fff6867afccd565ec416cf5b3c57e9670f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22235196-d655-6dc2-7725-909903416776",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:928b3d98-50c3-43f8-db92-4f691a1540eb",
  "kind": "theorem",
  "lexical_name": "eq_smul_self_of_isLocalExtrOn_real",
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
  "slug": "eq-smul-self-of-islocalextron-real--51290673603dd89d4dc83d9c",
  "source": {
    "blob": "cb6a15fff6867afccd565ec416cf5b3c57e9670f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 133,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51290673603dd89d4dc83d9cf832dc2ea49e4f243308060431cbe83038e47b6e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928b3d98-50c3-43f8-db92-4f691a1540eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_smul_self_of_isLocalExtrOn_real (hT : IsSelfAdjoint T) {x₀ : F}
    (hextr : IsLocalExtrOn T.reApplyInnerSelf (sphere (0 : F) ‖x₀‖) x₀) :
    T x₀ = T.rayleighQuotient x₀ • x₀ := by
  obtain ⟨a, b, h₁, h₂⟩ := hT.linearly_dependent_of_isLocalExtrOn hextr
  by_cases hx₀ : x₀ = 0
  · simp [hx₀]
  by_cases hb : b = 0
  · have : a ≠ 0 := by simpa [hb] using h₁
    refine absurd ?_ hx₀
    apply smul_right_injective F this
    simpa [hb] using h₂
  let c : ℝ := -b⁻¹ * a
  have hc : T x₀ = c • x₀ := by
    have : b * (b⁻¹ * a) = a := by field_simp [mul_comm]
    apply smul_right_injective F hb
    simp [c, eq_neg_of_add_eq_zero_left h₂, ← mul_smul, this]
  convert hc
  have := congr_arg (fun x => ⟪x, x₀⟫_ℝ) hc
  field_simp [inner_smul_left, real_inner_self_eq_norm_mul_norm, sq] at this ⊢
  exact this

end Real

section CompleteSpace

variable [CompleteSpace E] {T : E →L[𝕜] E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Rayleigh/Variant3cd435012dd58c0b52ae1182a5f6448f1901971931aaebfa9d63d555fce04e5a.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6a15fff6867afccd565ec416cf5b3c57e9670f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
