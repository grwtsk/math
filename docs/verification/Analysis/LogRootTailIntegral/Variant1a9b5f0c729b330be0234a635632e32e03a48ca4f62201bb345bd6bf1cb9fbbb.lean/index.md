# Verification target: GRWTSK.Analysis.LogRootTailIntegral.Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89b90428ac6073cfc474fb0b513083476ace0a58",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/index.md) · [Full source](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89b90428ac6073cfc474fb0b513083476ace0a58`.

Source path: `GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.NativeClockDecay` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [density](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/density--1c7c3caa7326865745282047.md) | 25 | `declaration-track:1c7c3caa732686574528204748922fbe9957ac617f2a87af976a0f2df658855e` |
| 2 | `def` | [primitive](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/primitive--7d165282fb28d1d2164b0c97.md) | 27 | `declaration-track:7d165282fb28d1d2164b0c97adeebcd95240d6e2013d025c779f6970a61f096c` |
| 3 | `theorem` | [exact_density_primitive](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/exact-density-primitive--b57c9de671bf7f946f142d98.md) | 29 | `result-track:b57c9de671bf7f946f142d988c98b0ee75c01ece5398438db16531394a0c6b3e` |
| 4 | `theorem` | [exact_density_derivative](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/exact-density-derivative--e9f3d1bad3fa7bf26e4e603f.md) | 51 | `result-track:e9f3d1bad3fa7bf26e4e603fb1472bc750deedbe7fd8f11a6ccc47c9faeb2690` |
| 5 | `theorem` | [log_root_primitive_tends_to_zero](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/log-root-primitive-tends-to-zero--efd7421346346a1963ec835b.md) | 68 | `result-track:efd7421346346a1963ec835b8b17417cd7170c71ac0e79a0a30dc152a58d05a7` |
| 6 | `theorem` | [density_nonnegative](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/density-nonnegative--f27c60281cc73cdda729cb75.md) | 80 | `result-track:f27c60281cc73cdda729cb759d75b9be53816de33e342bb834e2ca0100b93743` |
| 7 | `theorem` | [density_antitone_on_tail](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/density-antitone-on-tail--90bb2eb90004753e52025649.md) | 84 | `result-track:90bb2eb90004753e520256493942042546301cc25e7c06ee051cb8255d413785` |
| 8 | `theorem` | [density_integrable_tail](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/density-integrable-tail--9e1772de6b5e80e53e357062.md) | 100 | `result-track:9e1772de6b5e80e53e3570626cd8f623e6835037362f528a51df088b217df285` |
| 9 | `theorem` | [exact_tail_integral](../../../../mathematics/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/declarations/exact-tail-integral--67297f60fc42849d25e3de8c.md) | 107 | `result-track:67297f60fc42849d25e3de8cbf87daaf78cd19262d829fd9d7bd8bbe1f4f3c59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
