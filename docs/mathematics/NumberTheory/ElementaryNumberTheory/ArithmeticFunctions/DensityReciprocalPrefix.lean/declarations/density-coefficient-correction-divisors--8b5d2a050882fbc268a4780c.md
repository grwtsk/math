# density_coefficient_correction_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba6c6ae5-2f5d-4629-6003-39b7242d2d99",
  "kind": "theorem",
  "lexical_name": "density_coefficient_correction_divisors",
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
  "slug": "density-coefficient-correction-divisors--8b5d2a050882fbc268a4780c",
  "source": {
    "blob": "5f7922b74a37cd1d503818bb85173066b2f6a946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 23,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b5d2a050882fbc268a4780c75687f5008dffd52428b2c7631f8eb8d248058cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6c6ae5-2f5d-4629-6003-39b7242d2d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_coefficient_correction_divisors (n : ℕ) :
    densityMobiusCoefficient n =
      ∑ d ∈ n.divisors, densityMoebiusCorrection d * moebiusReal (n/d) := by
  calc
    densityMobiusCoefficient n = (densityMoebiusCorrection * (μ : ArithmeticFunction ℝ)) n := by
      rw [mul_comm, density_moebius_correction_return]
      rfl
    _ = _ := by
      rw [ArithmeticFunction.mul_apply]
      change (∑ v ∈ n.divisorsAntidiagonal, densityMoebiusCorrection v.1 * moebiusReal v.2) = _
      exact Nat.sum_divisorsAntidiagonal (fun a b => densityMoebiusCorrection a * moebiusReal b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f7922b74a37cd1d503818bb85173066b2f6a946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
