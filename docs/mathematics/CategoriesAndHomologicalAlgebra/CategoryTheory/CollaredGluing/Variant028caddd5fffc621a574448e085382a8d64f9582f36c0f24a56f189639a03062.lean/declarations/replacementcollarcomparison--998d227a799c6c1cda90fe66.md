# replacementCollarComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5449a409c0b26309f8b44446d6afab50e5d402ea4db81c4cb9c65cde8aa8de0",
  "kind": "def",
  "lexical_name": "replacementCollarComparison",
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
  "slug": "replacementcollarcomparison--998d227a799c6c1cda90fe66",
  "source": {
    "blob": "ad5b2c1632758190f181bb876d10e8badc791175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 365,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:998d227a799c6c1cda90fe66d492e360943693ee6548c314aabd04a0727187de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5449a409c0b26309f8b44446d6afab50e5d402ea4db81c4cb9c65cde8aa8de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replacementCollarComparison
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.replacementPiece P₁.replacementPiece) :
    C.CollarHom (C.collarData P₀.replacement_compatible)
      (C.collarData P₁.replacement_compatible) :=
  C.collarOfPieceHom P₀.replacement_compatible P₁.replacement_compatible f

/-- The induced collar comparison preserves the concrete seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5b2c1632758190f181bb876d10e8badc791175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
