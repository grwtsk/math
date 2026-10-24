# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d7da37fe0a71d87ba655c04f5e3692f7f9a704e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d7da37fe0a71d87ba655c04f5e3692f7f9a704e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Torsion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.EquationalCriterion` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_mkQ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/map-mkq-eq--dc387ec726dac80df4adabea.md) | 59 | `result-track:dc387ec726dac80df4adabea8f1bce9ade6a2ad7933c88d6622c7cd5199b7f78` |
| 2 | `theorem` | [map_mkQ_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/map-mkq-eq-top--7ec84b7029f18cc72647d8d6.md) | 70 | `result-track:7ec84b7029f18cc72647d8d612ac58343d82d8ece3466f62ee318a8c040988db` |
| 3 | `theorem` | [map_tensorProduct_mk_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/map-tensorproduct-mk-eq-top--3363ec2bc017f3c5c68ead32.md) | 74 | `result-track:3363ec2bc017f3c5c68ead32a8786ee1fc3251881d233ee20fb852a0da8d2104` |
| 4 | `theorem` | [subsingleton_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/subsingleton-tensorproduct--0b1dbb12a16421871f9faaa1.md) | 94 | `result-track:0b1dbb12a16421871f9faaa1de7fee0bb714d97f7c7503b20fc4df610a3c586d` |
| 5 | `theorem` | [span_eq_top_of_tmul_eq_basis](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/span-eq-top-of-tmul-eq-basis--53503a6f9cb6b32c94eccd94.md) | 100 | `result-track:53503a6f9cb6b32c94eccd94e54274c11a80180d948e649811afc51a2ee742ca` |
| 6 | `theorem` | [lTensor_injective_of_exact_of_exact_of_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/ltensor-injective-of-exact-of-exact-of-rtensor-injective--59bb19233b9e241315fef220.md) | 131 | `result-track:59bb19233b9e241315fef220f095fce42273b47f2ec7018154cfd9bd5df25714` |
| 7 | `lemma` | [exists_basis_of_basis_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/exists-basis-of-basis-basechange--d41fa8e6563bcd08b82020f4.md) | 169 | `result-track:d41fa8e6563bcd08b82020f45357ea017f59f20b90c0a81170f85965e33e9382` |
| 8 | `lemma` | [exists_basis_of_span_of_maximalIdeal_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/exists-basis-of-span-of-maximalideal-rtensor-injective--eabe02d6bd6b5a7d2252d08e.md) | 226 | `result-track:eabe02d6bd6b5a7d2252d08e091e79cad1f6c04fb931d1a3f1bb8f406deab54f` |
| 9 | `lemma` | [exists_basis_of_span_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/exists-basis-of-span-of-flat--c67ba7642deb795ff3056b1d.md) | 241 | `result-track:c67ba7642deb795ff3056b1d6da73b3cf644cef2bc0ebddcdb9e9727826307e4` |
| 10 | `theorem` | [free_of_maximalIdeal_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/free-of-maximalideal-rtensor-injective--f09931861c434150f35927de.md) | 251 | `result-track:f09931861c434150f35927de17b07dfae8730b096ff47a92893f4e44dbe14f36` |
| 11 | `theorem` | [IsLocalRing.linearIndependent_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/islocalring-linearindependent-of-flat--0097782f212e86e6d971bacc.md) | 257 | `result-track:0097782f212e86e6d971bacc57f1079c3b274a896ac023c18f7d59bb934e6e50` |
| 12 | `theorem` | [free_of_flat_of_isLocalRing](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/free-of-flat-of-islocalring--35fd4575d4a07d9343211b5f.md) | 294 | `result-track:35fd4575d4a07d9343211b5f737020c65740c61c3f6aadbc1b3645fa641b53cb` |
| 13 | `theorem` | [free_of_lTensor_residueField_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/free-of-ltensor-residuefield-injective--ea8a4b8d2dd914e31ee28d2a.md) | 306 | `result-track:ea8a4b8d2dd914e31ee28d2a6c17d8cea3d28f9f7d48eb24634b4872b1111192` |
| 14 | `theorem` | [IsLocalRing.split_injective_iff_lTensor_residueField_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/declarations/islocalring-split-injective-iff-ltensor-residuefield-injective--3c863ff9f7c5fd9b466c85b4.md) | 326 | `result-track:3c863ff9f7c5fd9b466c85b490bb2afb96763e2f63958484f772b81eb61a20c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
