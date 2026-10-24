# IsVeryGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad8a5416bed90d2124e35afd2163839d564b8cfd2f8a107016eb6690652ad52",
  "kind": "class",
  "lexical_name": "IsVeryGood",
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
  "slug": "isverygood--3d952c217cbd0800e8b2e1c3",
  "source": {
    "blob": "b25e4d249a347dccd21f35043353c9b6e71a9ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d952c217cbd0800e8b2e1c3a12b314fe132670af8acbb3d12ffc36a1d9b11e1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad8a5416bed90d2124e35afd2163839d564b8cfd2f8a107016eb6690652ad52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsVeryGood [HasBinaryCoproduct A A] [CategoryWithCofibrations C]
    [CategoryWithFibrations C] : Prop extends P.IsGood where
  fibration_π : Fibration P.π := by infer_instance

attribute [instance] IsGood.cofibration_i IsVeryGood.fibration_π

section

variable [HasBinaryCoproduct A A] [CategoryWithCofibrations C]
  [HasInitial C] [(cofibrations C).IsStableUnderComposition]
  [(cofibrations C).IsStableUnderCobaseChange]
  [IsCofibrant A] [P.IsGood]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Cylinder/Variant87ea5f5745daeef0ca23d5835996c5b1c3513082a8228a7fa24a663606778792.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25e4d249a347dccd21f35043353c9b6e71a9ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
