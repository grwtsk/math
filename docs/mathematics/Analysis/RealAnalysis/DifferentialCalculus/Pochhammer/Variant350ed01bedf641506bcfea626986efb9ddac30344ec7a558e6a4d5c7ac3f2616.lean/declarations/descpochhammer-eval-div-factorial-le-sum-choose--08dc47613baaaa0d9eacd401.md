# descPochhammer_eval_div_factorial_le_sum_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4138ec87a72de683e92921171f101e8eb068cf12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11c81081-1299-0dc8-8f1d-a97abc2154d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90f193ca-d1e6-fba8-2a0a-fd01ed76081f",
  "kind": "theorem",
  "lexical_name": "descPochhammer_eval_div_factorial_le_sum_choose",
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
  "slug": "descpochhammer-eval-div-factorial-le-sum-choose--08dc47613baaaa0d9eacd401",
  "source": {
    "blob": "4138ec87a72de683e92921171f101e8eb068cf12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08dc47613baaaa0d9eacd4013d6ceaa2549fae36e087981d923c19292c092e72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90f193ca-d1e6-fba8-2a0a-fd01ed76081f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descPochhammer_eval_div_factorial_le_sum_choose
    (hn : n ≠ 0) {ι : Type*} {t : Finset ι} (p : ι → ℕ) (w : ι → ℝ)
    (h₀ : ∀ i ∈ t, 0 ≤ w i) (h₁ : ∑ i ∈ t, w i = 1) (h_avg : n - 1 ≤ ∑ i ∈ t, w i * p i) :
    (descPochhammer ℝ n).eval (∑ i ∈ t, w i * p i) / n.factorial
      ≤ ∑ i ∈ t, w i * (p i).choose n := by
  simp_rw [Nat.cast_choose_eq_descPochhammer_div,
    mul_div, ← Finset.sum_div, descPochhammer_eval_eq_descFactorial]
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact descPochhammer_eval_le_sum_descFactorial hn p w h₀ h₁ h_avg

end DescPochhammer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4138ec87a72de683e92921171f101e8eb068cf12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
