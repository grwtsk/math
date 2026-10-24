# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservableAdapter.Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0edc2357016cc2e126e5dd09f05396545130a5b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0edc2357016cc2e126e5dd09f05396545130a5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Causal.CausalState` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDAF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/todaf--a1a102689c16904f4ac5f64a.md) | 18 | `declaration-track:a1a102689c16904f4ac5f64a57a333e48d805e4306a0e400bbfbdb83e7d1baad` |
| 2 | `def` | [toObservable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/toobservable--d7a1590fabd47c509b57921f.md) | 31 | `declaration-track:d7a1590fabd47c509b57921f3e03a5d446194b889e26d6e603aa53891e63016a` |
| 3 | `theorem` | [toDAF_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/todaf-run--eb3ee73071217a8036b81da9.md) | 39 | `result-track:eb3ee73071217a8036b81da95d33448991b7af0fb3407799c05dd3a6c61c6b7b` |
| 4 | `theorem` | [toObservable_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/toobservable-run--39258b9bc382a02c06bff713.md) | 54 | `result-track:39258b9bc382a02c06bff71326e388008cb705428012b37f4932f5bad499662f` |
| 5 | `theorem` | [toDAF_causalEquivalent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/todaf-causalequivalent-iff--dbbfb35ae30a29eb38772576.md) | 67 | `result-track:dbbfb35ae30a29eb38772576fe0d09bc9035e350e9594efe4bc46b321ceb4ca6` |
| 6 | `def` | [causalStateEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/causalstateequiv--88c6243d05be59b15936e519.md) | 84 | `declaration-track:88c6243d05be59b15936e519343a9426917f2cc9af7048fcf40180f5a0aa7c68` |
| 7 | `theorem` | [causalStateEquiv_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c.lean/declarations/causalstateequiv-tocausal--8d91660f0c54116ce32bfaff.md) | 108 | `result-track:8d91660f0c54116ce32bfaffe5ba6135c70b0b9dc2836c8d5665bec7949ae502` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
