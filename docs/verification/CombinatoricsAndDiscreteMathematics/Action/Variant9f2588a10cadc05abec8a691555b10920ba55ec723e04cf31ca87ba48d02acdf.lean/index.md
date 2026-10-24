# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Action.Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bb9741e3f54438627248cbce2350bc31ce200ef",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bb9741e3f54438627248cbce2350bc31ce200ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/list-smul-sum--b3852c852c9677d394d0987d.md) | 40 | `result-track:b3852c852c9677d394d0987d004135191022f736342b526562599be833b0f078` |
| 2 | `theorem` | [List.smul_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/list-smul-prod--702fba529732f234fa2bddd0.md) | 49 | `result-track:702fba529732f234fa2bddd0d6d9c84809e55840dc1d072f5f28254ecfa9d9db` |
| 3 | `theorem` | [Multiset.smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/multiset-smul-sum--cd570bb023d6f0ce31564735.md) | 58 | `result-track:cd570bb023d6f0ce3156473579e5b5f3b38b71cb95020a3b9777f4dcabe6da86` |
| 4 | `theorem` | [Finset.smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/finset-smul-sum--5c3352773e9129e72478a7bb.md) | 61 | `result-track:5c3352773e9129e72478a7bb69ca2ee802246e4a5560252a24e80df6843c0daf` |
| 5 | `theorem` | [smul_finsum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/smul-finsum-mem--314e7afa1156ce78433cdff1.md) | 65 | `result-track:314e7afa1156ce78433cdff1567aeedba1fcc2f23f106fc365a7dfc4cb022d35` |
| 6 | `theorem` | [Multiset.smul_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/multiset-smul-prod--93b3ccb9fbc6491ce1520401.md) | 75 | `result-track:93b3ccb9fbc6491ce15204016790ed07b0bf6e74a3df6ba3c0faefaa88ecc81c` |
| 7 | `theorem` | [Finset.smul_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/finset-smul-prod--b9cb1e03f61e0feb8fdfd5f1.md) | 78 | `result-track:b9cb1e03f61e0feb8fdfd5f15d42200f89e9d86fa7f40e58b44d7de215a604d3` |
| 8 | `theorem` | [smul_finprod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/smul-finprod--c5d1f88a1ee78448e893e0ca.md) | 82 | `result-track:c5d1f88a1ee78448e893e0caf7080faaa6fb0dcc1ed312ddaa81f3f1edc59097` |
| 9 | `theorem` | [Finset.smul_prod_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/finset-smul-prod-perm--74cbd18b3e78e0eeb63b61ae.md) | 90 | `result-track:74cbd18b3e78e0eeb63b61ae6baef6f52675e61780cde324c72a4cb695d96581` |
| 10 | `theorem` | [smul_finprod_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/smul-finprod-perm--111c8fa8c3217d18c4f03ba0.md) | 95 | `result-track:111c8fa8c3217d18c4f03ba0a51f71f7dfe397caeb2df45b48ff99fba7e3fcb3` |
| 11 | `theorem` | [smul_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/smul-prod--61b163f876fefb35b25371dc.md) | 105 | `result-track:61b163f876fefb35b25371dcce3c4745828bd93ee305a71b2ec4478d35df1813` |
| 12 | `theorem` | [smul_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/smul-prod--7edb313dca87ddf6dc0ebc0d.md) | 117 | `result-track:7edb313dca87ddf6dc0ebc0d7fcad87895c8e89a00c834b595b97cda74c19aa9` |
| 13 | `theorem` | [smul_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/smul-prod--a489eecb1f1f0a860f2dde26.md) | 126 | `result-track:a489eecb1f1f0a860f2dde26109d9df2deabe52e2e2badd08cfd79a5f238bbc8` |
| 14 | `theorem` | [prod_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant9f2588a10cadc05abec8a691555b10920ba55ec723e04cf31ca87ba48d02acdf.lean/declarations/prod-smul--c092051ed18dc31624b189a3.md) | 135 | `result-track:c092051ed18dc31624b189a340f95bf7d48cb2b104b3a8d6624f15271e57dca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
