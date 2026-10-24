# poleFree_rectangleBoundaryIntegral_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e35bd24-4312-eea3-429c-a016eefd2971",
  "kind": "theorem",
  "lexical_name": "poleFree_rectangleBoundaryIntegral_eq_zero",
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
  "slug": "polefree-rectangleboundaryintegral-eq-zero--4c8093456c568ea073f2d01f",
  "source": {
    "blob": "b5b91ec55975ea3987e8fd584b2b636731ab44a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant9527219d082e29f664f6e1742dbdfb9d6b4f3078753c1665001b949475abf1f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c8093456c568ea073f2d01fae2e6d4c091a8c614f6c9593407c7f1a406f5d47",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContourShiftAPI/Variant9527219d082e29f664f6e1742dbdfb9d6b4f3078753c1665001b949475abf1f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e35bd24-4312-eea3-429c-a016eefd2971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleFree_rectangleBoundaryIntegral_eq_zero
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 :=
  rectangleBoundaryIntegral_eq_zero_of_differentiableOn f z w hf

/-- Checked incubating alias using continuity on the closed rectangle and
differentiability on its open interior. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContourShiftAPI/Variant9527219d082e29f664f6e1742dbdfb9d6b4f3078753c1665001b949475abf1f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant9527219d082e29f664f6e1742dbdfb9d6b4f3078753c1665001b949475abf1f0.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5b91ec55975ea3987e8fd584b2b636731ab44a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
