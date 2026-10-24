# loopOfHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27de29861e5170584110732ab920bdb524676d7354714f13ff2dc61b479c8cf9",
  "kind": "def",
  "lexical_name": "loopOfHom",
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
  "slug": "loopofhom--8e395ba0db3a1a3225e340a3",
  "source": {
    "blob": "88ebe60261e07028bee2f29098a56b7d7558e897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e395ba0db3a1a3225e340a393f8d9ceeb560bbc375a6936eed5d7088da85f9c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27de29861e5170584110732ab920bdb524676d7354714f13ff2dc61b479c8cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def loopOfHom {a b : G} (p : a ⟶ b) : End (root' T) :=
  treeHom T a ≫ p ≫ inv (treeHom T b)

/-- Turning an edge in the spanning tree into a loop gives the identity loop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant8021fb3f123860d895e7a76a195f4a6887d6b556932559ef4add6ad3d1605307.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ebe60261e07028bee2f29098a56b7d7558e897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
