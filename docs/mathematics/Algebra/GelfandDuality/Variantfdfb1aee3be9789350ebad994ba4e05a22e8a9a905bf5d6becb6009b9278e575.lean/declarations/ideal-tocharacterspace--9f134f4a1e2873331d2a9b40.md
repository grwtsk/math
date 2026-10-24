# Ideal.toCharacterSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b5e803ba87bb03c1a5ade2b83ea610722414a46951524ad7ad065a3044c973a",
  "kind": "def",
  "lexical_name": "Ideal.toCharacterSpace",
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
  "slug": "ideal-tocharacterspace--9f134f4a1e2873331d2a9b40",
  "source": {
    "blob": "e3b392572575c4fbb58bf5068d7c034a8fc156a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f134f4a1e2873331d2a9b4051f5d70ba841120e841ab8edf323b4f8faf1c1eb",
  "verification": {
    "reference": "docs/verification/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b5e803ba87bb03c1a5ade2b83ea610722414a46951524ad7ad065a3044c973a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Ideal.toCharacterSpace : characterSpace ℂ A :=
  CharacterSpace.equivAlgHom.symm <|
    ((NormedRing.algEquivComplexOfComplete
      (letI := Quotient.field I; isUnit_iff_ne_zero (G₀ := A ⧸ I))).symm : A ⧸ I →ₐ[ℂ] ℂ).comp <|
    Quotient.mkₐ ℂ I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b392572575c4fbb58bf5068d7c034a8fc156a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
