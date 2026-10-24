# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HilbertPoly.Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "823364e34e55eca198d997052479da6843bb038d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `823364e34e55eca198d997052479da6843bb038d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean.json)

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
| 1 | `def` | [preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/prehilbertpoly--4336ad100e34486c2b259bca.md) | 63 | `declaration-track:4336ad100e34486c2b259bcad63953153e7760e7df233799c9deb85d665d3fee` |
| 2 | `lemma` | [natDegree_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/natdegree-prehilbertpoly--f198a8de0ba7ec10a15c0813.md) | 66 | `result-track:f198a8de0ba7ec10a15c081343ef6a53cda5990ef5bd2d3e3094e4d6dc3e6e02` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/coeff-prehilbertpoly-self--811754be1ba94ffd08a6895d.md) | 72 | `result-track:811754be1ba94ffd08a6895ddd7ba337dc5a80b395cecc7ac20f8376e19f9dfe` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/leadingcoeff-prehilbertpoly--df92da9ec1ec9148461bda4f.md) | 86 | `result-track:df92da9ec1ec9148461bda4f0658b82589bf847537dd02b99f04631dcb4d2b9a` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_add_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/prehilbertpoly-eq-choose-add-sub--c538beb1d0c393220e62e10a.md) | 90 | `result-track:c538beb1d0c393220e62e10a112820e771033a6148f4df4623cfc5ad8384bc50` |
| 6 | `def` | [hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly--1aabf2192a43ba5cf4bd056a.md) | 117 | `declaration-track:1aabf2192a43ba5cf4bd056a67bbff8fc73bf0a1359d0d7e7cd8c2a3e62a874b` |
| 7 | `lemma` | [hilbertPoly_zero_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-zero-left--949635f98ac3bf29197bfebb.md) | 121 | `result-track:949635f98ac3bf29197bfebbc15000fef7943ae0bd9f499b1ebaea81ea92375c` |
| 8 | `lemma` | [hilbertPoly_zero_right](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-zero-right--97c6ce6014102103e2518bc4.md) | 126 | `result-track:97c6ce6014102103e2518bc43db6aa87a466abfc8cb82056e0776dcd9311f2a3` |
| 9 | `lemma` | [hilbertPoly_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-succ--6d407f3b9ebf5b99ce42e9a3.md) | 128 | `result-track:6d407f3b9ebf5b99ce42e9a30abf5c9bf4ad12a7e8558628f02ca7cebb8461c2` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-x-pow-succ--7b9820e8302222730377e0bd.md) | 131 | `result-track:7b9820e8302222730377e0bdc281d1a9d53561cbdec39dfee9043520a8bce01e` |
| 11 | `lemma` | [hilbertPoly_add_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-add-left--b170572abde48d0b324d7322.md) | 135 | `result-track:b170572abde48d0b324d7322b921c99f8308448a91143ddcbd3be63a1f29a66a` |
| 12 | `lemma` | [hilbertPoly_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-smul--5a5bdedc80cd076f2dfdb231.md) | 145 | `result-track:5a5bdedc80cd076f2dfdb23167542e463c03bfffbaf60438e23903c595a18bd3` |
| 13 | `def` | [hilbertPoly_linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-linearmap--360d9f652ac33c5e1b59d25c.md) | 161 | `declaration-track:360d9f652ac33c5e1b59d25c15bf7e1235c121dabbf1959f20d341bfc5347f0e` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval--af01d61b3159ee3b1423d56f.md) | 173 | `result-track:af01d61b3159ee3b1423d56fb60a1418faa43479fcbcb45eb82beb7d318d17e2` |
| 15 | `theorem` | [existsUnique_hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/existsunique-hilbertpoly--d48e486c3912b4b396ba0b9c.md) | 203 | `result-track:d48e486c3912b4b396ba0b9c891e68806dbf8bf85faac3de4c468155fc3499dc` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/eq-hilbertpoly-of-forall-coeff-eq-eval--aee6e36f0b2fabd5bf31adbd.md) | 221 | `result-track:aee6e36f0b2fabd5bf31adbd8fd1a7cb87558a5bbcc515890d493302c631cade` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-mul-one-sub-succ--fa444e37291770138e6505d8.md) | 228 | `result-track:fa444e37291770138e6505d8c29841d85b9a4c0c7210acbb2c1c2ff8fe3c2db3` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-mul-one-sub-pow-add--5548968a4de3d35c72a18f07.md) | 236 | `result-track:5548968a4de3d35c72a18f07c4094e3edd5a2e6bd125c3b8f51acbf383ff7b4c` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one--9daeccfb4745a735fdb352cb.md) | 242 | `result-track:9daeccfb4745a735fdb352cb17cfad806d48424f225ef564b12a2f88c2c7f79e` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--d53464471aa5cc984bc25fe0.md) | 254 | `result-track:d53464471aa5cc984bc25fe019b49211a48c23d578b6219e3a76837f32eacb44` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/declarations/natdegree-hilbertpoly-of-ne-zero--bd7aa8b66314468a063918c8.md) | 275 | `result-track:bd7aa8b66314468a063918c8f5c6533aa65a98df86be76d2e115ec5982e506e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
