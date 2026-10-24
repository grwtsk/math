# greenFourierPrimeCoordinate_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31799f63-815d-23c9-f768-9e8ea74f61a7",
  "kind": "theorem",
  "lexical_name": "greenFourierPrimeCoordinate_split",
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
  "slug": "greenfourierprimecoordinate-split--6417c9edc33d14a436f8642c",
  "source": {
    "blob": "fd67f27f123229da4af05b526af8ad5c39554669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6417c9edc33d14a436f8642ce135737c3c891fa7faf77d2887f385c2657611d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31799f63-815d-23c9-f768-9e8ea74f61a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenFourierPrimeCoordinate_split
    {k : ℤ} (hk : k ≠ 0)
    (X : ℕ) :
    greenFourierPrimeCoordinate X k =
      greenPrimeOnlyFourierPrimeCoordinate X k +
        greenHigherPrimePowerFourierPrimeCoordinate X k := by
  rw [greenFourierPrimeCoordinate_eq_weightedDFT hk X]
  unfold greenPrimeOnlyFourierPrimeCoordinate
    greenHigherPrimePowerFourierPrimeCoordinate
  rw [greenWeightedDFTPhaseSum_split,
    greenWindowCoefficientMassComplex_split]
  ring

/-- Norm of the higher-prime-power phase sum is bounded by its total weighted
mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd67f27f123229da4af05b526af8ad5c39554669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
