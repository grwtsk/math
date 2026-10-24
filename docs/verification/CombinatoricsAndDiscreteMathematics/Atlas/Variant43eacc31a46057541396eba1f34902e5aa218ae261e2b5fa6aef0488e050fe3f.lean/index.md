# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Atlas.Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30c9df7f53c3b685bd0bacae1192948f807e6f38",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30c9df7f53c3b685bd0bacae1192948f807e6f38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/rule--a69e73fe99a83449180121a6.md) | 22 | `declaration-track:a69e73fe99a83449180121a6328400e9d5b5c6e049ac8bf5ff4e6bfc45ea0414` |
| 2 | `def` | [RuleClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/ruleclosed--fbd90a011313ac10c401e1c1.md) | 32 | `declaration-track:fbd90a011313ac10c401e1c15930aab080df77f7cf2b9bf40a40ee29edc0e7df` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/instance--73db62bae5c8f7aaa23cac4c.md) | 35 | `declaration-track:73db62bae5c8f7aaa23cac4c2cef1b00884d79bda185e216f615962d2f2e2515` |
| 4 | `def` | [saturate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturate--38ecf2ffa179da7339934694.md) | 45 | `declaration-track:38ecf2ffa179da7339934694fe16075ac3bd4d49338846ff3b05e140bc0ccbe5` |
| 5 | `theorem` | [mem_saturate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/mem-saturate--605feccc27f76d982829657c.md) | 50 | `result-track:605feccc27f76d982829657c4f414fd92f786720e1c9aeafe0467a06f33cc7c0` |
| 6 | `theorem` | [saturation_extensive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation-extensive--d377df39dffc83c81f73128f.md) | 56 | `result-track:d377df39dffc83c81f73128f45064c8e0420ce7af151fe4f8cd67acb772f0385` |
| 7 | `theorem` | [saturation_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation-monotone--11dea65189ae43fb8794febf.md) | 62 | `result-track:11dea65189ae43fb8794febfa1c67781a6a8a0b9f6a467ee0eb08beeeee62ec3` |
| 8 | `theorem` | [saturation_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation-closed--6bbf67f8d1b8728eec09745f.md) | 68 | `result-track:6bbf67f8d1b8728eec09745fc3dc6a77219bca334194bb9d469c7a433473f3a5` |
| 9 | `theorem` | [saturation_least](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation-least--ad822e5909b6894aa5980837.md) | 78 | `result-track:ad822e5909b6894aa598083761ca39df582f74a805dc39e6c5f1c14cff98d056` |
| 10 | `theorem` | [saturation_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation-idempotent--1a31b851fbdf49123075cdce.md) | 85 | `result-track:1a31b851fbdf49123075cdce168040fe19524824095920761bbd0445dc275b2b` |
| 11 | `def` | [saturation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation--99fb2f5161c98af4a1079318.md) | 92 | `declaration-track:99fb2f5161c98af4a1079318e977daaea6a6f8190e489d38e1b3325ef7da36a6` |
| 12 | `theorem` | [saturation_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/saturation-sound--82b734595d9d1cfb13782325.md) | 99 | `result-track:82b734595d9d1cfb13782325e4b336f267420182ab7b3f2e73886bd222456294` |
| 13 | `def` | [attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/attach--7146c49ba4388c07a070df81.md) | 124 | `declaration-track:7146c49ba4388c07a070df81cf00c9265f367f0e9749e0a0dd868744883326ef` |
| 14 | `theorem` | [attach_extends_atlas](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/attach-extends-atlas--5e484193f3e90dd7aed68d54.md) | 127 | `result-track:5e484193f3e90dd7aed68d54de7b2bc10f32d2d685b47b5e90752c54775a9ad8` |
| 15 | `theorem` | [attach_preserves_old_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/attach-preserves-old-closure--1a15e3994db2979e28ae8ef1.md) | 131 | `result-track:1a15e3994db2979e28ae8ef1d76aa3196201c12d0b0c47d5da57f44ac49240d7` |
| 16 | `theorem` | [attach_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/attach-attach--20d9c2b2aa413f0bfcb8448f.md) | 136 | `result-track:20d9c2b2aa413f0bfcb8448f754ed1f31616c0e88fdc71c7e7ef5a5e98353e46` |
| 17 | `theorem` | [attachment_order_final_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/attachment-order-final-equiv--4eca76395cb865cea08d7d49.md) | 141 | `result-track:4eca76395cb865cea08d7d495dc7273e6c262a69f666678d0086e1bd5de64965` |
| 18 | `theorem` | [attach_order_independent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean/declarations/attach-order-independent--b098e702eef07f44bffe1030.md) | 146 | `result-track:b098e702eef07f44bffe10307eca41954ee09b09ab62d4dcf4b55d5960a00e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
