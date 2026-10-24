# RegularEpi.desc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ebaab263067692c8d6d6424c46c620079aa7f5524436c2926fc99657ae05b11",
  "kind": "def",
  "lexical_name": "RegularEpi.desc'",
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
  "slug": "regularepi-desc--07bce8602b16e08f8623c769",
  "source": {
    "blob": "8e2a342230367d698ab26faed966df2d792ff702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07bce8602b16e08f8623c7696ae9f4a111a9e43b35e316e8e6154502b9f7ccad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ebaab263067692c8d6d6424c46c620079aa7f5524436c2926fc99657ae05b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularEpi.desc' {W : C} (f : X ⟶ Y) [RegularEpi f] (k : X ⟶ W)
    (h : (RegularEpi.left : RegularEpi.W f ⟶ X) ≫ k = RegularEpi.right ≫ k) :
    { l : Y ⟶ W // f ≫ l = k } :=
  Cofork.IsColimit.desc' RegularEpi.isColimit _ h

/-- The second leg of a pushout cocone is a regular epimorphism if the right component is too.

See also `Pushout.sndOfEpi` for the basic epimorphism version, and
`regularOfIsPushoutFstOfRegular` for the flipped version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2a342230367d698ab26faed966df2d792ff702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
