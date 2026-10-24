# sourcePeanoPrimitive_nonneg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07087094-a88b-63a7-9059-998ebf41171b",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_nonneg_iff",
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
  "slug": "sourcepeanoprimitive-nonneg-iff--73147f28e34dc972a6da4829",
  "source": {
    "blob": "2e280a034b9c6eb3fedf8c37c0698a575f77280e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73147f28e34dc972a6da4829f51d1f22871b378379343ccb19f0971e5fd3ea4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07087094-a88b-63a7-9059-998ebf41171b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_nonneg_iff {A : ℝ} (hA : 0 < A) :
    (∀ t : ℝ, 0 ≤ t → t ≤ 2 * A → 0 ≤ sourcePeanoPrimitive A t) ↔
      (136 / 7 : ℝ) ≤ A ^ 2 := by
  constructor
  · intro h
    apply (peanoNumerator_nonneg_iff hA).mp
    intro u hu0 hu2
    have ht0 : 0 ≤ A * u := mul_nonneg hA.le hu0
    have ht2 : A * u ≤ 2 * A := by nlinarith
    have hp := h (A * u) ht0 ht2
    rw [sourcePeanoPrimitive_eq_profile hA ht0 ht2] at hp
    have hu : A * u / A = u := by field_simp
    rw [hu] at hp
    have hZ : 0 < sourceNormalization A := by
      unfold sourceNormalization
      positivity
    exact (mul_nonneg_iff_of_pos_left (div_pos (Real.exp_pos _) hZ)).mp hp
  · intro h t ht0 ht2
    exact sourcePeanoPrimitive_nonneg hA h ht0 ht2

end FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variant036ca587a5bd3a02029ffb24b143e092e9e937d88c9974a2ec4bc270330fc817.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e280a034b9c6eb3fedf8c37c0698a575f77280e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
