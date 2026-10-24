# full_short_continuous_sector_eq_literal_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80280c6a-df12-72c9-31d9-3136a4a89514",
  "kind": "theorem",
  "lexical_name": "full_short_continuous_sector_eq_literal_I",
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
  "slug": "full-short-continuous-sector-eq-literal-i--6775ed9ab4cca4cd62bd13f7",
  "source": {
    "blob": "0fb34f2d8f49ad638e1e271a92cfdc187dd4213a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variantf7f3ba6d06f7a63e5cfc916d935fed202689c81b85309ebde4d548a6a31bfa16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6775ed9ab4cca4cd62bd13f7be91a03ca2be24d84e38fb9444f3b1d3777afbf3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variantf7f3ba6d06f7a63e5cfc916d935fed202689c81b85309ebde4d548a6a31bfa16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80280c6a-df12-72c9-31d9-3136a4a89514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_short_continuous_sector_eq_literal_I (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      upperContinuousDivisorIntegral A (d : ℝ)) = literalOmegaIntegralSector A := by
  unfold literalOmegaIntegralSector
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) := by
    have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
      Nat.floor_le (Real.exp_pos (2 * A)).le
    exact (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans hf
  rw [upperContinuousDivisorIntegral_eq_literal_row hA hd0 hdX]
  ring

end FormalResearch.RiemannHypothesis.SourceOmegaContinuousSector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variantf7f3ba6d06f7a63e5cfc916d935fed202689c81b85309ebde4d548a6a31bfa16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variantf7f3ba6d06f7a63e5cfc916d935fed202689c81b85309ebde4d548a6a31bfa16.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb34f2d8f49ad638e1e271a92cfdc187dd4213a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
