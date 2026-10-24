# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RegularOrbitTrace.Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66f5459a79f55a1b28f831deadb18ea2c31755e1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66f5459a79f55a1b28f831deadb18ea2c31755e1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.IsotypicTrace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularRepresentation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/declarations/regularrepresentation--40542a0edbbd8b08b06e6c38.md) | 27 | `declaration-track:40542a0edbbd8b08b06e6c38077df08b866505a90b1f0b163ccdf11a8109eb66` |
| 2 | `def` | [pointMass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/declarations/pointmass--863cf8c1da6db04cf219f6f5.md) | 39 | `declaration-track:863cf8c1da6db04cf219f6f588624776a25b43cc2b24cf6004e6e8cce7e36156` |
| 3 | `theorem` | [left_regular_action_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/declarations/left-regular-action-free--db89437d69311d4e28186aa8.md) | 42 | `result-track:db89437d69311d4e28186aa808b4f84d8128cc6dd22de4a7e190e3a960af2678` |
| 4 | `theorem` | [point_mass_trace_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/declarations/point-mass-trace-one--5ffbea998d6717e910dee447.md) | 46 | `result-track:5ffbea998d6717e910dee447ae052c93e2c47265ece79fef16db6affe578721e` |
| 5 | `theorem` | [free_orbit_has_nonzero_trace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/declarations/free-orbit-has-nonzero-trace--5fbb02d2c49f6b2057562ced.md) | 53 | `result-track:5fbb02d2c49f6b2057562ced4a699ab0f52acc4173aeb18f1875f071fbbd145d` |
| 6 | `theorem` | [common_trace_readout_survives](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RegularOrbitTrace/Variant5fc93da7feb6fe64419fea1ee716ef7a4790ae7afe3582f07acc67f6141a3c1a.lean/declarations/common-trace-readout-survives--7049a5960f9db7ab8024deea.md) | 62 | `result-track:7049a5960f9db7ab8024deeab6a5bfefa6f5c533afed5b7ca43f096e4271cd94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
