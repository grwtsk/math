# Algebra.toCoalgebraOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adc443e39ce92e731e31ef8a20f695599d4a9701407d2c0b94b76b570bc1886c",
  "kind": "def",
  "lexical_name": "Algebra.toCoalgebraOf",
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
  "slug": "algebra-tocoalgebraof--4ac92e3b5bdf2d2eb261c48b",
  "source": {
    "blob": "de95df6076431667588e818f994508b4b26415b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 441,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantb6e0480928da1425cf75f335711f092b836cb23d0dbc82fca96410e4a5054e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ac92e3b5bdf2d2eb261c48bb7664b0c062cfb16b604e20f533ac7144cc87447",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantb6e0480928da1425cf75f335711f092b836cb23d0dbc82fca96410e4a5054e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adc443e39ce92e731e31ef8a20f695599d4a9701407d2c0b94b76b570bc1886c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Algebra.toCoalgebraOf (adj : F ⊣ G) : Algebra F ⥤ Coalgebra G where
  obj A :=
    { V := A.1
      str := (adj.homEquiv A.1 A.1).toFun A.2 }
  map f :=
    { f := f.1
      h := Algebra.homEquiv_naturality_str adj _ _ f }

/-- Given an adjunction `F ⊣ G`, the functor that associates to a coalgebra over `G` an algebra over
`F` defined via adjunction applied to the structure map. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantb6e0480928da1425cf75f335711f092b836cb23d0dbc82fca96410e4a5054e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantb6e0480928da1425cf75f335711f092b836cb23d0dbc82fca96410e4a5054e37.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de95df6076431667588e818f994508b4b26415b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
