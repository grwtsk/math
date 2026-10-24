# literal_I_eq_actual_Peano_divisor_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea6d89de-997c-732f-ad2a-0feb1cf43c18",
  "kind": "theorem",
  "lexical_name": "literal_I_eq_actual_Peano_divisor_sum",
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
  "slug": "literal-i-eq-actual-peano-divisor-sum--70bf604ed3975f548fc4ef99",
  "source": {
    "blob": "760ded0a1517b9f3f4c72664342e82a6235f12bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bf604ed3975f548fc4ef99fa7b478e5c554dca80e056f749b73f834862bc1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea6d89de-997c-732f-ad2a-0feb1cf43c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_I_eq_actual_Peano_divisor_sum (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaIntegralSector A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (sourcePeanoPrimitive A (Real.log (d : ℝ)) / (d : ℝ)) := by
  rw [← full_short_continuous_sector_eq_literal_I A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) :=
    (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans
      (Nat.floor_le (Real.exp_pos (2 * A)).le)
  rw [actual_upper_continuous_row_eq_Peano hA hdp hdX]

end
end FormalResearch.RiemannHypothesis.SourcePeanoUpperContinuousRow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760ded0a1517b9f3f4c72664342e82a6235f12bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
