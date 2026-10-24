# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Propagation.Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3cff3b021731ff6601e1f09d540fc3bf5799c65",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3cff3b021731ff6601e1f09d540fc3bf5799c65`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.LogVerification` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PropagationEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/propagationedge--bb5b2ab1be1dad1c015d8429.md) | 15 | `declaration-track:bb5b2ab1be1dad1c015d8429dbc7ffebdfae85cc3db4dc496a204c10c33efb43` |
| 2 | `def` | [pathGain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/pathgain--c9a318e3148aebfd58435eeb.md) | 20 | `declaration-track:c9a318e3148aebfd58435eebf6e0f01fc1d5d2b427567545c75b6ddd3bbf11a7` |
| 3 | `def` | [propagatedDefectBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/propagateddefectbound--3682b5e4485cf36d8269d35a.md) | 25 | `declaration-track:3682b5e4485cf36d8269d35ab2b37a7f93c43f74af843be3ea06ac1b95cbda8f` |
| 4 | `theorem` | [pathGain_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/pathgain-nil--d5d1ad5248eb11529b04924f.md) | 32 | `result-track:d5d1ad5248eb11529b04924f5e9693c64e6f288014e4115fb72fff1e65d88792` |
| 5 | `theorem` | [pathGain_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/pathgain-cons--9b24886c5765b4a4a9d583ec.md) | 36 | `result-track:9b24886c5765b4a4a9d583ec01b55eaa0c49e3cec2c75297b0eb0c60fe00aaf9` |
| 6 | `theorem` | [propagatedDefectBound_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/propagateddefectbound-nil--cd3ffb346701638ca2689217.md) | 43 | `result-track:cd3ffb346701638ca26892176ff6dc6f43fcb851b8c51f4baf3afc7095103046` |
| 7 | `theorem` | [propagatedDefectBound_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/propagateddefectbound-cons--d1f2e58aa143d85036171f00.md) | 48 | `result-track:d1f2e58aa143d85036171f001432829986170dae7a2407a65f52fd0724044730` |
| 8 | `theorem` | [path_gain_numerator_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/path-gain-numerator-is-product--86717c6f10c4efb711d98432.md) | 57 | `result-track:86717c6f10c4efb711d9843231f10af5992947e73e71fbfe5bb2b3b49f5030b6` |
| 9 | `theorem` | [path_gain_scale_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/path-gain-scale-is-product--5695cedb5ffc48ad40c64b8b.md) | 66 | `result-track:5695cedb5ffc48ad40c64b8bddf5493532cc39bf38e5591550554c46582295e4` |
| 10 | `structure` | [PathGainObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/pathgainobligation--bf91bcb72e390e19ff34b129.md) | 75 | `declaration-track:bf91bcb72e390e19ff34b129f0682c84350993c957e852407fa4d43e1dea5483` |
| 11 | `def` | [propagatedUnknowns](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/propagatedunknowns--85e630ffef3e7caa57814837.md) | 86 | `declaration-track:85e630ffef3e7caa57814837a94b5b50bfd32f3aed6e1b23b57d22a067744a65` |
| 12 | `theorem` | [derivative_bound_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/derivative-bound-unknown-propagation--c5b6f24759e8e37b96b1beb8.md) | 97 | `result-track:c5b6f24759e8e37b96b1beb8db4ecad300a8c608513ca9abc1bb8eff1f1f39dc` |
| 13 | `theorem` | [invariant_domain_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/invariant-domain-unknown-propagation--3e90a03244de16c41274bdba.md) | 102 | `result-track:3e90a03244de16c41274bdba6231da08af16f5931d915c5b8d27034fdc4d8904` |
| 14 | `theorem` | [logarithm_branch_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/logarithm-branch-unknown-propagation--a7ab745e99e85039f99171f3.md) | 107 | `result-track:a7ab745e99e85039f99171f373d1889dd9aa6c8ff02ae1c29482e44caf9a3cc8` |
| 15 | `theorem` | [cycle_multiplier_unknown_propagation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propagation/Variant8ce6ae56a579745996980ee1e155795c0cfdff98fc403950dde4daad9f636722.lean/declarations/cycle-multiplier-unknown-propagation--1883750279af454a3d07a181.md) | 112 | `result-track:1883750279af454a3d07a18149fb1e10a7cb78e53de9cef5f7ce04ab1589345b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
