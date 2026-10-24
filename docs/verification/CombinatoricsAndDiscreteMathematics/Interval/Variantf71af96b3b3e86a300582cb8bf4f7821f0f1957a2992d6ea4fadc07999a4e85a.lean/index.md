# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07815939a8387b19645a5a5fd57153f67d43c23d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07815939a8387b19645a5a5fd57153f67d43c23d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dfinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/dfinsupp--a0a68c099feac2f646fdc8b0.md) | 31 | `declaration-track:a0a68c099feac2f646fdc8b0093da0b783a54f6e39cf7c34848d245e4eedd9ad` |
| 2 | `theorem` | [card_dfinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-dfinsupp--e74b1d474c5b958825e495d3.md) | 39 | `result-track:e74b1d474c5b958825e495d3f0836f69345377a91dd4b1616ea4e88743309ea4` |
| 3 | `theorem` | [mem_dfinsupp_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/mem-dfinsupp-iff--ea2d7f0616264c979011ce7b.md) | 44 | `result-track:ea2d7f0616264c979011ce7b08a6e47af6652b9670cf436744bfa8a6bc8ed115` |
| 4 | `theorem` | [mem_dfinsupp_iff_of_support_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/mem-dfinsupp-iff-of-support-subset--e1dd48fbce2be2a5a6167c65.md) | 59 | `result-track:e1dd48fbce2be2a5a6167c6511c82471820c933c363bd125d229b968f8bc9e2a` |
| 5 | `def` | [singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/singleton--7137b21fbef2bafbe1ec742b.md) | 81 | `declaration-track:7137b21fbef2bafbe1ec742b19dc6b19e166c42928ea6d6814d008f2ca933f21` |
| 6 | `theorem` | [mem_singleton_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/mem-singleton-apply-iff--e641cf99fb81bf3d9fd37aa3.md) | 85 | `result-track:e641cf99fb81bf3d9fd37aa39a3e26c730cad31d87e11c88dac16cbb4427d8dd` |
| 7 | `def` | [rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/rangeicc--0e98948e0726c04a010dd953.md) | 96 | `declaration-track:0e98948e0726c04a010dd953190f32aa194ae266c73a8378092ccbc167e710bf` |
| 8 | `theorem` | [rangeIcc_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/rangeicc-apply--5c833a9386d22219fd4d8b1b.md) | 109 | `result-track:5c833a9386d22219fd4d8b1bd1e6de7fe3d6b04a59dc93db8979ad3cf876c3c8` |
| 9 | `theorem` | [mem_rangeIcc_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/mem-rangeicc-apply-iff--8643a9cd8f741aeabd31f496.md) | 111 | `result-track:8643a9cd8f741aeabd31f4968363b7119565e474f67fe18927d07fc919a07675` |
| 10 | `theorem` | [support_rangeIcc_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/support-rangeicc-subset--a0b4b0c94bd1a0bc0fdbd95c.md) | 113 | `result-track:a0b4b0c94bd1a0bc0fdbd95cfa5a051bde9f73e05e088465cd863d55ff632894` |
| 11 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/pi--b8b91031d06bf6a38c961d4e.md) | 130 | `declaration-track:b8b91031d06bf6a38c961d4eabd68067e7bf93504a3262c5cfc50e7623adf367` |
| 12 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/mem-pi--d2cfa4c78fde8b05232d2ade.md) | 133 | `result-track:d2cfa4c78fde8b05232d2ade0f654bab7fdb2cf1a8bb6c4f43b2b5981a56c7ff` |
| 13 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-pi--63261e34114ccbdfc2ef2aa0.md) | 137 | `result-track:63261e34114ccbdfc2ef2aa018087a2732c0864b8a3e1b354f09c4c3a32ce22c` |
| 14 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/instlocallyfiniteorder--597c4f34b3e68191ce4ebe0a.md) | 148 | `declaration-track:597c4f34b3e68191ce4ebe0ab2016580a1cab194133df78fff85fbebe3063576` |
| 15 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/icc-eq--b92173ff420b2060491fc376.md) | 158 | `result-track:b92173ff420b2060491fc376a67f94a6263ec1b86e5371df92c3654261c8ccb1` |
| 16 | `lemma` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-icc--3e0cce81bc83ae44af6f2cdc.md) | 160 | `result-track:3e0cce81bc83ae44af6f2cdc689c12aa9ccedf44a1c13087ab735024d07fb3b7` |
| 17 | `lemma` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-ico--081002225649accd51601b66.md) | 163 | `result-track:081002225649accd51601b66039d749714e7768fec3b92c9e464753bc02a0ffa` |
| 18 | `lemma` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-ioc--7b81ddf2aa7c589d45ad33fc.md) | 166 | `result-track:7b81ddf2aa7c589d45ad33fcd86099490cbead639a5d76e19ca72b044c1c322d` |
| 19 | `lemma` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-ioo--6e7aee481e05d054b7626e36.md) | 169 | `result-track:6e7aee481e05d054b7626e36ca43d22a13fb896757b19c74fafb2fba54fc5d02` |
| 20 | `lemma` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-uicc--05d5f81dc1c9a870e6b5f9f8.md) | 178 | `result-track:05d5f81dc1c9a870e6b5f9f81d317d6e5690c317df3c51d45ec4e4b91e46417f` |
| 21 | `lemma` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-iic--3e24301e42a2193c4fc63174.md) | 190 | `result-track:3e24301e42a2193c4fc63174d822dd826f42953579d00f0dbec69576ef99e65c` |
| 22 | `lemma` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantf71af96b3b3e86a300582cb8bf4f7821f0f1957a2992d6ea4fadc07999a4e85a.lean/declarations/card-iio--04a74e9eca52f7d6636c8864.md) | 194 | `result-track:04a74e9eca52f7d6636c8864d2116229951f725f14857e00c8b238247b5da385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
