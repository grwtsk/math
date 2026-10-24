# withModuleTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:502f42c79020e2deae367db3c9e10144d94b8053453ffa74e3377feb94792e6e",
  "kind": "def",
  "lexical_name": "withModuleTopology",
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
  "slug": "withmoduletopology--4877b647ee121079e6b71a77",
  "source": {
    "blob": "61a535610f8a9d1a66226602721ddd2a1eda3a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4877b647ee121079e6b71a77a34c11f01d552ce7b531506c3acd63a4657a6b57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:502f42c79020e2deae367db3c9e10144d94b8053453ffa74e3377feb94792e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withModuleTopology : ModuleCat R ⥤ TopModuleCat R where
  obj X :=
    letI := moduleTopology R X
    letI := IsModuleTopology.isTopologicalAddGroup R X
    ↧X
  map {X Y} f :=
    letI := moduleTopology R X
    letI := moduleTopology R Y
    letI := IsModuleTopology.isTopologicalAddGroup R Y
    ⟨f.hom, IsModuleTopology.continuous_of_linearMap f.hom⟩

set_option backward.isDefEq.respectTransparency false in
/-- The adjunction between `withModuleTopology` and the forgetful functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta9879e37056683cee9fed6f45b4c60f321c8bc5b266c356371bf5f6bfb3974e9.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61a535610f8a9d1a66226602721ddd2a1eda3a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
