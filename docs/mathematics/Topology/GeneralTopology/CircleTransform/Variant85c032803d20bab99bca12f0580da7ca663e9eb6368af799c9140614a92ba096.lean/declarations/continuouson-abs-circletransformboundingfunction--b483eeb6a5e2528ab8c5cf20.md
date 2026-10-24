# continuousOn_abs_circleTransformBoundingFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e09647a2-ccaf-02ac-1d8d-3c557b158db3",
  "kind": "theorem",
  "lexical_name": "continuousOn_abs_circleTransformBoundingFunction",
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
  "slug": "continuouson-abs-circletransformboundingfunction--b483eeb6a5e2528ab8c5cf20",
  "source": {
    "blob": "49d59833be360f171e55d4b675c7ddb398676809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b483eeb6a5e2528ab8c5cf2047b31bc6596dd3d30c7944efa8a32f896f06405c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e09647a2-ccaf-02ac-1d8d-3c557b158db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_abs_circleTransformBoundingFunction {R r : ℝ} (hr : r < R) (z : ℂ) :
    ContinuousOn (abs ∘ fun t => circleTransformBoundingFunction R z t)
      (closedBall z r ×ˢ univ) := by
  have : ContinuousOn (circleTransformBoundingFunction R z) (closedBall z r ×ˢ (⊤ : Set ℝ)) := by
    apply_rules [ContinuousOn.smul, continuousOn_const]
    simp only [deriv_circleMap]
    have c := (continuous_circleMap 0 R).continuousOn (s := ⊤)
    apply_rules [ContinuousOn.mul, c.comp continuousOn_snd fun _ => And.right, continuousOn_const]
    simp_rw [← inv_pow]
    apply continuousOn_prod_circle_transform_function hr
  refine' continuous_abs.continuousOn (s := ⊤).comp this _
  show MapsTo _ _ (⊤ : Set ℂ)
  simp [MapsTo]
#align complex.continuous_on_abs_circle_transform_bounding_function Complex.continuousOn_abs_circleTransformBoundingFunction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d59833be360f171e55d4b675c7ddb398676809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
