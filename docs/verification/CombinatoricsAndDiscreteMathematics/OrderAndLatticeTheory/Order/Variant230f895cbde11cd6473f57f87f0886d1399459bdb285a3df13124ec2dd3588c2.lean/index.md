# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9af4a4d121d4d1fae8853a526e023badc464553",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9af4a4d121d4d1fae8853a526e023badc464553`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Minor.Contract` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor--146cc71bd03ff284dc52c341.md) | 52 | `declaration-track:146cc71bd03ff284dc52c3417f354e437836f12ed71c43fa7784a94f10f3d09a` |
| 2 | `lemma` | [contract_delete_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/contract-delete-isminor--5f22fd5a919fda7493c3a01a.md) | 58 | `result-track:5f22fd5a919fda7493c3a01a3d944f0adb23160b896d77f08aacefc57701f0d7` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-exists-eq-contract-delete-disjoint--ef8b3cec8e7eb5ee8f0703d1.md) | 61 | `result-track:ef8b3cec8e7eb5ee8f0703d1aaf97f69da54fe541040029e96b0d9156aec0abc` |
| 4 | `def` | [IsStrictMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor--577377b64cc13d394786e75c.md) | 71 | `declaration-track:577377b64cc13d394786e75cc423cc1bc1470027ea96f1e23c06627648022675` |
| 5 | `lemma` | [IsMinor.subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-subset--1bbb07f14ea3e83545e8d45c.md) | 76 | `result-track:1bbb07f14ea3e83545e8d45c53efd5c027de8b5a4a52edaa6c3505608c415d56` |
| 6 | `lemma` | [IsMinor.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-refl--112343591f524491e61f46f0.md) | 80 | `result-track:112343591f524491e61f46f0830fc0327ca64e3b8e6b8310ba1fbb11396f9dad` |
| 7 | `lemma` | [IsMinor.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-trans--de5d77e6903b78f930e97ada.md) | 82 | `result-track:de5d77e6903b78f930e97adae4ce8cce7e10073b5b9561034b4fbd2149e8b8e3` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-eq-of-ground-subset--d564ba4de71ea0c2d9e1357f.md) | 87 | `result-track:d564ba4de71ea0c2d9e1357f0ef3291700c16ac0e7a1223fe69ace4fa7fd0e00` |
| 9 | `lemma` | [IsMinor.antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-antisymm--7c5b4490aa2fd3a79a69783a.md) | 93 | `result-track:7c5b4490aa2fd3a79a69783a916e222c30f4a1b05b05f9cb0498786db6c922a4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/instance--b1d7a1cb9b1d43daac7287b6.md) | 98 | `declaration-track:b1d7a1cb9b1d43daac7287b65738586c84b8f4d8c4082f64a5d535a034e1d38d` |
| 11 | `lemma` | [IsMinor.le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-le--7a4a70b1a35fd32edac5d743.md) | 105 | `result-track:7a4a70b1a35fd32edac5d74309a0b2e4bc555e65c51964e1238e08ebc977fa3b` |
| 12 | `lemma` | [IsStrictMinor.lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-lt--ae2e6fe2c5df747d406b8789.md) | 107 | `result-track:ae2e6fe2c5df747d406b878917147182a588b202a1ff2ecdd5215affa3717a79` |
| 13 | `lemma` | [le_eq_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/le-eq-isminor--6c968fed037c373ceeee000d.md) | 110 | `result-track:6c968fed037c373ceeee000d93d013750bb8cbc25925822b37902145b8264a9a` |
| 14 | `lemma` | [lt_eq_isStrictMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/lt-eq-isstrictminor--8387007fbf08d55cab2ce0bf.md) | 113 | `result-track:8387007fbf08d55cab2ce0bff67ae50d8030ce84a13e77de7334e9aeb885a192` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-iff-isminor-ne--f596975a6861e2428db402a2.md) | 115 | `result-track:f596975a6861e2428db402a2fbd250b41bb0666f54f8b29e4d73f1d83811ce82` |
| 16 | `lemma` | [IsStrictMinor.ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-ne--dd083f57a05889925b1a9d0b.md) | 118 | `result-track:dd083f57a05889925b1a9d0bfeb492c75355c5cb521e22521122fdd1bf61b037` |
| 17 | `lemma` | [isStrictMinor_irrefl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-irrefl--c30bcf1ebe05e120fe352a91.md) | 121 | `result-track:c30bcf1ebe05e120fe352a91fb922cdf180343aba67552dc1b0449b58abba5b6` |
| 18 | `lemma` | [IsStrictMinor.isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-isminor--ace9fcf8d764ccca603d4313.md) | 124 | `result-track:ace9fcf8d764ccca603d4313189ae16847f3eb9009264215ac9b83ff31a3343c` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-not-isminor--f7eb0b5b872537ba72b2c4ab.md) | 127 | `result-track:f7eb0b5b872537ba72b2c4ab4bb32d21f7eefaa36901f4668e45631600152ced` |
| 20 | `lemma` | [IsStrictMinor.ssubset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-ssubset--c1ba0169f7960bd88fb97e13.md) | 130 | `result-track:c1ba0169f7960bd88fb97e134e8ad0d4f201c92c39bb6e1163882367618b09ab` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-iff-isminor-ssubset--7294769e3dda11b404f2b247.md) | 133 | `result-track:7294769e3dda11b404f2b24743d6a5aeb8406dd347bcfc7c389f663a9ac1a9d1` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-trans-isminor--e6f0afcf52e78784d2d7b2f0.md) | 136 | `result-track:e6f0afcf52e78784d2d7b2f016de3545ff9f9ab469b3952d3d37fc4b49a86278` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isminor-trans-isstrictminor--5ab9edfbd36e3970a5bcc627.md) | 139 | `result-track:5ab9edfbd36e3970a5bcc627eaf19bcf6d843c967e62ae757cf0e0171394ee76` |
| 24 | `lemma` | [IsStrictMinor.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isstrictminor-trans--60726df621ef659900ecf465.md) | 142 | `result-track:60726df621ef659900ecf4659a4f39f6de139fc5b8be8c1b7e5ef0be0e1ef457` |
| 25 | `lemma` | [Indep.of_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/indep-of-isminor--2123f48382277a8d7c56f53e.md) | 145 | `result-track:2123f48382277a8d7c56f53ea68f3a27f9ea4737c3bf4ea57ffd1f08f71cff3e` |
| 26 | `lemma` | [IsNonloop.of_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isnonloop-of-isminor--10b2e1158f84ec01952735c2.md) | 149 | `result-track:10b2e1158f84ec01952735c2804eb327a5496b1eb9bbd09874e7526256ffb41a` |
| 27 | `lemma` | [Dep.of_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/dep-of-isminor--f06849eb57608b09a874476a.md) | 153 | `result-track:f06849eb57608b09a874476a03b02701b07dc0a30aae0a1e0df99b48b91ed13a` |
| 28 | `lemma` | [IsLoop.of_isMinor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant230f895cbde11cd6473f57f87f0886d1399459bdb285a3df13124ec2dd3588c2.lean/declarations/isloop-of-isminor--37fcf67da7961df6b5415600.md) | 156 | `result-track:37fcf67da7961df6b5415600d31e7399f6d8365d12d8929bfadfdda10b801943` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
