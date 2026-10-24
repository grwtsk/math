# Verification target: GRWTSK.Analysis.Feature.Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc650eb0a37a2382fbe8a30860b34fc7d66f5d63",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/index.md) · [Full source](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc650eb0a37a2382fbe8a30860b34fc7d66f5d63`.

Source path: `GRWTSK/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarFeatureKernel](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/declarations/scalarfeaturekernel--cc39149bc99695c8e3f1f489.md) | 32 | `declaration-track:cc39149bc99695c8e3f1f4897e915a583b89a39b446408c83e184a2651fc5863` |
| 2 | `theorem` | [scalarFeatureKernel_apply](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/declarations/scalarfeaturekernel-apply--9144498e393b5078d90bd1d8.md) | 67 | `result-track:9144498e393b5078d90bd1d8e05343c07b5f12e8b4f360e8cec9f389a213071d` |
| 3 | `def` | [finiteFeatureKernel](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/declarations/finitefeaturekernel--d55108e961d6bfceaa118c6c.md) | 73 | `declaration-track:d55108e961d6bfceaa118c6c8b4563681b7bd6e1253c2266cc6ca62ffb2dbe1c` |
| 4 | `theorem` | [finiteFeatureKernel_apply](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/declarations/finitefeaturekernel-apply--45f2296aefa2062bb8b15818.md) | 83 | `result-track:45f2296aefa2062bb8b15818d8704c4c4f6bdbda95dca40366c4bb7d6cce41f6` |
| 5 | `structure` | [FiniteFeatureFamily](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/declarations/finitefeaturefamily--92e952be66581fc54db46313.md) | 95 | `declaration-track:92e952be66581fc54db4631356fc4bc97d0a04cf243a7e220bb034f213b7dca9` |
| 6 | `def` | [FiniteFeatureFamily.kernel](../../../../mathematics/Analysis/Feature/Variant7024bee0f861df1dff1851b9d6521b60577ba213119a0a26aa7ab4653161dcc2.lean/declarations/finitefeaturefamily-kernel--6f5b19c718976cd5f01be8d7.md) | 100 | `declaration-track:6f5b19c718976cd5f01be8d75bfe34dd4cabba4e9bb42db69b37a91550752646` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
