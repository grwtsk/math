# uliftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54a8a4757d34b8106ebbb4b3b755d9ba407d3ad40ba46919b9e44ece7d3c2185",
  "kind": "def",
  "lexical_name": "uliftFunctor",
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
  "slug": "uliftfunctor--f55a3fad06356689754a4bc9",
  "source": {
    "blob": "1aa069c3af09a7b309d3c9aeea538d3be0e6c820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f55a3fad06356689754a4bc9a0e6d7d103869820612bf217c31eea067aad722e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54a8a4757d34b8106ebbb4b3b755d9ba407d3ad40ba46919b9e44ece7d3c2185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftFunctor : PartOrd.{u} ⥤ PartOrd.{max u v} where
  obj X := ↧(ULift.{v} X)
  map f := PartOrd.ofHom ⟨fun x ↦ ULift.up (f (ULift.down x)),
    fun x y hxy ↦ f.hom.monotone hxy⟩

end PartOrd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant7e43b65654c85d946df4d31cd4d9b4d6752587b4174082f3da5b466c71f4cb04.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aa069c3af09a7b309d3c9aeea538d3be0e6c820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
