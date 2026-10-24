# Verification target: GRWTSK.Algebra.EssentialFiniteness.Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b483b3fab0610ec8b4bd6d862a52b9d94dd94652",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md) · [Full source](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b483b3fab0610ec8b4bd6d862a52b9d94dd94652`.

Source path: `GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype--4428ce18117d515631e0ce1e.md) | 41 | `declaration-track:4428ce18117d515631e0ce1ece3c70fe0bffe2835e22679ae19d66a707fc2091` |
| 2 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-finset--96e7fc7d7d98579f9b33620d.md) | 48 | `declaration-track:96e7fc7d7d98579f9b33620dc5d72f3f298be6dc6b909b7c1ca02c9d2ea631ef` |
| 3 | `abbrev` | [EssFiniteType.subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-subalgebra--3bf9feca69cc959e3918ad56.md) | 53 | `declaration-track:3bf9feca69cc959e3918ad56d21a7647bca5ca7d56398b5d36c4837a8f109120` |
| 4 | `lemma` | [EssFiniteType.adjoin_mem_finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-adjoin-mem-finset--f571ce9d8891d73a644c1eae.md) | 56 | `result-track:f571ce9d8891d73a644c1eae1d6dd7d433cb91b264fae5f736304f63349d0315` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/instance--cdfd8d06c438b4de29544acf.md) | 59 | `declaration-track:cdfd8d06c438b4de29544acfe0e865920a5af9397eceffd6993cc35f32934a7b` |
| 6 | `def` | [EssFiniteType.submonoid](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-submonoid--544eb1ef316f530f71c8797c.md) | 66 | `declaration-track:544eb1ef316f530f71c8797c33d3f4d87135a6bb433808b4a476d40ba98a4120` |
| 7 | `instance` | [EssFiniteType.isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-islocalization--a24ff1b9559502412e89ea37.md) | 69 | `declaration-track:a24ff1b9559502412e89ea37b7374dd5a51db77f7fdc321bfd4862620cbc1c3b` |
| 8 | `lemma` | [essFiniteType_cond_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-cond-iff--e8e90a320a0c0f9286e083d7.md) | 73 | `result-track:e8e90a320a0c0f9286e083d7e2ea9059d7d873622bd8673e487b8823b59db8fc` |
| 9 | `lemma` | [essFiniteType_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-iff--607586df07f208617438fd4a.md) | 89 | `result-track:607586df07f208617438fd4afeabe81a211d3a708ef8c6e86bd37d203f993df0` |
| 10 | `instance` | [EssFiniteType.of_finiteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-of-finitetype--b023026ec5e6cf776364dbbb.md) | 96 | `declaration-track:b023026ec5e6cf776364dbbb6e9a09a31926363f506e36ca2b24ef85f5edd8f9` |
| 11 | `lemma` | [EssFiniteType.of_isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-of-islocalization--46d3ffda081ae960d5f6b010.md) | 102 | `result-track:46d3ffda081ae960d5f6b01033fdb82590938b8f31fff6f5335d1036c24cb4aa` |
| 12 | `lemma` | [EssFiniteType.of_id](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-of-id--10c89ce9ad35b33f9b38bbf3.md) | 112 | `result-track:10c89ce9ad35b33f9b38bbf397800075b639790801de7efec466ab67c829e0ab` |
| 13 | `lemma` | [EssFiniteType.aux](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-aux--2828bfd01cffd905a18ca77b.md) | 117 | `result-track:2828bfd01cffd905a18ca77b0635f6d81cfa2796d0149bae1519fd2158414a80` |
| 14 | `lemma` | [EssFiniteType.comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-comp--cecdd2c08d51a6384312df07.md) | 141 | `result-track:cecdd2c08d51a6384312df0738f58200f1814cc2a54d7572037736094eaaeda5` |
| 15 | `lemma` | [essFiniteType_iff_exists_subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-iff-exists-subalgebra--ae2016071787829dd90abebf.md) | 162 | `result-track:ae2016071787829dd90abebf2f9bcfe220ea3f167fe2e0d8ab2a8309cfc7a41c` |
| 16 | `instance` | [EssFiniteType.baseChange](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-basechange--d4b4a331ea828abd0927b52d.md) | 169 | `declaration-track:d4b4a331ea828abd0927b52d061f271a3f756cb2387657adf0a8bb7ebdee9a48` |
| 17 | `lemma` | [EssFiniteType.of_comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-of-comp--54ecac9347c507cdc1f3fc9a.md) | 201 | `result-track:54ecac9347c507cdc1f3fc9a8cbe302c5680d80b14876d7691de1112878c0177` |
| 18 | `lemma` | [EssFiniteType.comp_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-comp-iff--dd50c1dc03a5abcf68e68eb6.md) | 211 | `result-track:dd50c1dc03a5abcf68e68eb601a3aa50edcff5e92ff1593d046a9c426374a3d6` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/instance--1513a78056d19217b63bc4cc.md) | 215 | `declaration-track:1513a78056d19217b63bc4cc9a0b17b0e814d2767d143a7742162ae251654782` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/instance--d21e4f38e2adbab171fd3986.md) | 218 | `declaration-track:d21e4f38e2adbab171fd3986aade3551f3534f3540d07bc3f8ec3f804a2d6ef7` |
| 21 | `lemma` | [EssFiniteType.algHom_ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-alghom-ext--72d1d57b9244bbb9f82696ae.md) | 225 | `result-track:72d1d57b9244bbb9f82696ae7ec2cdd6b2d5002a959f32e44215b86d12afe663` |
| 22 | `def` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype--1ce416d8155cd7da776c5707.md) | 250 | `declaration-track:1ce416d8155cd7da776c5707e5b989101c9396dcd93659e815a8ed2198ea5038` |
| 23 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-finset--43fb7b96408158bf74f6a39d.md) | 257 | `declaration-track:43fb7b96408158bf74f6a39d603e94a4e4a26f5cc64725bb7a1e637b413f6ca4` |
| 24 | `lemma` | [FiniteType.essFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/finitetype-essfinitetype--027f35002e41006240a835ff.md) | 262 | `result-track:027f35002e41006240a835ffd3aa1b6cb7b74e1ff55c1e72e44c407fd2528a41` |
| 25 | `lemma` | [EssFiniteType.ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/declarations/essfinitetype-ext--ed10bd20cf2512d4e5ed4fab.md) | 267 | `result-track:ed10bd20cf2512d4e5ed4fab98643889eef5b1525f1fd30ad2d1a74347248fab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
