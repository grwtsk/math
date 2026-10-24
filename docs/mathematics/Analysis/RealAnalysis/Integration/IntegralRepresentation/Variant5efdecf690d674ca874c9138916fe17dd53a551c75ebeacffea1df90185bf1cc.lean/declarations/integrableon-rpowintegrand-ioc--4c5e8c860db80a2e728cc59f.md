# integrableOn_rpowIntegrand₀₁_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55642296-3559-ae45-615f-2e4cd8e3afc7",
  "kind": "lemma",
  "lexical_name": "integrableOn_rpowIntegrand₀₁_Ioc",
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
  "slug": "integrableon-rpowintegrand-ioc--4c5e8c860db80a2e728cc59f",
  "source": {
    "blob": "443f65af5756061d550fe74ea1d2c4e23305be90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c5e8c860db80a2e728cc59f15394ed1f266402de11973eb73ca4b79e4175d0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55642296-3559-ae45-615f-2e4cd8e3afc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integrableOn_rpowIntegrand₀₁_Ioc (hp : p ∈ Ioo 0 1) (hx : 0 ≤ x) :
    IntegrableOn (rpowIntegrand₀₁ p · x) (Ioc 0 1) := by
  refine IntegrableOn.congr_set_ae (t := Ioo 0 1) ?_ (Filter.EventuallyEq.symm Ioo_ae_eq_Ioc)
  refine ⟨?meas, ?finite⟩
  case meas =>
    refine ContinuousOn.aestronglyMeasurable ?_ measurableSet_Ioo
    exact ContinuousOn.mono (continuousOn_rpowIntegrand₀₁ hp hx) Ioo_subset_Ioi_self
  case finite =>
    refine HasFiniteIntegral.mono' (g := fun t => t ^ (p - 1)) ?finitebound ?ae_le
    case finitebound =>
      apply Integrable.hasFiniteIntegral
      rw [Set.mem_Ioo] at hp
      rw [← IntegrableOn, intervalIntegral.integrableOn_Ioo_rpow_iff]
      · linarith
      · exact zero_lt_one
    case ae_le =>
      refine ae_restrict_of_forall_mem measurableSet_Ioo fun t ht => ?_
      rw [Real.norm_of_nonneg (rpowIntegrand₀₁_nonneg hp.1 (le_of_lt ht.1) hx)]
      exact rpowIntegrand₀₁_le_rpow_sub_one hp (le_of_lt ht.1) hx

/- This lemma is private because it is strictly weaker than `integrableOn_rpowIntegrand₀₁_Ioi` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443f65af5756061d550fe74ea1d2c4e23305be90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
