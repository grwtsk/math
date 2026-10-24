# basisOfFractionalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b6cfaa2ddd2f096e4333fe647d79ec92fdc96b57c3c1aebb317c49979731e28",
  "kind": "def",
  "lexical_name": "basisOfFractionalIdeal",
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
  "slug": "basisoffractionalideal--277c5c4d1a7ea8a914e57f2d",
  "source": {
    "blob": "0ab938385f726050abf2abbf7c9e2206976912e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 78,
    "path": "GRWTSK/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:277c5c4d1a7ea8a914e57f2d100d3ad8edcdc26361f7740f5d84efa0e5a4e357",
  "verification": {
    "reference": "docs/verification/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b6cfaa2ddd2f096e4333fe647d79ec92fdc96b57c3c1aebb317c49979731e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def basisOfFractionalIdeal (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    Basis (Free.ChooseBasisIndex ℤ I) ℚ K :=
  (fractionalIdealBasis K I.1).ofIsLocalizedModule ℚ ℤ⁰
    ((Submodule.subtype (I : Submodule (𝓞 K) K)).restrictScalars ℤ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab938385f726050abf2abbf7c9e2206976912e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
