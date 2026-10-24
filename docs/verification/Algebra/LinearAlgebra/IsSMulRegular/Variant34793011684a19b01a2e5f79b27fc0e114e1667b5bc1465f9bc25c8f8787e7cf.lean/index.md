# Verification target: GRWTSK.Algebra.LinearAlgebra.IsSMulRegular.Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcbd439b44ceca0025401486d8b285095c426c5c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcbd439b44ceca0025401486d8b285095c426c5c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.QuotSMulTop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearEquiv.isSMulRegular_congr'](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/linearequiv-issmulregular-congr--cc4ae1c9063863a9051c4751.md) | 40 | `result-track:cc4ae1c9063863a9051c4751e17dea14264dcb907ef8d585003bd5cc5f340e74` |
| 2 | `lemma` | [LinearEquiv.isSMulRegular_congr](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/linearequiv-issmulregular-congr--16d3ffbdf9e547ee0cdb18e3.md) | 44 | `result-track:16d3ffbdf9e547ee0cdb18e39c4e0ecd10dcd687b98a2e018e5bd81542380b01` |
| 3 | `lemma` | [IsSMulRegular.submodule](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-submodule--9182249e2d60628114a421ab.md) | 52 | `result-track:9182249e2d60628114a421abfe4d7cf4f907255db8c9ac810b0a43816f876f5f` |
| 4 | `lemma` | [IsSMulRegular.lTensor](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-ltensor--cebbaa959163f75cfe2a0f8d.md) | 65 | `result-track:cebbaa959163f75cfe2a0f8deab7631bedecc8cde0cebeb3978029d86299fb94` |
| 5 | `lemma` | [IsSMulRegular.rTensor](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-rtensor--0043f5d4296c057e41f7491d.md) | 69 | `result-track:0043f5d4296c057e41f7491d6f952f62496681e2513cec68fa37b849f6aff463` |
| 6 | `lemma` | [isSMulRegular_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-algebramap-iff--a71d7fba2bd9055dbca7f896.md) | 75 | `result-track:a71d7fba2bd9055dbca7f896fbac3cd2e0ed606d270107005b83b40a460810e6` |
| 7 | `lemma` | [isSMulRegular_iff_smul_eq_zero_imp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-iff-smul-eq-zero-imp-eq-zero--af089be3d988a7de4445622f.md) | 86 | `result-track:af089be3d988a7de4445622f764ca4c9902bd5598faab3f3d999dbc8a17e51c9` |
| 8 | `lemma` | [isSMulRegular_iff_mem_nonZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-iff-mem-nonzerosmuldivisors--0559196ea4dd22f9f30a3dd8.md) | 91 | `result-track:0559196ea4dd22f9f30a3dd86e6281be458cb6d24825a2cfa7228935628c72ee` |
| 9 | `lemma` | [isSMulRegular_of_smul_eq_zero_imp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-of-smul-eq-zero-imp-eq-zero--6802f03963e0fb6e0fa758bc.md) | 97 | `result-track:6802f03963e0fb6e0fa758bc03feb041a39ade30c81a321eada58d0de89fe883` |
| 10 | `lemma` | [isSMulRegular_on_submodule_iff_mem_imp_smul_eq_zero_imp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-on-submodule-iff-mem-imp-smul-eq-zero-imp-eq-zero--c4a3f763f63127568d39f31a.md) | 103 | `result-track:c4a3f763f63127568d39f31a538e3c0f40ceeaf5809ef4594e778a31156325d0` |
| 11 | `lemma` | [isSMulRegular_on_quot_iff_smul_mem_implies_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-on-quot-iff-smul-mem-implies-mem--5e64d96b15d84bcd5c8e231d.md) | 109 | `result-track:5e64d96b15d84bcd5c8e231d9259b1c675e7fddd3c42fd5e4a785fed313fe814` |
| 12 | `lemma` | [mem_of_isSMulRegular_on_quot_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/mem-of-issmulregular-on-quot-of-smul-mem--25ba46ecdc140d1f245e3330.md) | 117 | `result-track:25ba46ecdc140d1f245e3330e9002805c4373c8501af5230bb8197917e99c058` |
| 13 | `lemma` | [isSMulRegular_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-of-range-eq-ker--b94393fe1032cf6795fe48ec.md) | 123 | `result-track:b94393fe1032cf6795fe48ec116bda1971b51b34f6b4253b1e0dc46af8653f79` |
| 14 | `lemma` | [isSMulRegular_of_isSMulRegular_on_submodule_on_quotient](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-of-issmulregular-on-submodule-on-quotient--89cb41b7a9315dc6185c9116.md) | 134 | `result-track:89cb41b7a9315dc6185c91160c487c8605cb208995b9bfc9b251cb40621dcfe2` |
| 15 | `lemma` | [biUnion_associatedPrimes_eq_compl_regular](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/biunion-associatedprimes-eq-compl-regular--4dae392a84366ca680138729.md) | 150 | `result-track:4dae392a84366ca680138729910407157db5784e203d15f9a5edb0484bfb6a0c` |
| 16 | `lemma` | [isSMulRegular_iff_ker_lsmul_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-iff-ker-lsmul-eq-bot--1322e2c0a94b24b27ea9b6ad.md) | 156 | `result-track:1322e2c0a94b24b27ea9b6ad4aeb484afbac9b3a98a7eed0a3c3187042fca0c4` |
| 17 | `lemma` | [isSMulRegular_on_submodule_iff_disjoint_ker_lsmul_submodule](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-on-submodule-iff-disjoint-ker-lsmul-submodule--635f77328d702980214d0163.md) | 162 | `result-track:635f77328d702980214d016358cdf49fe097fab102cf6318e0d664bed431fa6d` |
| 18 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-le--161b05409738bdd07d65da45.md) | 167 | `result-track:161b05409738bdd07d65da4590ca39f86daad36ce50c473190015f108cdc8278` |
| 19 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-eq--2f6fa25f506d1905febdf910.md) | 171 | `result-track:2f6fa25f506d1905febdf910aa09e5d1bab7fcaa94bba3cc14d0da36eb90130c` |
| 20 | `lemma` | [IsSMulRegular.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-issmulregular-on-quot-iff-smul-top-inf-eq-smul--90ae47b2ffe1ca60513462f1.md) | 178 | `result-track:90ae47b2ffe1ca60513462f131777cf3339c805cddb5687c8ac83dc0694c71e6` |
| 21 | `lemma` | [isSMulRegular_of_ker_lsmul_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/issmulregular-of-ker-lsmul-eq-bot--7923829976ffc06b00cb174b.md) | 185 | `result-track:7923829976ffc06b00cb174b06971c7dbbee2f3d1253a970b6cecc3b96565fbb` |
| 22 | `lemma` | [smul_top_inf_eq_smul_of_isSMulRegular_on_quot](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/smul-top-inf-eq-smul-of-issmulregular-on-quot--50725cb7ce48bc4f4d9951c1.md) | 191 | `result-track:50725cb7ce48bc4f4d9951c1f86b44e8b46ee95934cf9af03ea02bba46c989d5` |
| 23 | `lemma` | [QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last](../../../../../mathematics/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/declarations/quotsmultop-map-first-exact-on-four-term-exact-of-issmulregular-last--c411ef09ac9d2a0960057846.md) | 198 | `result-track:c411ef09ac9d2a0960057846def8cb767592e4d96399e2e9cf794ec282764e5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
