# isScalarTower''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b2df2d082db732ccf912cffb10f954e2fd4edd7727f450d2e43f18c672f7742",
  "kind": "instance",
  "lexical_name": "isScalarTower''",
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
  "slug": "isscalartower--8f9375f7cb81ffb3017f0f22",
  "source": {
    "blob": "d5357f877f67f85bc815733cefd7a4551524f285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 160,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f9375f7cb81ffb3017f0f2228deb3d1317636172d91a73bcb2fe73837954ba1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b2df2d082db732ccf912cffb10f954e2fd4edd7727f450d2e43f18c672f7742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower'' [SMul α β] [SMul α γ] [SMul β γ] [IsScalarTower α β γ] :
    IsScalarTower (Set α) (Set β) (Set γ) where
  smul_assoc _ _ _ := image2_assoc smul_assoc

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5357f877f67f85bc815733cefd7a4551524f285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
