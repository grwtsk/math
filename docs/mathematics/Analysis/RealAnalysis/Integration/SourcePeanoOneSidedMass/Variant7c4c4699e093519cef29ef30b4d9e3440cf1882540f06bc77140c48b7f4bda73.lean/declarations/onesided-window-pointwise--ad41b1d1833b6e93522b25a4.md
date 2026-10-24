# oneSided_window_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d35ff394-8c60-bb1e-884e-ec7a7bff073f",
  "kind": "theorem",
  "lexical_name": "oneSided_window_pointwise",
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
  "slug": "onesided-window-pointwise--ad41b1d1833b6e93522b25a4",
  "source": {
    "blob": "d1e15acb826be614702567d80c5f574d85b754cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad41b1d1833b6e93522b25a4a9a235d748122e7d46ad54a5662e6b5c4bb80986",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d35ff394-8c60-bb1e-884e-ec7a7bff073f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneSided_window_pointwise (σ A u : ℝ) (hA : 10 ≤ A)
    (hu : 0 ≤ u) (huA : u ≤ A / 20) :
    (3 / 2) * (Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0) ≤
      max (σ * fullPeanoError u * deriv (deriv (weightedCorrelation A)) u) 0 := by
  have hw := weightedCorrelation_second_deriv_window A u hA hu huA
  have hd : 0 ≤ deriv (deriv (weightedCorrelation A)) u :=
    (by positivity : (0 : ℝ) ≤ (3 / 2) * Real.exp (3 * u / 2)).trans hw
  calc
    _ = ((3 / 2) * Real.exp (3 * u / 2)) * max (σ * fullPeanoError u) 0 := by ring
    _ ≤ deriv (deriv (weightedCorrelation A)) u * max (σ * fullPeanoError u) 0 :=
      mul_le_mul_of_nonneg_right hw (le_max_right _ _)
    _ = _ := by rw [mul_comm, max_mul_of_nonneg _ _ hd, zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e15acb826be614702567d80c5f574d85b754cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
