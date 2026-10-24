# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LiouvilleNumber.Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87444a5eefe5151ff32df6ad77db6e36d3b0a050",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87444a5eefe5151ff32df6ad77db6e36d3b0a050`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Transcendental.Liouville.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouvilleNumber](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/liouvillenumber--90171cb25ed95f73d8fbbe1e.md) | 55 | `declaration-track:90171cb25ed95f73d8fbbe1e92b8f5abf05d0b0b5bf018c5ea39684a4b6c002b` |
| 2 | `def` | [partialSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/partialsum--af505b00e0719cea2d434865.md) | 66 | `declaration-track:af505b00e0719cea2d4348659ce7ee3a0927720a95e1d000feb2eaccc1308d7a` |
| 3 | `def` | [remainder](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/remainder--1e1ecec4e2d64655ae1d4287.md) | 75 | `declaration-track:1e1ecec4e2d64655ae1d42876dd754055a3959d3b829fc1aad4b571aa7b4383b` |
| 4 | `theorem` | [summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/summable--27762026680557f5777b0db7.md) | 83 | `result-track:27762026680557f5777b0db732958c240b88f05d17b39cf70c5c9e0794f3de9e` |
| 5 | `theorem` | [remainder_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/remainder-summable--a10794eb0ef8994e0287d498.md) | 86 | `result-track:a10794eb0ef8994e0287d49820a503373bd5f0340500d4ce9036ee5b33c7e8b9` |
| 6 | `theorem` | [remainder_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/remainder-pos--f0ec67d250d8425aef8d0ce3.md) | 90 | `result-track:f0ec67d250d8425aef8d0ce353df14c4ebf21e969d6a20bedd7c0af3d456a6d6` |
| 7 | `theorem` | [partialSum_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/partialsum-succ--ba6f53ad1cec734594704ed6.md) | 93 | `result-track:ba6f53ad1cec734594704ed65d79b2b64787cb846d4754f0ff6bc0efe8fe793f` |
| 8 | `theorem` | [partialSum_add_remainder](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/partialsum-add-remainder--77bb9f25fea1ae86823fe6f2.md) | 98 | `result-track:77bb9f25fea1ae86823fe6f2c8b4fafb8c7c0c0bc55ac7b9a1eba4515c6d450d` |
| 9 | `theorem` | [remainder_lt'](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/remainder-lt--8d92bf58c94ef4c998ed8ba7.md) | 108 | `result-track:8d92bf58c94ef4c998ed8ba72da5faa4ba75872b05791c749bf3f1f62a0d1f8f` |
| 10 | `theorem` | [aux_calc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/aux-calc--ca6abab0eb804f34213d5eab.md) | 134 | `result-track:ca6abab0eb804f34213d5eabeaa59be5f8c756a28927064a5e5d52ccc2b48fae` |
| 11 | `theorem` | [remainder_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/remainder-lt--102e91076fdf5b3b6c7d0ce8.md) | 154 | `result-track:102e91076fdf5b3b6c7d0ce8084702513bac1ca9ced855676b04f760477d45e3` |
| 12 | `theorem` | [partialSum_eq_rat](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/partialsum-eq-rat--c352d8ab371f6f58dc8bfd80.md) | 162 | `result-track:c352d8ab371f6f58dc8bfd807450357e1725bed72762fb4fb2f72a9056a30a36` |
| 13 | `theorem` | [liouville_liouvilleNumber](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/liouville-liouvillenumber--2bf58946b161a3c966de6f30.md) | 180 | `result-track:2bf58946b161a3c966de6f308bc36310b2a67e1edc095ff60dd1db1a20016e75` |
| 14 | `theorem` | [transcendental_liouvilleNumber](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/declarations/transcendental-liouvillenumber--c61fb643e7e245c7daac212c.md) | 195 | `result-track:c61fb643e7e245c7daac212cf4339d35c51434b791cae417aa7431b8a8197a11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
