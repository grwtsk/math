# isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55243b35-c245-6d29-ba9d-02b638fbe42d",
  "kind": "lemma",
  "lexical_name": "isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo",
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
  "slug": "ismintegralcurve-abs-add-one-of-ismintegralcurveon-ioo--6921436fdc878e4dfbeb31f9",
  "source": {
    "blob": "b01418a834361d0988a6855f35212635e34fab65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 81,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6921436fdc878e4dfbeb31f9135cdd42a48b93a7b462b7d523b9f4314886493a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55243b35-c245-6d29-ba9d-02b638fbe42d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo [BoundarylessManifold I M]
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M))) {x : M}
    (γ : ℝ → ℝ → M) (hγx : ∀ a, γ a 0 = x) (hγ : ∀ a > 0, IsMIntegralCurveOn (γ a) v (Ioo (-a) a)) :
    IsMIntegralCurve (fun t ↦ γ (|t| + 1) t) v := by
  intro t
  have ht : t ∈ Ioo (-(|t| + 1)) (|t| + 1) := by
    rw [mem_Ioo, ← abs_lt]
    exact lt_add_one _
  /- TODO: to fix the defeq abuse, the correct fix is probably to introduce `vmfderiv` as
  the derivative from a vector space to a manifold, and use it in the definition of
  `IsMIntegralCurveOn` and friends. -/
  apply HasMFDerivAt.congr_of_eventuallyEq_abuse (f := γ (|t| + 1))
  · exact hγ (|t| + 1) (by positivity) _ ht |>.hasMFDerivAt (Ioo_mem_nhds ht.1 ht.2)
  · rw [Filter.eventuallyEq_iff_exists_mem]
    refine ⟨Ioo (-(|t| + 1)) (|t| + 1), ?_,
      eqOn_abs_add_one_of_isMIntegralCurveOn_Ioo hv γ hγx hγ⟩
    have : |t| < |t| + 1 := lt_add_of_pos_right |t| zero_lt_one
    rw [abs_lt] at this
    exact Ioo_mem_nhds this.1 this.2

/-- The existence of a global integral curve is equivalent to the existence of a family of local
integral curves `γ : ℝ → ℝ → M` with the same starting point `γ 0 = x` such that each `γ a` is
defined on `Ioo (-a) a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant88b08af43d416ae0a059462d451d05fe69f8584443762e4e13ea556209bdcce8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b01418a834361d0988a6855f35212635e34fab65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
