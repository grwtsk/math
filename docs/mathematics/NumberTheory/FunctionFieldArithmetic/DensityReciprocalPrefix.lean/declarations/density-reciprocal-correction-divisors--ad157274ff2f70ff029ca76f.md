# density_reciprocal_correction_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1164bfe9-4899-3684-762a-34e599e7fe96",
  "kind": "theorem",
  "lexical_name": "density_reciprocal_correction_divisors",
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
  "slug": "density-reciprocal-correction-divisors--ad157274ff2f70ff029ca76f",
  "source": {
    "blob": "2783e7a07ede383ed4fa2fffa1c99c95201b584b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad157274ff2f70ff029ca76f446a199e82b2a7354880f14047dba2e1f8984d1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1164bfe9-4899-3684-762a-34e599e7fe96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_reciprocal_correction_divisors (n : ℕ) :
    densityMobiusCoefficient n / (n : ℝ) =
      ∑ d ∈ n.divisors, densityCorrectionReciprocal d * (moebiusReal (n/d) / ((n/d : ℕ) : ℝ)) := by
  rw [density_coefficient_correction_divisors, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro d hd
  have he : (d : ℝ) * ((n/d : ℕ) : ℝ) = (n : ℝ) := by
    exact_mod_cast Nat.mul_div_cancel' (Nat.mem_divisors.mp hd).1
  dsimp [densityCorrectionReciprocal]
  rw [div_mul_div_comm, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2783e7a07ede383ed4fa2fffa1c99c95201b584b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
