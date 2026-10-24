# secondMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab685a2a5622bc5e685a4f20d1e127bd6d9302e63d81a19bebe0e0d7f97fcae9",
  "kind": "def",
  "lexical_name": "secondMap",
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
  "slug": "secondmap--bfcf5910ab6bf053980fa59e",
  "source": {
    "blob": "4732ddf22a9e2651ad0d5878c831ecc84e1638a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 413,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfcf5910ab6bf053980fa59e87a5699c30285cb08d8f8f074007e36a7227f589",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab685a2a5622bc5e685a4f20d1e127bd6d9302e63d81a19bebe0e0d7f97fcae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def secondMap {F : C ⥤ D} (δ : curriedTensorPost F ⟶ curriedTensorPre F) :
    curriedTensorPostPost F ⟶ curriedTensorPrePre' F :=
  secondMap₁ F ≫ secondMap₂ δ ≫ secondMap₃ δ

/--
The left map in the oplax left unitality square.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4732ddf22a9e2651ad0d5878c831ecc84e1638a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
