# parityAffineChowlaVarianceDefect_eq_nonzero_add_meanInflation_sub_variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:163dd972-4123-3ef5-555b-eeaaff7465cc",
  "kind": "theorem",
  "lexical_name": "parityAffineChowlaVarianceDefect_eq_nonzero_add_meanInflation_sub_variance",
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
  "slug": "parityaffinechowlavariancedefect-eq-nonzero-add-meaninflation-sub-varian--04e5f91b874553e55e1ad20e",
  "source": {
    "blob": "64aa81881782a45a2f89752c1621455fd9cf3f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e5f91b874553e55e1ad20e0e4d366b766e16de1e4fa9507cc619fceefe4ccf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163dd972-4123-3ef5-555b-eeaaff7465cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityAffineChowlaVarianceDefect_eq_nonzero_add_meanInflation_sub_variance
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (hwrap :
      parityAffineChowlaVarianceDefect b d r H =
        parityHalfIndexSignedQuarticWrap b d r H) :
    parityAffineChowlaVarianceDefect b d r H =
      parityHalfIndexCenteredNonzeroFrequencyEnergy b d r H +
        parityCenteredWindingMeanInflation b d r H -
        4 * parityCenteredIntegerCoordinateVariance b r H := by
  rw [hwrap]
  exact
    parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
      b d r H

/-- Four-family absolute variance defect at one modulus. Absolute values are
inserted only after the signed spectral-energy/second-moment subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingAffineChowlaVarianceDefect.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64aa81881782a45a2f89752c1621455fd9cf3f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
