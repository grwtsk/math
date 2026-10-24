# naturalScaleCongruenceL1_of_zero_and_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5ffb03f-9d7d-2c5d-1501-5c9cddbe49a4",
  "kind": "theorem",
  "lexical_name": "naturalScaleCongruenceL1_of_zero_and_nonzero",
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
  "slug": "naturalscalecongruencel1-of-zero-and-nonzero--9dc4287bde24cc12cc08d606",
  "source": {
    "blob": "94e323e1acfbe7953960e1f507636a8d486aa8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 394,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dc4287bde24cc12cc08d6060b3ae7b048995d06f2f6564205380bfd06d4d1a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5ffb03f-9d7d-2c5d-1501-5c9cddbe49a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalScaleCongruenceL1_of_zero_and_nonzero
    (hZero : DyadicNaturalScaleZeroModeParityFourierBudget)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget
    (parityFourierQuadraticBudget_of_zero_and_nonzero hZero hNonzero)

/-- A parity-Mertens square-root supplier plus the nonzero Fourier supplier
suffices for the natural-scale congruence-L1 target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e323e1acfbe7953960e1f507636a8d486aa8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
