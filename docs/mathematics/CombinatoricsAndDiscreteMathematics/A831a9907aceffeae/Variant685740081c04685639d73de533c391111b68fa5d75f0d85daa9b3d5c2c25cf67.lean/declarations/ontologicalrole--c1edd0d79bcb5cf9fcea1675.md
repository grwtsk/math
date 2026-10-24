# OntologicalRole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b0ee8ed28ea8dbdf1ae8310bd960003effe63b139973b8a9668673d8238223d",
  "kind": "inductive",
  "lexical_name": "OntologicalRole",
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
  "slug": "ontologicalrole--c1edd0d79bcb5cf9fcea1675",
  "source": {
    "blob": "dd0cc4b0971e981b99eba2303af547fe7a039cc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A831a9907aceffeae/Variant685740081c04685639d73de533c391111b68fa5d75f0d85daa9b3d5c2c25cf67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1edd0d79bcb5cf9fcea1675785a3d8b948fab371792625a796eae9d949d83e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A831a9907aceffeae/Variant685740081c04685639d73de533c391111b68fa5d75f0d85daa9b3d5c2c25cf67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b0ee8ed28ea8dbdf1ae8310bd960003effe63b139973b8a9668673d8238223d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive OntologicalRole
  | object
  | structure
  | relation
  | property
  | operation
  | construction
  | invariant
  | statement
  | proof
  | method
  | representation
  | certificate
  deriving DecidableEq, Inhabited, Fintype

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A831a9907aceffeae/Variant685740081c04685639d73de533c391111b68fa5d75f0d85daa9b3d5c2c25cf67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A831a9907aceffeae/Variant685740081c04685639d73de533c391111b68fa5d75f0d85daa9b3d5c2c25cf67.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd0cc4b0971e981b99eba2303af547fe7a039cc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
