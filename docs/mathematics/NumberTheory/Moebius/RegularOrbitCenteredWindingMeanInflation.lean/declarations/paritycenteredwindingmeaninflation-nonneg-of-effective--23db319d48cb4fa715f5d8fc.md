# parityCenteredWindingMeanInflation_nonneg_of_effective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12e1adb4-bd1d-33b7-e92a-90cde4e6cd34",
  "kind": "theorem",
  "lexical_name": "parityCenteredWindingMeanInflation_nonneg_of_effective",
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
  "slug": "paritycenteredwindingmeaninflation-nonneg-of-effective--23db319d48cb4fa715f5d8fc",
  "source": {
    "blob": "0abd6a2e737d405f8d9950e4da27694b86175efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23db319d48cb4fa715f5d8fcc4be48ef313e4b532dac5d1facaed09507aa84b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12e1adb4-bd1d-33b7-e92a-90cde4e6cd34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityCenteredWindingMeanInflation_nonneg_of_effective
    {b d r : ℕ} [NeZero d]
    (H : Finset ℕ)
    (hd : d ∈ effectiveEndpointSquareModulusSet b) :
    0 ≤ parityCenteredWindingMeanInflation b d r H := by
  unfold parityCenteredWindingMeanInflation
  exact mul_nonneg
    (mul_nonneg (by positivity) (sq_nonneg _))
    (effectiveSquareModulus_reciprocalDifference_nonneg hd)

/-- Dropping the subtractive endpoint reciprocal gives a reciprocal-square
pointwise majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingMeanInflation.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abd6a2e737d405f8d9950e4da27694b86175efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
