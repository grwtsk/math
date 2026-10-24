# PreEnvelGroupRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58853455fb218755faeffb5570328c7159b1950742a25b1e97d738de3988443f",
  "kind": "inductive",
  "lexical_name": "PreEnvelGroupRel",
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
  "slug": "preenvelgrouprel--a90e95c4a53ca2878413f2ad",
  "source": {
    "blob": "96d6e9b9f713f8c25c760bc914f4163ea7e250d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 550,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a90e95c4a53ca2878413f2adfc544b97afc0d1d087a91d934226fabf1b28e2d2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58853455fb218755faeffb5570328c7159b1950742a25b1e97d738de3988443f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PreEnvelGroupRel (R : Type u) [Rack R] : PreEnvelGroup R → PreEnvelGroup R → Prop
  | rel {a b : PreEnvelGroup R} (r : PreEnvelGroupRel' R a b) : PreEnvelGroupRel R a b

/-- A quick way to convert a `PreEnvelGroupRel'` to a `PreEnvelGroupRel`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d6e9b9f713f8c25c760bc914f4163ea7e250d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
