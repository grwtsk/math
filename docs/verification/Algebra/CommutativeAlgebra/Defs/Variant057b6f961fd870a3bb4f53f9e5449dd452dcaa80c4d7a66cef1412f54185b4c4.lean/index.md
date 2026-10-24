# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Defs.Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a71898a05a59ca93e318a75e0fafac2d787aea6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a71898a05a59ca93e318a75e0fafac2d787aea6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean.json)

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
| 1 | `def` | [AlgebraicIndependent](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent--cd0cf63a0a511253a7aef9e3.md) | 54 | `declaration-track:cd0cf63a0a511253a7aef9e339dc48a4e9d91ef2f85d365fe23c041af53dcc1e` |
| 2 | `abbrev` | [AlgebraicIndepOn](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindepon--2f8daf66a4f186e643ab3a73.md) | 59 | `declaration-track:2f8daf66a4f186e643ab3a7395319f865b6889a7699aaa9849c04a74822fc7bb` |
| 3 | `theorem` | [algebraicIndependent_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-iff--ea4d53b38ce36cfa343ee592.md) | 63 | `result-track:ea4d53b38ce36cfa343ee59265f5605a7eab997f89f3576f3f451647d46e84f4` |
| 4 | `theorem` | [AlgebraicIndependent.eq_zero_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-eq-zero-of-aeval-eq-zero--4c4d7f255d0c0b97e5403fd3.md) | 68 | `result-track:4c4d7f255d0c0b97e5403fd378de83c1eeb8c1cae939fd04e71d393c55258f6b` |
| 5 | `theorem` | [algebraicIndependent_iff_injective_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-iff-injective-aeval--362618b1e86bce90b39c2904.md) | 72 | `result-track:362618b1e86bce90b39c2904a9ef4dc85959aa8f772093c30042c82f607bbcfd` |
| 6 | `theorem` | [of_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/of-comp--431d55abe818420a60f68b47.md) | 78 | `result-track:431d55abe818420a60f68b47bcfa2abaa42e671f0462a1fb259b15e9d0c2c435` |
| 7 | `theorem` | [comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/comp--32da42727c0c25db9dd0fb1a.md) | 87 | `result-track:32da42727c0c25db9dd0fb1ab62acda727f21ca846cfce0f7abbe3c5be704472` |
| 8 | `theorem` | [coe_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/coe-range--6072f3f42372c7d0fdd9072a.md) | 91 | `result-track:6072f3f42372c7d0fdd9072a20715d90f0ce09be324a77ee720064b280e60713` |
| 9 | `theorem` | [algebraicIndependent_equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-equiv--e27499933e49075fb94866b0.md) | 98 | `result-track:e27499933e49075fb94866b07a7d6ffc3b90df67abd0b3c654ff3ff5b05190fb` |
| 10 | `theorem` | [algebraicIndependent_equiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-equiv--cbd48a612d101de9fb047184.md) | 103 | `result-track:cbd48a612d101de9fb047184986d16c060be32bb384faf023cd328ae13e7f9b2` |
| 11 | `theorem` | [algebraicIndependent_subtype_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-subtype-range--c17d213b7134a48d1f0a3537.md) | 107 | `result-track:c17d213b7134a48d1f0a3537c39397bd056390dc22999e984e4390922ca1d1e1` |
| 12 | `theorem` | [algebraicIndependent_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindependent-image--8806af4ff7825b1ea26f529e.md) | 113 | `result-track:8806af4ff7825b1ea26f529e72e6509d1dcdee94f68d1677a6661542034d5e37` |
| 13 | `lemma` | [AlgebraicIndepOn.mono](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindepon-mono--f6ccc2c25928b17207e2ffae.md) | 117 | `result-track:f6ccc2c25928b17207e2ffae548f1bcd6ef03a734b4329b39eb5ffe2273d6cbb` |
| 14 | `lemma` | [AlgebraicIndepOn.univ](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebraicindepon-univ--fa974be5ba05886aac0c89b4.md) | 122 | `result-track:fa974be5ba05886aac0c89b41cce50573d748ea9078d8981c0220ebd9010bbc0` |
| 15 | `theorem` | [mono](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/mono--2180fb1583c9dcfec3811a7f.md) | 127 | `result-track:2180fb1583c9dcfec3811a7f90e747618f284a5994c6eb426671ad45ded7589c` |
| 16 | `def` | [aevalEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/aevalequiv--04175fda42e11fb9df39d5a3.md) | 139 | `declaration-track:04175fda42e11fb9df39d5a3dcaf80e97ac314a369996ab3c42af981172f08e4` |
| 17 | `theorem` | [algebraMap_aevalEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/algebramap-aevalequiv--1a82d5b8cc199864eb6acebb.md) | 143 | `result-track:1a82d5b8cc199864eb6acebb16b2e3438a65d1c35fde3b060cc152ff7acac718` |
| 18 | `def` | [repr](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/repr--35a8c8db5121ba69feb8457b.md) | 149 | `declaration-track:35a8c8db5121ba69feb8457b0c2336dbd7c0a7b676d5f309834d09b0253f6c01` |
| 19 | `theorem` | [aeval_repr](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/aeval-repr--dedb4a1a58d80c28e95ccff3.md) | 153 | `result-track:dedb4a1a58d80c28e95ccff3c7d1a61eda9c547a29fa492af4625e51bb3431b6` |
| 20 | `theorem` | [aeval_comp_repr](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/aeval-comp-repr--6ddd8eb6fa5bbd55cbbaa286.md) | 156 | `result-track:6ddd8eb6fa5bbd55cbbaa2862570a71352f8872e29569d9e12fdd492ae872a3c` |
| 21 | `def` | [_root_.AlgebraicIndepOn.aevalEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/root-algebraicindepon-aevalequiv--5001fbd34d020a6fd6721295.md) | 162 | `declaration-track:5001fbd34d020a6fd67212950b72fc6955b885574e23a38b26e086855dad026a` |
| 22 | `def` | [IsTranscendenceBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/istranscendencebasis--5eb6343a4f8f8677c72a452b.md) | 173 | `declaration-track:5eb6343a4f8f8677c72a452b903af821242beda1d62fe91743781d764c51d2f0` |
| 23 | `theorem` | [isTranscendenceBasis_iff_maximal](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/istranscendencebasis-iff-maximal--14071a5e3472104d20b5e33f.md) | 177 | `result-track:14071a5e3472104d20b5e33faa38b13eaa9c4aa70899d12a618cdb96a98c0fae` |
| 24 | `theorem` | [isTranscendenceBasis_equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/istranscendencebasis-equiv--d3d52cc2e67928cb6f08b4d3.md) | 181 | `result-track:d3d52cc2e67928cb6f08b4d38f23666d4f67f4e677c7cd2c53f2df1e4feff090` |
| 25 | `theorem` | [isTranscendenceBasis_equiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/istranscendencebasis-equiv--122e8ca37d3ff6f5b4072f54.md) | 187 | `result-track:122e8ca37d3ff6f5b4072f540d9ade5ac4523c21f628ca71042d887e63004b1e` |
| 26 | `theorem` | [isTranscendenceBasis_subtype_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/istranscendencebasis-subtype-range--6151cdd185b3de69e1f10fc1.md) | 191 | `result-track:6151cdd185b3de69e1f10fc1e829cab692ae1f95aa4df05e909fc66f225b9462` |
| 27 | `theorem` | [isTranscendenceBasis_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.lean/declarations/istranscendencebasis-image--200928f58bc4c22e8074bdb2.md) | 197 | `result-track:200928f58bc4c22e8074bdb2c5c02cbcea728cde98f439539f797d8c5d35dfac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
