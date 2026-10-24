# copyObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a76c9bbd3b1d7f104716ed23703c3fbcf65131dd5ce023ebe52389c272209068",
  "kind": "def",
  "lexical_name": "copyObj",
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
  "slug": "copyobj--5c91869cc3d662ab757c3cdb",
  "source": {
    "blob": "8b894ebb8af49d377aeea095a32adc20bcee0ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 240,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c91869cc3d662ab757c3cdbd07369c4aa7ad1f0e5fce18e437d4c14e4f7aaae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a76c9bbd3b1d7f104716ed23703c3fbcf65131dd5ce023ebe52389c272209068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def copyObj : C ⥤ D where
  obj := obj
  map f := (e _).inv ≫ F.map f ≫ (e _).hom

/-- The functor constructed with `copyObj` is isomorphic to the given functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variant993bd907607ecb6572350fb24ab640a3b5c95fc126bd84c5031d2e50d4730786.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b894ebb8af49d377aeea095a32adc20bcee0ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
