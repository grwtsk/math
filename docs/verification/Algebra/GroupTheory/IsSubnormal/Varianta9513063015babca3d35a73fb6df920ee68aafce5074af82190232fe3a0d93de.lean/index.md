# Verification target: GRWTSK.Algebra.GroupTheory.IsSubnormal.Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c650d05b3d7110f32d6f89de99008bab81d9bef",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c650d05b3d7110f32d6f89de99008bab81d9bef`.

Source path: `GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsSubnormal](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/issubnormal--67da4e3fd67a9a5464e4636b.md) | 72 | `declaration-track:67da4e3fd67a9a5464e4636b1a4d9869d40fde2654646c048a906bdab4500685` |
| 2 | `inductive` | [_root_.GRWTSK.Algebra.GroupTheory.IsSubnormal.Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.AddSubgroup.IsSubnormal](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/root-grwtsk-algebra-grouptheory-issubnormal-variant78ab4c2ec2a4d17c156c3--371924cbd17bc16e3bb85141.md) | 93 | `declaration-track:371924cbd17bc16e3bb851415c98d3add73fb80a14c465e8cab73020937d7d72` |
| 3 | `lemma` | [Normal.isSubnormal](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/normal-issubnormal--f11a556264f09e88b2e3a3f7.md) | 105 | `result-track:f11a556264f09e88b2e3a3f7d4cbb5a8dbdc08452d70d96e8de439fe7c0a9bde` |
| 4 | `lemma` | [bot](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/bot--c03827899bdd592d915a4acb.md) | 112 | `result-track:c03827899bdd592d915a4acbf7c96d6892bb548ce2912cc57b87e482ff8fa32c` |
| 5 | `lemma` | [normal_of_isSimpleGroup](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/normal-of-issimplegroup--38c995352837b9172237f7e7.md) | 116 | `result-track:38c995352837b9172237f7e751061480f0a88a44c40d476a17c9ad3d23131195` |
| 6 | `lemma` | [eq_bot_or_top_of_isSimpleGroup](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/eq-bot-or-top-of-issimplegroup--522d3cc37d2ab3b8e0e7cf00.md) | 128 | `result-track:522d3cc37d2ab3b8e0e7cf009bdece3dac838806eb42b40a5d4a8fa90b271c36` |
| 7 | `lemma` | [iff_eq_top_or_exists](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/iff-eq-top-or-exists--f07320b59475cbc4c020ab36.md) | 133 | `result-track:f07320b59475cbc4c020ab36f026ab44db00afe03ffe496450e9b4bbebd7d979` |
| 8 | `lemma` | [exists_normal_and_le_and_lt_top_of_ne](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/exists-normal-and-le-and-lt-top-of-ne--6cb4314f72a037de415b7c8f.md) | 155 | `result-track:6cb4314f72a037de415b7c8f05e8af12589324e6d47edcaebdff29751c9cad02` |
| 9 | `lemma` | [lt_normal](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/lt-normal--87aa71b699278797b43ec866.md) | 170 | `result-track:87aa71b699278797b43ec8669b6d55da4a7bbf650f41fad833678de6f4ac6e86` |
| 10 | `lemma` | [isSubnormal_iff](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/issubnormal-iff--8826d9245841ef0e1fe24354.md) | 185 | `result-track:8826d9245841ef0e1fe2435418c036fbcbff48ad25de0c444ddffcdf9c2cd2c9` |
| 11 | `lemma` | [trans'](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/trans--215b9ae6bf12d51143a30906.md) | 223 | `result-track:215b9ae6bf12d51143a30906f0dbf3ddc031493e5666e93ef1e57f3bc0686348` |
| 12 | `lemma` | [trans](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/trans--cdea7b90cdf56ddfac4dfa49.md) | 241 | `result-track:cdea7b90cdf56ddfac4dfa49ae2f404baf9e77c90ea93592bfd8c8b07ebf06e6` |
| 13 | `lemma` | [map](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/map--8394ab5fef7935c089180d80.md) | 250 | `result-track:8394ab5fef7935c089180d8069d07aa44d88c8bc5539cf23b3bd2a692fd73329` |
| 14 | `lemma` | [quotient](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/quotient--de3bbca14607a44cf3002f42.md) | 264 | `result-track:de3bbca14607a44cf3002f425f5f7a17441eae912c5257eb18f7dd653303a150` |
| 15 | `lemma` | [comap](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/comap--3738289d986467b74cbf7a37.md) | 272 | `result-track:3738289d986467b74cbf7a375c926f260226f6c689196ab314fe3d208170cbc2` |
| 16 | `lemma` | [subgroupOf](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/subgroupof--1a14b63eda9f616e7fba671f.md) | 283 | `result-track:1a14b63eda9f616e7fba671f980e785167aae7b95f176a4846e3086b5c1d4eb5` |
| 17 | `lemma` | [inf](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/inf--f3741262febf5509f5a69ca5.md) | 287 | `result-track:f3741262febf5509f5a69ca520bd4da476704d71af9e5d5457eec43639fbfbbf` |
| 18 | `lemma` | [smul](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/smul--bb13f6928adc95008494857d.md) | 295 | `result-track:bb13f6928adc95008494857dc555997d0bafcebec443285caa807c0e59507e8c` |
| 19 | `lemma` | [of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/declarations/of-subsingleton--643e03799b130a6ddd91f269.md) | 301 | `result-track:643e03799b130a6ddd91f269e30eed6c374e52019021e4226e6f88b04a5317fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
