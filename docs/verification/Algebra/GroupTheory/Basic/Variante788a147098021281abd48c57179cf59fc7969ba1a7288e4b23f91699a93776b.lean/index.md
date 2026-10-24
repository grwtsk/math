# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99736a03fa586238cc9a9df2b5c966f5928c99d5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99736a03fa586238cc9a9df2b5c966f5928c99d5`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/instance--c904495d30c6e2d53840cd61.md) | 40 | `declaration-track:c904495d30c6e2d53840cd6121dbe81430a5abbd32686af5196005a890e868d0` |
| 2 | `theorem` | [Dvd.intro](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-intro--4232fd36aa0b501a813bcab1.md) | 45 | `result-track:4232fd36aa0b501a813bcab198755ae346293b139cfb947e2f1dc3ab7cf52950` |
| 3 | `theorem` | [exists_eq_mul_right_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/exists-eq-mul-right-of-dvd--1f720e354fdd414b81aedcfd.md) | 50 | `result-track:1f720e354fdd414b81aedcfd6e6beee1d22d9590b612823978f9ac2a92f86e2a` |
| 4 | `theorem` | [dvd_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-def--3fe33bd932861eb7260062dc.md) | 53 | `result-track:3fe33bd932861eb7260062dcf68128af02a256358368be29701338f2344f00d1` |
| 5 | `theorem` | [Dvd.elim](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-elim--e5d1264d60061bfaa1a49df5.md) | 58 | `result-track:e5d1264d60061bfaa1a49df5c411db67ce51d9c730faaf012138818f5eb0d512` |
| 6 | `theorem` | [dvd_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-trans--9e7a6efa0b6dd0d1ad6c0f01.md) | 64 | `result-track:9e7a6efa0b6dd0d1ad6c0f010bbb7fb3015c47477eb6110626b9b74df6265ecb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/instance--4f1059bfc2e561978018563f.md) | 70 | `declaration-track:4f1059bfc2e561978018563f9400fb6b2a76947ec7332bf7177191d49485e336` |
| 8 | `theorem` | [dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-mul-right--70dab9068e801308b9aa60d6.md) | 74 | `result-track:70dab9068e801308b9aa60d66f2e6bfce12c7a2ab7b4e7ef56254bbcbc55f6cf` |
| 9 | `theorem` | [dvd_mul_of_dvd_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-mul-of-dvd-left--fc31aedac80a8f108072d810.md) | 77 | `result-track:fc31aedac80a8f108072d8102fdea3224b013d3392e007913c9fbbbb5f3e0ab5` |
| 10 | `theorem` | [dvd_of_mul_right_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-of-mul-right-dvd--a9ae81d14f49261b9b91d0df.md) | 82 | `result-track:a9ae81d14f49261b9b91d0df49b12d8012e254a939be82c07cee44151d7ce15b` |
| 11 | `def` | [IsPrimal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/isprimal--0166692975e8cd2e6c200573.md) | 87 | `declaration-track:0166692975e8cd2e6c2005737dc0cce747ec0e9054f47979ca1eeb8d0d6c0981` |
| 12 | `class` | [DecompositionMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/decompositionmonoid--f204486c1ad69534f612f693.md) | 93 | `declaration-track:f204486c1ad69534f612f693a325870cb586fb80305f0299aad2ca6b7b341485` |
| 13 | `theorem` | [exists_dvd_and_dvd_of_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/exists-dvd-and-dvd-of-dvd-mul--b792b1793e2fbec01d8de9be.md) | 96 | `result-track:b792b1793e2fbec01d8de9be1d8205638ac191981ef42d2df540660570dd2aae` |
| 14 | `theorem` | [dvd_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-refl--097d99b0611e3b721657927e.md) | 105 | `result-track:097d99b0611e3b721657927ee5eccf212485dfac64fa76facb2bfd28270be8e1` |
| 15 | `theorem` | [dvd_rfl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-rfl--aed5dc68df5a3669d31250f8.md) | 108 | `result-track:aed5dc68df5a3669d31250f8274dc26699396ff723eba96bb5c9906fcd9d8b1f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/instance--a408937e7fe2aba0d369bd60.md) | 110 | `declaration-track:a408937e7fe2aba0d369bd605c76b9b2577e540effe5efd7bfd82d916b00eafd` |
| 17 | `theorem` | [one_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/one-dvd--9a04b6d934cd4f01eae579e9.md) | 113 | `result-track:9a04b6d934cd4f01eae579e9acefa013ee00e48e46580c28fe5701d62c0ee9f4` |
| 18 | `theorem` | [dvd_of_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-of-eq--4e63b701150fc05ebb598604.md) | 116 | `result-track:4e63b701150fc05ebb5986043cc7d2aa68698a2e9f6dabc70232c105d3c19172` |
| 19 | `lemma` | [pow_dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/pow-dvd-pow--c2bd2b206bd6c48b468f07c9.md) | 120 | `result-track:c2bd2b206bd6c48b468f07c9e45763e1349658e8176ee0f08567bd3ca24e4166` |
| 20 | `lemma` | [dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-pow--3117271f0ba659f4ae86cb50.md) | 123 | `result-track:3117271f0ba659f4ae86cb50cfc22c52fb5bbef36928909a69664013380fc0c0` |
| 21 | `lemma` | [dvd_pow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-pow-self--43d60f4ff3631eabaa32d9a8.md) | 129 | `result-track:43d60f4ff3631eabaa32d9a88a1c8140bfcf0b672a463586fb4297fd1dafae45` |
| 22 | `theorem` | [mul_dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/mul-dvd-mul-left--cc8edd30b290e3989c9612e8.md) | 131 | `result-track:cc8edd30b290e3989c9612e81f64893e45095e708619f41e226c7d5eeb6e9fed` |
| 23 | `theorem` | [Dvd.intro_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-intro-left--9411f44672e97a8a2e8be7bf.md) | 142 | `result-track:9411f44672e97a8a2e8be7bf58bf2e2d9ba8083224a6e5e50ea1476c58f6fbf4` |
| 24 | `theorem` | [exists_eq_mul_left_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/exists-eq-mul-left-of-dvd--110f11573de682e24cbeb90c.md) | 147 | `result-track:110f11573de682e24cbeb90c036cdbfccdd3a79d3a2d7837a3e2c105128a465b` |
| 25 | `theorem` | [dvd_iff_exists_eq_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-iff-exists-eq-mul-left--371a0d7fd405df0017e65771.md) | 150 | `result-track:371a0d7fd405df0017e65771731ea87c522512752236048714491d99165b7dab` |
| 26 | `theorem` | [Dvd.elim_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-elim-left--7a8cf64b85285ff568262f8e.md) | 155 | `result-track:7a8cf64b85285ff568262f8e3c76eedff6ad9365ee60b19f1549903bdbe9f897` |
| 27 | `theorem` | [dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-mul-left--397e057723aced5d6c2a8034.md) | 159 | `result-track:397e057723aced5d6c2a8034c152a0007d4c0986156d6deee3ce6330b6fe0dbc` |
| 28 | `theorem` | [dvd_mul_of_dvd_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-mul-of-dvd-right--4478fbfc22d573135033732f.md) | 162 | `result-track:4478fbfc22d573135033732fef8a894b45cf0784b2114e40c386a36218838a16` |
| 29 | `theorem` | [mul_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/mul-dvd-mul--f2ef8b4bffd5c04f63ddf6c9.md) | 169 | `result-track:f2ef8b4bffd5c04f63ddf6c9bc9566bba125fdf19144c069883dee88ce26cbe7` |
| 30 | `theorem` | [dvd_of_mul_left_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-of-mul-left-dvd--48f3cff766b3281f8a44c007.md) | 172 | `result-track:48f3cff766b3281f8a44c007323ffd649953cb9983a6a219555b261fdd969244` |
| 31 | `theorem` | [dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/dvd-mul--82ba263838195ebfcb637bd9.md) | 175 | `result-track:82ba263838195ebfcb637bd97359f2c9efc17d2d36b88d462e8e30063325d248` |
| 32 | `theorem` | [mul_dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/mul-dvd-mul-right--6c23d743422acf5e59d70411.md) | 187 | `result-track:6c23d743422acf5e59d70411b9ecbb02aa9aab24da33b32274950be03f708044` |
| 33 | `theorem` | [pow_dvd_pow_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante788a147098021281abd48c57179cf59fc7969ba1a7288e4b23f91699a93776b.lean/declarations/pow-dvd-pow-of-dvd--85d731376379db49bf67e337.md) | 190 | `result-track:85d731376379db49bf67e337968a78dc48f498268168fc03cf23c6c8d65a0914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
