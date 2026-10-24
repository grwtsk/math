# NonUnitalStarSubalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3b3eb8f0a449f0d7664817309a217c1f9eed24056bac2d234b6b5f746690cc3",
  "kind": "structure",
  "lexical_name": "NonUnitalStarSubalgebra",
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
  "slug": "nonunitalstarsubalgebra--3ed2dd0494260ac242a0316f",
  "source": {
    "blob": "f68d5df669ef619d2215dcab83e04f7957aaa0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ed2dd0494260ac242a0316f30747957b1bb4da1eaf5647c148484c92188ce6e",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3b3eb8f0a449f0d7664817309a217c1f9eed24056bac2d234b6b5f746690cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonUnitalStarSubalgebra (R : Type u) (A : Type v) [CommSemiring R]
    [NonUnitalNonAssocSemiring A] [Module R A] [Star A]
    extends NonUnitalSubalgebra R A : Type v where
  /-- The `carrier` of a `NonUnitalStarSubalgebra` is closed under the `star` operation. -/
  star_mem' : ∀ {a : A} (_ha : a ∈ carrier), star a ∈ carrier

/-- Reinterpret a `NonUnitalStarSubalgebra` as a `NonUnitalSubalgebra`. -/
add_decl_doc NonUnitalStarSubalgebra.toNonUnitalSubalgebra

namespace NonUnitalStarSubalgebra

variable [CommSemiring R]
variable [NonUnitalNonAssocSemiring A] [Module R A] [Star A]
variable [NonUnitalNonAssocSemiring B] [Module R B] [Star B]
variable [NonUnitalNonAssocSemiring C] [Module R C] [Star C]
variable [NonUnitalStarAlgHomClass F R A B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f68d5df669ef619d2215dcab83e04f7957aaa0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
