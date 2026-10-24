# toCommGrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:508b21c94c5072851f2ddd4188190b922a287c77c647630625e6f31896c94486",
  "kind": "def",
  "lexical_name": "toCommGrp",
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
  "slug": "tocommgrp--7031093ed8c733fa8dae6c4c",
  "source": {
    "blob": "ac95b83a04e457e47c81f0e3afd533c4c59d8f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant532a20f1bbca951c7c16cbcbf8a6536792a877e10ec38841fcee01b064db4002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7031093ed8c733fa8dae6c4c935b995597dfa94322bdacb2cfb3b3ecfc3d62eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant532a20f1bbca951c7c16cbcbf8a6536792a877e10ec38841fcee01b064db4002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:508b21c94c5072851f2ddd4188190b922a287c77c647630625e6f31896c94486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCommGrp : AddCommGrpCat ⥤ CommGrpCat where
  obj X := ↧(Multiplicative X)
  map {_} {_} f := CommGrpCat.ofHom f.hom.toMultiplicative

end AddCommGrpCat

/-- The equivalence of categories between `GrpCat` and `AddGrpCat`
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant532a20f1bbca951c7c16cbcbf8a6536792a877e10ec38841fcee01b064db4002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant532a20f1bbca951c7c16cbcbf8a6536792a877e10ec38841fcee01b064db4002.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac95b83a04e457e47c81f0e3afd533c4c59d8f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
