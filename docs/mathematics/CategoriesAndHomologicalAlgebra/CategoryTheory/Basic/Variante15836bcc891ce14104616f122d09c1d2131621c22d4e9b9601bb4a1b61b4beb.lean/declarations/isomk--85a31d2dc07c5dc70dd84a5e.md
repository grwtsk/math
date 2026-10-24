# isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d44c9a7ceaf6cc9f7f806adf0dceccc6e207a82b2f4bba69ad7ecf36ad2659a",
  "kind": "def",
  "lexical_name": "isoMk",
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
  "slug": "isomk--85a31d2dc07c5dc70dd84a5e",
  "source": {
    "blob": "5bf7bb94a4cca330577daf421c991fc76d26068b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante15836bcc891ce14104616f122d09c1d2131621c22d4e9b9601bb4a1b61b4beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85a31d2dc07c5dc70dd84a5e4a86d604a29a2d642e6df162d248470f6b7debf2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante15836bcc891ce14104616f122d09c1d2131621c22d4e9b9601bb4a1b61b4beb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d44c9a7ceaf6cc9f7f806adf0dceccc6e207a82b2f4bba69ad7ecf36ad2659a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk {X Y : Type v} {_ : CommRing X} {_ : CommRing Y} {_ : Algebra R X} {_ : Algebra R Y}
    (e : X ≃ₐ[R] Y) : of R X ≅ of R Y where
  hom := ofHom (e : X →ₐ[R] Y)
  inv := ofHom (e.symm : Y →ₐ[R] X)

/-- Build an `AlgEquiv` from an isomorphism in the category `CommAlgCat R`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante15836bcc891ce14104616f122d09c1d2131621c22d4e9b9601bb4a1b61b4beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante15836bcc891ce14104616f122d09c1d2131621c22d4e9b9601bb4a1b61b4beb.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf7bb94a4cca330577daf421c991fc76d26068b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
