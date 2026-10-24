# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Bounds.Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c8c7ddac15d7311b95099aabacb77cb8d9c8795`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Log1p` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g--223baf6a48372b0f212753d9.md) | 51 | `declaration-track:223baf6a48372b0f212753d94016d47eba12a4a4f60a9bd1f514d8e633f7d048` |
| 2 | `def` | [li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2--6821fb2fd6a69599993a51e8.md) | 55 | `declaration-track:6821fb2fd6a69599993a51e8a3c6e7a756aa115ddfb1561f82f5b91ec788091d` |
| 3 | `theorem` | [g_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-eq--1c3a782ed19849741960f751.md) | 60 | `result-track:1c3a782ed19849741960f7518cdc52a7984948c668a96f6653ac50093ae8b55a` |
| 4 | `theorem` | [g_alt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-alt--b11cd9efb343417e7e70b603.md) | 63 | `result-track:b11cd9efb343417e7e70b60338edbc53a3e6473040bb02768762a0fe0b68ac87` |
| 5 | `theorem` | [g_tendsto_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-tendsto-one--73301df7577af9b28926ae21.md) | 68 | `result-track:73301df7577af9b28926ae21cbf8aa7d3ca8f3c8119052ea5b85588f85675e7c` |
| 6 | `theorem` | [g_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-bounded--59fcc19c6938398cd013bdfd.md) | 73 | `result-track:59fcc19c6938398cd013bdfde4736192191d2c12959effc075bab7940cd06fba` |
| 7 | `theorem` | [g_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-pos--6d32abe90ad02ba7a0d0bd2b.md) | 80 | `result-track:6d32abe90ad02ba7a0d0bd2b828cd122b8c540ed4a868af9101d10151bd3bb9e` |
| 8 | `theorem` | [g_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-le-two--2d2b357f8774280e8d680949.md) | 97 | `result-track:2d2b357f8774280e8d680949269bfd60fba4d67f422694feee084130c81a1949` |
| 9 | `theorem` | [g_intervalIntegrable_full](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-intervalintegrable-full--aa28e8bc7d62c078c115d8b1.md) | 152 | `result-track:aa28e8bc7d62c078c115d8b1a28249bd78cd58fd2bd8aa528fed29bea7a852c0` |
| 10 | `theorem` | [g_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/g-intervalintegrable--37413e536fb398c8d9d45437.md) | 178 | `result-track:37413e536fb398c8d9d45437b4b92582e2fc1f01fed10df5ef7f0ab2dd77a59a` |
| 11 | `theorem` | [li2_upper_crude](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2-upper-crude--dde1789dd6dba973e79a857f.md) | 207 | `result-track:dde1789dd6dba973e79a857f07887b2ad71214d098f91dffd2b686dbc07f4541` |
| 12 | `theorem` | [li2_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2-pos--4fb5bae9da6f69d6dd9131a3.md) | 223 | `result-track:4fb5bae9da6f69d6dd9131a30d7cb90c819c27fd7c78df07520d81782f11492e` |
| 13 | `theorem` | [li2_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2-lower--1effe5f2127868a18e183d48.md) | 250 | `result-track:1effe5f2127868a18e183d485d35773596a444ec3c4e225b15bcf22c847c648d` |
| 14 | `theorem` | [li2_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2-upper--4e866f8e6f0103524817fbf2.md) | 255 | `result-track:4e866f8e6f0103524817fbf22013892291585ebf445fba010f9e0d9995f4fe0e` |
| 15 | `theorem` | [li2_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2-bounds--94d78efdc891d34be2060b11.md) | 259 | `result-track:94d78efdc891d34be2060b11f71e491cf65572ff8cd1ba3b2a971ce3262614b3` |
| 16 | `theorem` | [li2_approx_1045](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/declarations/li2-approx-1045--bb2d9faf5823c446c7aa35ea.md) | 264 | `result-track:bb2d9faf5823c446c7aa35ead98966f289c9daff87cba0fed4cc2305cef55277` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
