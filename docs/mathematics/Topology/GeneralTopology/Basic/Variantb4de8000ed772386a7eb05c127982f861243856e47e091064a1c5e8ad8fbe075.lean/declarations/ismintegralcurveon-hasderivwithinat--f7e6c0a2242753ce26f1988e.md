# IsMIntegralCurveOn.hasDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d41e1c1-43c9-a5af-15f8-076f4d0c59be",
  "kind": "lemma",
  "lexical_name": "IsMIntegralCurveOn.hasDerivWithinAt",
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
  "slug": "ismintegralcurveon-hasderivwithinat--f7e6c0a2242753ce26f1988e",
  "source": {
    "blob": "850387ad019a58be0c1ef0e2b974b4007bccf65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e6c0a2242753ce26f1988e8944ea8d68732bcd6cb85f718b1380f5056643c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d41e1c1-43c9-a5af-15f8-076f4d0c59be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMIntegralCurveOn.hasDerivWithinAt (hγ : IsMIntegralCurveOn γ v s) {t : ℝ} (ht : t ∈ s)
    (hsrc : γ t ∈ (extChartAt I (γ t₀)).source) :
    HasDerivWithinAt ((extChartAt I (γ t₀)) ∘ γ)
      (tangentCoordChange I (γ t) (γ t₀) (γ t) (v (γ t))) s t := by
  -- turn `HasDerivWithinAt` into comp of `HasMFDerivWithinAt`
  replace hsrc := extChartAt_source I (γ t₀) ▸ hsrc
  rw [hasDerivWithinAt_iff_hasFDerivWithinAt, ← hasMFDerivWithinAt_iff_hasFDerivWithinAt]
  apply (HasMFDerivWithinAt.comp t (hasMFDerivWithinAt_extChartAt (I := I) hsrc) (hγ _ ht)
    (Set.subset_preimage_image _ _)).congr_mfderiv
  rw [ContinuousLinearMap.ext_iff]
  intro a
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.smulRight_apply, map_smul,
    ← one_apply_eq_self (F := TangentSpace 𝓘(ℝ, ℝ) t →L[ℝ] TangentSpace 𝓘(ℝ, ℝ) t) a,
    ← ContinuousLinearMap.smulRight_apply,
    mfderiv_chartAt_eq_tangentCoordChange hsrc]
  rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850387ad019a58be0c1ef0e2b974b4007bccf65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
