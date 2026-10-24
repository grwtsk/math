# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bd8c942ae0094f3518a2b6f181173893d8da6ed",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bd8c942ae0094f3518a2b6f181173893d8da6ed`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean.json)

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
| 1 | `def` | [minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/minpoly--e2ea62b3f7d3788338c4339a.md) | 49 | `declaration-track:e2ea62b3f7d3788338c4339acfbdfe47758fa3185ef867ba31fc3752f0291bb7` |
| 2 | `theorem` | [monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/monic--3b7f57a1dfa597780717aa12.md) | 62 | `result-track:3b7f57a1dfa597780717aa12d7df6ac30a29ae8a729ceb22ecffdcfa44200618` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/ne-zero--ae42936d8afb601b93d89a04.md) | 68 | `result-track:ae42936d8afb601b93d89a0444ce0701c7d7a84f91d97bdf6bfeef1260c1f000` |
| 4 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/eq-zero--3bef8abb13da7946fac159ed.md) | 71 | `result-track:3bef8abb13da7946fac159ed2f45d66b046a85a44db7b11ba3b6acb2a2f659d6` |
| 5 | `theorem` | [ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/ne-zero-iff--3dd9dacce99b1ba6406198f8.md) | 74 | `result-track:3dd9dacce99b1ba6406198f843f5ccff7cd174064e2909b9f04bd8a0bec92c9b` |
| 6 | `theorem` | [algHom_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/alghom-eq--cd7a86f61af7428cc821a564.md) | 77 | `result-track:cd7a86f61af7428cc821a564b618dd201528977186a65211ac4873e3b1b0517d` |
| 7 | `theorem` | [algebraMap_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/algebramap-eq--4e837b7acfeefd04a7c8eeef.md) | 83 | `result-track:4e837b7acfeefd04a7c8eeefc06d88f916f9496e2ee2da6267240909527d3c73` |
| 8 | `theorem` | [algEquiv_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/algequiv-eq--9885ee8f2938a2843b569840.md) | 89 | `result-track:9885ee8f2938a2843b569840cb89a142eb430685aed968759f99196de4d960fb` |
| 9 | `theorem` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/aeval--27a322b46a905a767625ac2b.md) | 97 | `result-track:27a322b46a905a767625ac2b2c7c0cc71001020cb8fe9ca10c60d68fc1056d65` |
| 10 | `theorem` | [aeval_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/aeval-alghom--3909c77240185cac8bc642f2.md) | 105 | `result-track:3909c77240185cac8bc642f2f990525f44fb6bacb8028a93cacf2c49e498c512` |
| 11 | `theorem` | [ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/ne-one--01529a636050005da4b7ec52.md) | 109 | `result-track:01529a636050005da4b7ec527d0b5652d4f19b2f4126f619898b0ab293d88355` |
| 12 | `theorem` | [map_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/map-ne-one--bbbc75d76790b8a505b2bb4e.md) | 114 | `result-track:bbbc75d76790b8a505b2bb4e895c72dd18901fe8466d9a2470723a946512894f` |
| 13 | `theorem` | [not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/not-isunit--06ce5ab786e531721964f10e.md) | 122 | `result-track:06ce5ab786e531721964f10e5a1eaec73ab68f3f4f0cec953133d53c6cf5c147` |
| 14 | `theorem` | [mem_range_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/mem-range-of-degree-eq-one--0080fd719b807d2edf07d37d.md) | 129 | `result-track:0080fd719b807d2edf07d37dff8b11684efc5f4d67e88a7d435029d7b640689e` |
| 15 | `theorem` | [min](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/min--8a06bac0d699b1dcea096a3b.md) | 142 | `result-track:8a06bac0d699b1dcea096a3b557d86ace33dbbad3ee1c7b8585c17a522455d9d` |
| 16 | `theorem` | [unique'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/unique--d3080a3ccbc279d8159b72e7.md) | 149 | `result-track:d3080a3ccbc279d8159b72e77e03cc17a0a166c0224095aabbd7c03fcb7b32d6` |
| 17 | `theorem` | [eq_of_linearIndependent](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/eq-of-linearindependent--da498930f8664c1e4a4236e7.md) | 177 | `result-track:da498930f8664c1e4a4236e7ef9a56099778fb6b78d12d78c99e7e0c3b8a1d2d` |
| 18 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/subsingleton--42e459a6d8a467e3d9effbb7.md) | 188 | `result-track:42e459a6d8a467e3d9effbb78b4f4f66276be6601656da935b6c1528bd274a5f` |
| 19 | `theorem` | [natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/natdegree-pos--91025f9b24cf298d10cc5cd9.md) | 200 | `result-track:91025f9b24cf298d10cc5cd9d32bf061052192cc395f526bcb930c0423e08e12` |
| 20 | `theorem` | [degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/degree-pos--fa20e302ee824e44abdb05c0.md) | 210 | `result-track:fa20e302ee824e44abdb05c03fa3f1fce283ae7c21c08c66a38a7c5c6810ca11` |
| 21 | `theorem` | [aeval_modByMonic_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/aeval-modbymonic-minpoly--b94e1f126f65a5517a543727.md) | 214 | `result-track:b94e1f126f65a5517a543727d45a36d8372ef93e99e5b4ff2fd7d150752262c9` |
| 22 | `theorem` | [degree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/degree-eq-one-iff--6b6a640ceaa3e658737f6116.md) | 221 | `result-track:6b6a640ceaa3e658737f61164af1a75b657f6521e10002e3ae8ee9e3935c6306` |
| 23 | `theorem` | [natDegree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/natdegree-eq-one-iff--460b5b976959e6c8e0032188.md) | 228 | `result-track:460b5b976959e6c8e00321884607748846b9b4e9761ed0dbcb586a4087de99c5` |
| 24 | `theorem` | [two_le_natDegree_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/two-le-natdegree-iff--2661077c4cd83dcb670898d3.md) | 233 | `result-track:2661077c4cd83dcb670898d3fd56f8891f9675366f3093a97ab8b7d2d5db2a9a` |
| 25 | `theorem` | [two_le_natDegree_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/two-le-natdegree-subalgebra--63c70686c927dfd569242a87.md) | 238 | `result-track:63c70686c927dfd569242a8749f52c7b73db621d973fc0af6d835b8ff46f8eb9` |
| 26 | `theorem` | [eq_X_sub_C_of_algebraMap_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/eq-x-sub-c-of-algebramap-inj--17230ed0865bace372337681.md) | 247 | `result-track:17230ed0865bace37233768131f9003a570888d7375e8dd0c62ae2d9c28112ec` |
| 27 | `theorem` | [aeval_ne_zero_of_dvdNotUnit_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/aeval-ne-zero-of-dvdnotunit-minpoly--27bebebaa5a527630e31e15a.md) | 259 | `result-track:27bebebaa5a527630e31e15adb24701c21c86014cf7c2e12011b6fc265108014` |
| 28 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant161965b9509976740ac45c2dc255db75e6b480a128299722bdafa20881ab1e86.lean/declarations/irreducible--6b4c1d37cab81370ed24519f.md) | 277 | `result-track:6b4c1d37cab81370ed24519f422891e8a15e885a5499557ab640d08cc7894f03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
