# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307.InstructionsAndOneStep

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9566fdbd4585ee4752868513f50e129fd1106693",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9566fdbd4585ee4752868513f50e129fd1106693`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/state--90d4357a8fbc347f60cb10cf.md) | 42 | `declaration-track:90d4357a8fbc347f60cb10cf679b351a7066ac0f3dceb804db851793657c0992` |
| 2 | `def` | [zeroState](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/zerostate--aaf10571d73efe93b8fafd22.md) | 45 | `declaration-track:aaf10571d73efe93b8fafd22dd347a733a1ce6b1efbf80607bb56ea8b979f434` |
| 3 | `def` | [programLengthBits](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/programlengthbits--51ae485e48e7b386acf924cb.md) | 48 | `declaration-track:51ae485e48e7b386acf924cbdaf71b58b2019df978b1219d5320b35769662049` |
| 4 | `def` | [maxProgramBytes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/maxprogrambytes--13de0115364a2f3ac87c7c08.md) | 51 | `declaration-track:13de0115364a2f3ac87c7c08528f051f69e2c37ca01ccfbcb302600ac1c2bf09` |
| 5 | `def` | [maxStackDepth](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/maxstackdepth--d1ff7202b187bf4793a83c23.md) | 54 | `declaration-track:d1ff7202b187bf4793a83c235f36eb78e54ec1d92ced6b77e238836a08791d08` |
| 6 | `abbrev` | [IndexBitPosition](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/indexbitposition--7bcf1fc746136375b9db2a06.md) | 57 | `declaration-track:7bcf1fc746136375b9db2a0626434b660306b2bc45434b70eac6571170df04a7` |
| 7 | `inductive` | [Operation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/operation--fd0828342bf228886ad55e28.md) | 63 | `declaration-track:fd0828342bf228886ad55e28d6f76d9638eb71d52b4048724e658cc374201c8a` |
| 8 | `def` | [nextStackDepth](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/nextstackdepth--2529496b2e4e9b6353887679.md) | 81 | `declaration-track:2529496b2e4e9b635388767903434bda9547fc626806d4b6b97a88d394357f0b` |
| 9 | `def` | [executeOperation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/InstructionsAndOneStep.lean/declarations/executeoperation--b9251877714c38675e5a7bbd.md) | 110 | `declaration-track:b9251877714c38675e5a7bbd3f6b5dcbd52068fba49446c855c12f375bbef504` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
