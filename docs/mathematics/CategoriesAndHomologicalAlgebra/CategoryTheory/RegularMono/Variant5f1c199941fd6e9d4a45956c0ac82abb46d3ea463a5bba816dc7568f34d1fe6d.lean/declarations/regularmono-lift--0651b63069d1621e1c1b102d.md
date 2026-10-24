# RegularMono.lift'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e900b3eb488aab4d35b7f81ac11628bbecc2cd642a47c7221c4fca8495356df",
  "kind": "def",
  "lexical_name": "RegularMono.lift'",
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
  "slug": "regularmono-lift--0651b63069d1621e1c1b102d",
  "source": {
    "blob": "7f2dc998f6d8b83e1f1219ea7a610e8b14b77250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0651b63069d1621e1c1b102d8d7e6211d3ad0250b49ba49415c402abf063248f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e900b3eb488aab4d35b7f81ac11628bbecc2cd642a47c7221c4fca8495356df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularMono.lift' {W : C} (f : X ⟶ Y) [RegularMono f] (k : W ⟶ Y)
    (h : k ≫ (RegularMono.left : Y ⟶ @RegularMono.Z _ _ _ _ f _) = k ≫ RegularMono.right) :
    { l : W ⟶ X // l ≫ f = k } :=
  Fork.IsLimit.lift' RegularMono.isLimit _ h
#align category_theory.regular_mono.lift' CategoryTheory.RegularMono.lift'

/-- The second leg of a pullback cone is a regular monomorphism if the right component is too.

See also `Pullback.sndOfMono` for the basic monomorphism version, and
`regularOfIsPullbackFstOfRegular` for the flipped version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2dc998f6d8b83e1f1219ea7a610e8b14b77250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
