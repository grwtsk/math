# density_correction_prime_hasSum_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e118ba51-0508-e2e0-0c08-d5c43a65c4d9",
  "kind": "theorem",
  "lexical_name": "density_correction_prime_hasSum_tail",
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
  "slug": "density-correction-prime-hassum-tail--f958970b239f65b5ed8470b3",
  "source": {
    "blob": "e6acf8a3f6c4617aa0e50d9c8349ddd5ac772f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f958970b239f65b5ed8470b31202ca92cdb567b5a194cc39a8cf25bca13f4630",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e118ba51-0508-e2e0-0c08-d5c43a65c4d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_correction_prime_hasSum_tail {p : ℕ} (hp : p.Prime)
    {q : ℝ} (hq0 : 0 ≤ q) (hq1 : q < 1) (K : ℕ) :
    HasSum (fun k : ℕ => densityMoebiusCorrection (p ^ (k + K + 1)) * q ^ (k + K + 1))
      (q ^ (K + 1) / (((p : ℝ) + 1) * (1 - q))) := by
  have h := (hasSum_geometric_of_lt_one hq0 hq1).mul_left
    (q ^ (K + 1) / ((p : ℝ) + 1))
  have he : (fun k : ℕ => q ^ (K + 1) / ((p : ℝ) + 1) * q ^ k) =
      (fun k : ℕ => densityMoebiusCorrection (p ^ (k + K + 1)) * q ^ (k + K + 1)) := by
    funext k
    exact (density_correction_prime_weighted_term hp q K k).symm
  rw [he] at h
  simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6acf8a3f6c4617aa0e50d9c8349ddd5ac772f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
