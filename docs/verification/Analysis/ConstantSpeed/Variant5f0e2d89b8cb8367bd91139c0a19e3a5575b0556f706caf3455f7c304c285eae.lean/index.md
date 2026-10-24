# Verification target: GRWTSK.Analysis.ConstantSpeed.Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c939c34fae203312fa993792a7bf7c0f3a9cf809",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/index.md) · [Full source](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c939c34fae203312fa993792a7bf7c0f3a9cf809`.

Source path: `GRWTSK/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoundedVariation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasConstantSpeedOnWith](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith--ea9652523d3499a36152b137.md) | 54 | `declaration-track:ea9652523d3499a36152b1378f370b356f22520877c90509e2a35dbc311bf091` |
| 2 | `theorem` | [HasConstantSpeedOnWith.hasLocallyBoundedVariationOn](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-haslocallyboundedvariationon--f6bd7032b4c119a82ce3bdef.md) | 60 | `result-track:f6bd7032b4c119a82ce3bdef99b607872456f37b4effa567976651c19b389920` |
| 3 | `theorem` | [hasConstantSpeedOnWith_of_subsingleton](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-of-subsingleton--332b89e46f3958a4855ce005.md) | 65 | `result-track:332b89e46f3958a4855ce00564bed8eed68f4d80794d2b90df028cf3a1b30cbb` |
| 4 | `theorem` | [hasConstantSpeedOnWith_iff_ordered](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-iff-ordered--b9c2fb2ccbbb48a0e77619cb.md) | 72 | `result-track:b9c2fb2ccbbb48a0e77619cb2429a467966a0fd2290a57e49c63ece61676db7c` |
| 5 | `theorem` | [hasConstantSpeedOnWith_iff_variationOnFromTo_eq](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-iff-variationonfromto-eq--6ed11e8f0de766f5b0eaac9c.md) | 86 | `result-track:6ed11e8f0de766f5b0eaac9c98bafadd9f7b2de8cdd85023819845b4573148e1` |
| 6 | `theorem` | [HasConstantSpeedOnWith.union](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-union--f1da230d26c8d45bd7a74e9c.md) | 103 | `result-track:f1da230d26c8d45bd7a74e9cb63c1b8cd949e4faa579b7cc533292aaa67861fe` |
| 7 | `theorem` | [HasConstantSpeedOnWith.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-icc-icc--931ef0b051a7b498a61ce5ac.md) | 141 | `result-track:931ef0b051a7b498a61ce5ac62e787d459ab145216bf7c83301b4c97d6492028` |
| 8 | `theorem` | [hasConstantSpeedOnWith_zero_iff](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-zero-iff--a7f30b2a5fe8e241fcdf3eb8.md) | 157 | `result-track:a7f30b2a5fe8e241fcdf3eb89c2f19c72a0aa003da5be4c63243fb1a893808c8` |
| 9 | `theorem` | [HasConstantSpeedOnWith.ratio](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasconstantspeedonwith-ratio--7a88ecf824f0d89db524b4cc.md) | 177 | `result-track:7a88ecf824f0d89db524b4ccca49424076d91918ff6d9ba0fed6e0ce08fa29a8` |
| 10 | `def` | [HasUnitSpeedOn](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasunitspeedon--990fb9d6f7d7025c716cce64.md) | 195 | `declaration-track:990fb9d6f7d7025c716cce64f8a9ec9be783ca0dbf6f53e01a3127482a78419f` |
| 11 | `theorem` | [HasUnitSpeedOn.union](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasunitspeedon-union--9c4151923c2cff6589ad27de.md) | 199 | `result-track:9c4151923c2cff6589ad27de004c2317e8b43c866824472824a76f68e5b64ccf` |
| 12 | `theorem` | [HasUnitSpeedOn.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/hasunitspeedon-icc-icc--5f3a846335423d4ec6e171a3.md) | 205 | `result-track:5f3a846335423d4ec6e171a333412264fa94d6be0ec488a13d4e37e2048ba925` |
| 13 | `theorem` | [unique_unit_speed](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/unique-unit-speed--42b40dffb57a60b83515fcf7.md) | 213 | `result-track:42b40dffb57a60b83515fcf718df5a587a1f8082cf2a7f1a8c463d0bc02266d6` |
| 14 | `theorem` | [unique_unit_speed_on_Icc_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/unique-unit-speed-on-icc-zero--c33d21f093fcd4d66e490675.md) | 223 | `result-track:c33d21f093fcd4d66e490675f1ab830d9a628bbffc70f04a2006f4c1bd86b6b3` |
| 15 | `def` | [naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/naturalparameterization--c8002ac114c5eda5feb3a289.md) | 244 | `declaration-track:c8002ac114c5eda5feb3a289fc71ba1381855620b0fd05c9dc1f31c96441acd9` |
| 16 | `theorem` | [edist_naturalParameterization_eq_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/edist-naturalparameterization-eq-zero--f5ec751ec35415bc892ceedd.md) | 248 | `result-track:f5ec751ec35415bc892ceedd3e9fb105024ae1933c627de04e300ac12c8ca254` |
| 17 | `theorem` | [has_unit_speed_naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/declarations/has-unit-speed-naturalparameterization--117cfb971326e16c668a70f1.md) | 260 | `result-track:117cfb971326e16c668a70f1ebc05ce6eca5f2705e6b1a67315f582f068c4db4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
