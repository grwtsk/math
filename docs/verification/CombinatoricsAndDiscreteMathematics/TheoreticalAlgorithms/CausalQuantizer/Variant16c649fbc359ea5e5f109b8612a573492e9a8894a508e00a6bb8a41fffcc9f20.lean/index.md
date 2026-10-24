# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CausalQuantizer.Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0db1917090e665969a8f091c8eb358d596069349",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0db1917090e665969a8f091c8eb358d596069349`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.QuantizerTower` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Quantization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quantizerIdentitySystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean/declarations/quantizeridentitysystem--d746b364fab858e0b6aa026d.md) | 29 | `declaration-track:d746b364fab858e0b6aa026d00cf0535cbb0c3b6b94b56ebfcda986f792fc5b1` |
| 2 | `theorem` | [quantizerIdentitySystem_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean/declarations/quantizeridentitysystem-run--821de61202a7c0049f38ece8.md) | 38 | `result-track:821de61202a7c0049f38ece853d94ca375267abe8018a6da69f60be1338aa5a0` |
| 3 | `theorem` | [causalEquivalent_identity_iff_indistinguishable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean/declarations/causalequivalent-identity-iff-indistinguishable--5e483dc7c0e4cceebf06abba.md) | 51 | `result-track:5e483dc7c0e4cceebf06abba4d6b69bd2980c0504aef0697438821336eff5a84` |
| 4 | `def` | [identityCausalStateEquivEffectiveState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant16c649fbc359ea5e5f109b8612a573492e9a8894a508e00a6bb8a41fffcc9f20.lean/declarations/identitycausalstateequiveffectivestate--0e0636bad767e9c4270e6c1b.md) | 67 | `declaration-track:0e0636bad767e9c4270e6c1bf30ae3e3c84f44fc95a032bfabd6c11c5ff473f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
