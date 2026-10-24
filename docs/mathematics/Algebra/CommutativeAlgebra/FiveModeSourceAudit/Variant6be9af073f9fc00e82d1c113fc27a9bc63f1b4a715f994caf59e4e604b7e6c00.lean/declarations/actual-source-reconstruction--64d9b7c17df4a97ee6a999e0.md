# actual_source_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0f3a172-a07f-f57d-e2b7-968c10aa0a5e",
  "kind": "theorem",
  "lexical_name": "actual_source_reconstruction",
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
  "slug": "actual-source-reconstruction--64d9b7c17df4a97ee6a999e0",
  "source": {
    "blob": "20f926a3845ffd4086fcadc057360a2279921b89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64d9b7c17df4a97ee6a999e0be997aba6f77ecaa5394ecda3f9ccad7b1bd8fe0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0f3a172-a07f-f57d-e2b7-968c10aa0a5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_reconstruction (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A x =
      ∑ i : Fin 5, alpha A i * normalizedMode A i x := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [normalizedTest_eq_indicator A hp]
  by_cases hx : x ∈ Icc (-A) A
  · simp only [indicator_of_mem hx, normalizedMode, alpha]
    have hterm (i : Fin 5) :
        Real.sqrt (2 / modeWeight i) / Real.sqrt (sourceNormalization A) *
          sourceCoefficient A i *
          (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A)) =
        (sourceCoefficient A i * mode i (x/A)) /
          (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
      calc
        _ = (Real.sqrt (2 / modeWeight i) * Real.sqrt (modeWeight i / (2*A))) *
          (sourceCoefficient A i * mode i (x/A)) / Real.sqrt (sourceNormalization A) := by ring
        _ = _ := by rw [sqrt_mode_product A hp i]; ring
    simp_rw [hterm]
    rw [← Finset.sum_div, ← source_polynomial_expansion]
    unfold normalizedInterior secondInterior bumpInterior unitSecond unitBump
    ring
  · simp [normalizedMode, indicator_of_notMem hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f926a3845ffd4086fcadc057360a2279921b89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
