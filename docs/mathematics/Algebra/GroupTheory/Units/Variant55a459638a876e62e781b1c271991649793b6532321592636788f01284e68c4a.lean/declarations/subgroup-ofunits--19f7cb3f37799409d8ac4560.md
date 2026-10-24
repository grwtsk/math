# Subgroup.ofUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a054999eaa7792d5839080016d788a28f8e7cda2e6fe54bcc07bbad3d91f8eab",
  "kind": "def",
  "lexical_name": "Subgroup.ofUnits",
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
  "slug": "subgroup-ofunits--19f7cb3f37799409d8ac4560",
  "source": {
    "blob": "8076c04baa8ccc698b398895fde2bc6a3e81d537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 64,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19f7cb3f37799409d8ac4560eb92ec679ad92f66bce91dddfb514ef61770ce94",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a054999eaa7792d5839080016d788a28f8e7cda2e6fe54bcc07bbad3d91f8eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subgroup.ofUnits (S : Subgroup Mˣ) : Submonoid M := S.toSubmonoid.map (coeHom M)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8076c04baa8ccc698b398895fde2bc6a3e81d537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
