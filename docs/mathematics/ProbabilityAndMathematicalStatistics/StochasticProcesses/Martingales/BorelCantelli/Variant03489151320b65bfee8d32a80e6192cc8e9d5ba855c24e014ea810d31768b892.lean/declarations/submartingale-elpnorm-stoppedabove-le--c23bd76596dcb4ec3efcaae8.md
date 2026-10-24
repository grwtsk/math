# Submartingale.eLpNorm_stoppedAbove_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a50a87e-931e-a9a2-13b2-19f768ac45d2",
  "kind": "theorem",
  "lexical_name": "Submartingale.eLpNorm_stoppedAbove_le",
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
  "slug": "submartingale-elpnorm-stoppedabove-le--c23bd76596dcb4ec3efcaae8",
  "source": {
    "blob": "5a82be970be94326018b7b5192b6ace59da9bbe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23bd76596dcb4ec3efcaae8b2aaf1651e4d5a7255a81da78c54cf160905f600",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a50a87e-931e-a9a2-13b2-19f768ac45d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.eLpNorm_stoppedAbove_le [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ)
    (hr : 0 ≤ r) (hf0 : f 0 = 0) (hbdd : ∀ᵐ ω ∂μ, ∀ i, |f (i + 1) ω - f i ω| ≤ R) (i : ℕ) :
    eLpNorm (stoppedAbove f r i) 1 μ ≤ 2 * μ Set.univ * ENNReal.ofReal (r + R) := by
  refine eLpNorm_one_le_of_le' ((hf.stoppedAbove r).integrable _) ?_
    (stoppedAbove_le hr hf0 hbdd i)
  rw [← setIntegral_univ]
  refine le_trans ?_ ((hf.stoppedAbove r).setIntegral_le zero_le MeasurableSet.univ)
  simp [stoppedAbove, stoppedProcess, hf0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a82be970be94326018b7b5192b6ace59da9bbe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
