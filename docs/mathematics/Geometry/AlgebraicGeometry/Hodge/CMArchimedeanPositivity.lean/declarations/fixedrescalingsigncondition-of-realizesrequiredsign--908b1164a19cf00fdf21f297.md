# fixedRescalingSignCondition_of_realizesRequiredSign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57cc560c-bdce-b856-0616-13d83fa57835",
  "kind": "theorem",
  "lexical_name": "fixedRescalingSignCondition_of_realizesRequiredSign",
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
  "slug": "fixedrescalingsigncondition-of-realizesrequiredsign--908b1164a19cf00fdf21f297",
  "source": {
    "blob": "7b28a2ea77e43563b25646a5fcacfe4d937fefcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 258,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908b1164a19cf00fdf21f29777a2c4619431fd2e745c9027f6a1f550f73da1aa",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57cc560c-bdce-b856-0616-13d83fa57835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedRescalingSignCondition_of_realizesRequiredSign
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (f : E)
    (hreal : FixedElementRealizesRequiredSign E v P f) :
    FixedRescalingSignCondition E v P f := by
  intro σ
  have him0 := P.embedding_im_ne_zero E σ
  rcases v.isSign σ with hv | hv
  · by_cases hp : 0 < imagAt E P.xi σ
    · have hs : realSign (imagAt E P.xi σ) = 1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = -1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfneg := (hreal σ).2 hreq
      rw [hv]
      norm_num
      exact neg_pos.mpr (mul_neg_of_neg_of_pos hfneg hp)
    · have himneg : imagAt E P.xi σ < 0 :=
        lt_of_le_of_ne (le_of_not_gt hp) him0
      have hs : realSign (imagAt E P.xi σ) = -1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = 1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfpos := (hreal σ).1 hreq
      rw [hv]
      norm_num
      exact neg_pos.mpr (mul_neg_of_pos_of_neg hfpos himneg)
  · by_cases hp : 0 < imagAt E P.xi σ
    · have hs : realSign (imagAt E P.xi σ) = 1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = 1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfpos := (hreal σ).1 hreq
      rw [hv]
      norm_num
      exact mul_pos hfpos hp
    · have himneg : imagAt E P.xi σ < 0 :=
        lt_of_le_of_ne (le_of_not_gt hp) him0
      have hs : realSign (imagAt E P.xi σ) = -1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = -1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfneg := (hreal σ).2 hreq
      rw [hv]
      norm_num
      exact mul_pos_of_neg_of_neg hfneg himneg

/-- A nonzero conjugation-fixed rescaling satisfying the real sign condition
produces the manuscript's exact sign-controlled anti-invariant xi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b28a2ea77e43563b25646a5fcacfe4d937fefcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
