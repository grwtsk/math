# Verification target: GRWTSK.Algebra.Ring.Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "151c163350f30567ebfd03bef34f64e8e07955a8",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `151c163350f30567ebfd03bef34f64e8e07955a8`.

Source path: `GRWTSK/Algebra/Ring/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Colimit.DirectLimit` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectLimit](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/directlimit--27092e34977d4a21da0c7c5a.md) | 54 | `declaration-track:27092e34977d4a21da0c7c5adce147504c21e9ef8c4ec2f82869fab4e3f0cd38` |
| 2 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/commring--cbb23261e1f776123ef048cb.md) | 65 | `declaration-track:cbb23261e1f776123ef048cb22b3dcb85beca32107e0e0eec6f294ecb9123e25` |
| 3 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/ring--0035d50353d32ca7388cd016.md) | 68 | `declaration-track:0035d50353d32ca7388cd016c08a4b070d636e746d7c72f057bca39978f5dd84` |
| 4 | `instance` | [zero](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/zero--c577ffc119e9310f837f37fb.md) | 72 | `declaration-track:c577ffc119e9310f837f37fb0a348625ac631754c5a4ceac524b02d72d1dc002` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/instance--abefce37ceeaaedd4445bb06.md) | 76 | `declaration-track:abefce37ceeaaedd4445bb06da577e1206ed021c70c55b5e431a7d54cb62d61a` |
| 6 | `def` | [of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/of--6d23e5e26423035a5be310c9.md) | 80 | `declaration-track:6d23e5e26423035a5be310c95bb5cdd8032e24012f155d0bd0e00ec56c2118ac` |
| 7 | `theorem` | [quotientMk_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/quotientmk-of--0f102eabd8de75bab791c582.md) | 90 | `result-track:0f102eabd8de75bab791c582a7b38634cbd7b158a700a659ee33d6d27728188b` |
| 8 | `theorem` | [of_f](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/of-f--6d0028d5b0c0f4112980be16.md) | 93 | `result-track:6d0028d5b0c0f4112980be16730c4ee41c48e62654230d1b452e25b3f5c1691a` |
| 9 | `theorem` | [exists_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/exists-of--063151c882b499dca187428d.md) | 98 | `result-track:063151c882b499dca187428dd1a5c6fd406890752904b38c4b45b1caea051d72` |
| 10 | `theorem` | [Polynomial.exists_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/polynomial-exists-of--f9f3925435031bbdcff0a5c4.md) | 112 | `result-track:f9f3925435031bbdcff0a5c4f12fba4e56d83f7c3f2d183215e6620a245fcc23` |
| 11 | `theorem` | [induction_on](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/induction-on--777d1dc6c7cb04e055527cc7.md) | 131 | `result-track:777d1dc6c7cb04e055527cc7ece96b123a1657a90c7294fc68f94014f8fbbfe3` |
| 12 | `def` | [lift](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/lift--783eb47d03283ae5a0de53a4.md) | 145 | `declaration-track:783eb47d03283ae5a0de53a4f901debd4579d1e1f46e8c72489b56b980d529c3` |
| 13 | `theorem` | [lift_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/lift-of--4b38bc0378f82652666f878a.md) | 162 | `result-track:4b38bc0378f82652666f878a31ee0cf9136b92133470363e8c05e625ab19a8bf` |
| 14 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/lift-unique--0795042a4d33c8d756c74188.md) | 165 | `result-track:0795042a4d33c8d756c74188567720a87d9443157806dc7bd16016f62c4d281d` |
| 15 | `lemma` | [lift_injective](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/lift-injective--8436cbfa3be1dab0ad53fa02.md) | 171 | `result-track:8436cbfa3be1dab0ad53fa0278ba63cb3737c6fff351769bfbd145a478cf0c36` |
| 16 | `def` | [ringEquiv](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/ringequiv--2e16a1af9c0e63c38ff403e0.md) | 188 | `declaration-track:2e16a1af9c0e63c38ff403e09765d83d5aa0078bd642a627da22f7f23575247c` |
| 17 | `theorem` | [ringEquiv_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/ringequiv-of--bb27d7edb20d7bf34249dda4.md) | 194 | `result-track:bb27d7edb20d7bf34249dda4f29dc234c74ea2b5b8bbc4f8708620e839afb465` |
| 18 | `theorem` | [ringEquiv_symm_mk](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/ringequiv-symm-mk--1072083f644f5eea73a42fad.md) | 197 | `result-track:1072083f644f5eea73a42fad03e359d4b4c180bd4afbb6866ddc9d10243cd97f` |
| 19 | `theorem` | [of.zero_exact](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/of-zero-exact--fb9bb85d3febab2cd4f37f94.md) | 202 | `result-track:fb9bb85d3febab2cd4f37f942f81f667a3ab31c92aed0734176e50263293c310` |
| 20 | `theorem` | [of_injective](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/of-injective--681483ce9079318bcabbb4d9.md) | 214 | `result-track:681483ce9079318bcabbb4d9e22f22a2f0655fb188929e927492895da73c5ef6` |
| 21 | `def` | [map](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/map--62237d993a049a7ca8a5209a.md) | 234 | `declaration-track:62237d993a049a7ca8a5209ab98abde751a536c99d49b20a21190d302de90a17` |
| 22 | `lemma` | [map_apply_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/map-apply-of--72bc95842ea45a439f2ec54c.md) | 242 | `result-track:72bc95842ea45a439f2ec54cc9c9aef8bd11106cbfb9507ba62e9a0faf738a27` |
| 23 | `lemma` | [map_id](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/map-id--ab28f94efaacf51e454c4569.md) | 248 | `result-track:ab28f94efaacf51e454c456947c3ed639c2acf3f3196e01853efa3c44e0a06ce` |
| 24 | `lemma` | [map_comp](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/map-comp--dae30eefb10e748758433450.md) | 255 | `result-track:dae30eefb10e748758433450ab434cdc7a319be093bc0d38a61e445c2267228e` |
| 25 | `def` | [congr](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/congr--41ca4fe0a5d8d57420293cdf.md) | 275 | `declaration-track:41ca4fe0a5d8d57420293cdf4bc7b981df0f18c0989206660d75ad4479b73d7e` |
| 26 | `lemma` | [congr_apply_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/congr-apply-of--7c8bf8ac9911f2a077d6c0f0.md) | 287 | `result-track:7c8bf8ac9911f2a077d6c0f0231308eb45032bf58de3893c2077d285c52a9cfb` |
| 27 | `lemma` | [congr_symm_apply_of](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/congr-symm-apply-of--4e7cb42bb05b2fafde56f2a0.md) | 293 | `result-track:4e7cb42bb05b2fafde56f2a0fec94240bd972cdf161fd396c47b72f8f9799370` |
| 28 | `instance` | [nontrivial](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/nontrivial--66d0b350216989dffc1e4e7b.md) | 315 | `declaration-track:66d0b350216989dffc1e4e7b68ca8aa6f7b3a98adc5daa70963db00efafe6f9c` |
| 29 | `theorem` | [exists_inv](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/exists-inv--ce1a2a9cbbfccd6e2b1786b6.md) | 325 | `result-track:ce1a2a9cbbfccd6e2b1786b6eaa95944b6adb31f4389dd3caa3e5464a636931a` |
| 30 | `def` | [inv](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/inv--0c025db3133bc314728b074e.md) | 337 | `declaration-track:0c025db3133bc314728b074e984ceb424ab02c0398c304558e4319da6f3ddb04` |
| 31 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/mul-inv-cancel--f9dd75d36d268417196c460e.md) | 340 | `result-track:f9dd75d36d268417196c460e826b8d2511d8e3759e290e5d373d08a9a5df4ffc` |
| 32 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/inv-mul-cancel--69566ab0b8acf3193b369cce.md) | 343 | `result-track:69566ab0b8acf3193b369cced5266a722a0388a5eedd0575f21cdf6b80e66ffe` |
| 33 | `abbrev` | [field](../../../../mathematics/Algebra/RingTheory/Variant4ed23026a8e205220a119dfecb585242c7fae918f64838a44e05e82af651bb88.lean/declarations/field--187be60c9cde72e7c32feca5.md) | 348 | `declaration-track:187be60c9cde72e7c32feca57ac28093a71275a9a3b50a654d33c493bed69298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
