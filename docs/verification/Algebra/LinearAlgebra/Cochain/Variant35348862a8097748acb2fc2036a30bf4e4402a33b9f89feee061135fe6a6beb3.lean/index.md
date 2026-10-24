# Verification target: GRWTSK.Algebra.LinearAlgebra.Cochain.Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce6e6a578ab490be911945d4caa8463025ac3c7b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce6e6a578ab490be911945d4caa8463025ac3c7b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean.json)

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
| 1 | `abbrev` | [oneCochain](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/onecochain--5ca8e04fedd72356cf45ace5.md) | 51 | `declaration-track:5ca8e04fedd72356cf45ace5fd79a87e064be1bfb9acbe5304ad44a1f6bbdea4` |
| 2 | `def` | [twoCochain](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/twocochain--7b6c9a4999a27b99548f98c7.md) | 54 | `declaration-track:7b6c9a4999a27b99548f98c74afcdad97b822ffaffee97b575ce5286c20b7f11` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/instance--dee360463256123d6830e327.md) | 65 | `declaration-track:dee360463256123d6830e32761f9aa930c333615bda64f094af563e0a8430096` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/instance--396084df8ad12fee7a00c442.md) | 71 | `declaration-track:396084df8ad12fee7a00c442b9b707c7260962985f366fd58a65f855a4ac880f` |
| 5 | `lemma` | [mem_twoCochain_iff](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/mem-twocochain-iff--c69209f4b36b5a5470ce7bb7.md) | 76 | `result-track:c69209f4b36b5a5470ce7bb7c1a2a239be8db16dc06c4b4fde4c204909a77619` |
| 6 | `lemma` | [twoCochain_alt](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/twocochain-alt--d770bcc2d59e43d8c7b44f90.md) | 79 | `result-track:d770bcc2d59e43d8c7b44f90de72f368a3c81ba681b5ac44c7b3bafd7ed56a21` |
| 7 | `lemma` | [twoCochain_skew](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/twocochain-skew--bbfd4737851d053589a1a79d.md) | 83 | `result-track:bbfd4737851d053589a1a79dc03eb6cb69d97638438f49773db450105762f00b` |
| 8 | `lemma` | [twoCochain_val_apply](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/twocochain-val-apply--c01970ae7e824ca92f6dfc4c.md) | 88 | `result-track:c01970ae7e824ca92f6dfc4cabe8366fc7b3129514aa761cdda3a051d73d235e` |
| 9 | `lemma` | [add_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/add-apply-apply--d793e5f0937ac565ee425ff9.md) | 93 | `result-track:d793e5f0937ac565ee425ff971c0023c69a51a8c16dc34b2514d943dddfe248a` |
| 10 | `lemma` | [smul_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/smul-apply-apply--da532f91d87aa61475ee87f4.md) | 99 | `result-track:da532f91d87aa61475ee87f4cfc22dd783d72a4efd5044e52bda7fb67c8dbbd9` |
| 11 | `def` | [d₁₂](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/d--4f17d0325a49e22523efb4c5.md) | 109 | `declaration-track:4f17d0325a49e22523efb4c5ff3b59c5c328614bc86b48c38bd9e129803a818e` |
| 12 | `lemma` | [d₁₂_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/d-apply-apply--118a790403c04eea409cb529.md) | 123 | `result-track:118a790403c04eea409cb529ddaa4de87219c7502b2a580c031e882ff310f7ad` |
| 13 | `lemma` | [d₁₂_apply_apply_ofTrivial](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/d-apply-apply-oftrivial--3c1ffb82a0fbd116a5453da8.md) | 126 | `result-track:3c1ffb82a0fbd116a5453da8f93cc9742f06ab5f38b72ebf21af1d3c380b16f7` |
| 14 | `def` | [d₂₃](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/d--1f49080dca9c2a0847e94dc4.md) | 131 | `declaration-track:1f49080dca9c2a0847e94dc411f4b4c04862122046a55610eeff7a519699f097` |
| 15 | `lemma` | [d₂₃_apply](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/d-apply--e185c7d80a902302fa063f1c.md) | 146 | `result-track:e185c7d80a902302fa063f1c1ca2e473292350e63f1b0678e35b41ac1b3e7ef7` |
| 16 | `lemma` | [d₂₃_comp_d₁₂](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/d-comp-d--1d2dcf9c2d860592af31d724.md) | 151 | `result-track:1d2dcf9c2d860592af31d7249fd4a2df25fadc53a0ec07616b878841e6b1ced1` |
| 17 | `def` | [twoCocycle](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/twococycle--56f873dc400c7400223f75cd.md) | 164 | `declaration-track:56f873dc400c7400223f75cd2db04a327edf2b756645ed4250837d675492287a` |
| 18 | `lemma` | [mem_twoCocycle_iff](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/mem-twococycle-iff--a5cfa5cd8b01cc47dd638048.md) | 166 | `result-track:a5cfa5cd8b01cc47dd63804868710224ee24d2a00c1b6b13011086332a0d7cca` |
| 19 | `lemma` | [mem_twoCocycle_iff_of_trivial](../../../../../mathematics/Algebra/LinearAlgebra/Cochain/Variant35348862a8097748acb2fc2036a30bf4e4402a33b9f89feee061135fe6a6beb3.lean/declarations/mem-twococycle-iff-of-trivial--e2fbb571f8007933c429a6d1.md) | 169 | `result-track:e2fbb571f8007933c429a6d16e7aadfbdc9ac6e7422ad960f006545ea5875e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
