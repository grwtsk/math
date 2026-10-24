# StronglyAdapted.isStoppingTime_leastGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:903e3a9b-d0d6-b601-8ed7-4069c6200f02",
  "kind": "theorem",
  "lexical_name": "StronglyAdapted.isStoppingTime_leastGE",
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
  "slug": "stronglyadapted-isstoppingtime-leastge--6d285d6689340efc77da2d58",
  "source": {
    "blob": "5a82be970be94326018b7b5192b6ace59da9bbe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d285d6689340efc77da2d5866c171cd2c531ae62d1fb36c24a16a165abbe53d",
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

Occurrence: `result:903e3a9b-d0d6-b601-8ed7-4069c6200f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyAdapted.isStoppingTime_leastGE [ConditionallyCompleteLinearOrderBot ι]
    {ℱ : Filtration ι m0} [WellFoundedLT ι] [Countable ι] [TopologicalSpace β]
    [Preorder β] [ClosedIciTopology β] [TopologicalSpace.PseudoMetrizableSpace β]
    [MeasurableSpace β] [BorelSpace β]
    {f : ι → Ω → β} (r : β) (hf : StronglyAdapted ℱ f) :
    IsStoppingTime ℱ (leastGE f r) :=
  hf.adapted.isStoppingTime_hittingAfter measurableSet_Ici

/-- The stopped process of `f` above `r` is the process that is equal to `f` until `leastGE f r`
(the first time `f` passes above `r`), and then is constant afterwards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant03489151320b65bfee8d32a80e6192cc8e9d5ba855c24e014ea810d31768b892.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a82be970be94326018b7b5192b6ace59da9bbe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
