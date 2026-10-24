# prime_summand_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04e0f7e0-377c-3130-7327-761edef7d5b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f126a022-6752-f28f-b2ff-7a07ba3cf419",
  "kind": "theorem",
  "lexical_name": "prime_summand_eq_zero",
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
  "slug": "prime-summand-eq-zero--ae0067e1a6972e7ec887a6cd",
  "source": {
    "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae0067e1a6972e7ec887a6cd0451b73909f9fb3205e7957fc7b5d5801102c7fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f126a022-6752-f28f-b2ff-7a07ba3cf419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_summand_eq_zero {k : ℝ → ℂ} {L : ℝ} (hks : tsupport k ⊆ Icc (-L) L)
    {n : ℕ} (hn : n ∉ Finset.Ioc 0 ⌊Real.exp L⌋₊) :
    ((Λ n / Real.sqrt n : ℝ) : ℂ) * (k (Real.log n) + k (-Real.log n)) = 0 := by
  rcases Nat.eq_zero_or_pos n with rfl | hpos
  · simp
  · have hn' : ⌊Real.exp L⌋₊ < n := by
      simp only [Finset.mem_Ioc, not_and, not_le] at hn
      exact hn hpos
    have hX : Real.exp L < n := (Nat.floor_lt (Real.exp_pos L).le).mp hn'
    have hlog : L < Real.log n := by
      rw [← Real.log_exp L]
      exact Real.log_lt_log (Real.exp_pos L) hX
    have h1 : k (Real.log n) = 0 := by
      apply image_eq_zero_of_notMem_tsupport
      intro hmem; have := (hks hmem).2; linarith
    have h2 : k (-Real.log n) = 0 := by
      apply image_eq_zero_of_notMem_tsupport
      intro hmem; have := (hks hmem).1; linarith
    rw [h1, h2, add_zero, mul_zero]

/-- *Prime term*: for k continuous with `supp k ⊆ [−L, L]` and h integrable on ℝ,
`−Σ_{n≥1} Λ(n)n^{-1/2}(k(log n)+k(−log n)) = ∫ h P_X`, `X = e^L`
(uses inversion: `k(y)+k(−y) = (1/π)∫ h(τ)cos(τy)dτ`, and `k(±log n) = 0` for `n > X`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11119489556113fd419d7b6fb45ccbaa2e493e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
