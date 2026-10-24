# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cf77f81dee5dbdb58590477f9ea89b44271a073",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cf77f81dee5dbdb58590477f9ea89b44271a073`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ImageToKernel` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [imageToKernel_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/imagetokernel-op--fdb03899100d1af6fda2d3ee.md) | 47 | `result-track:fdb03899100d1af6fda2d3eea38f988fb28d857921eae4449b7fa2e2a2b03705` |
| 2 | `theorem` | [imageToKernel_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/imagetokernel-unop--6177dff11e01dd8781ba5bf7.md) | 59 | `result-track:6177dff11e01dd8781ba5bf7b35958c57648bf954580160adf927e748a1b80d3` |
| 3 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/op--ff5b733d6d1b49391e6ef086.md) | 83 | `declaration-track:ff5b733d6d1b49391e6ef086842f6f0d361ef7c210a29888c59e57fba52f95f5` |
| 4 | `def` | [opSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opsymm--8b10de9a8dc294cf649437a9.md) | 91 | `declaration-track:8b10de9a8dc294cf649437a91747052117d74e1c1d1c112a8a052bdda618a471` |
| 5 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unop--ad2725708cc2ff8909568850.md) | 99 | `declaration-track:ad2725708cc2ff89095688503d37abd48f76072ccdcac27836f7cdbb9f686309` |
| 6 | `def` | [unopSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopsymm--b67203ba086bb5d33304ff6c.md) | 107 | `declaration-track:b67203ba086bb5d33304ff6c0228f5b75c5f1f140830075c112ac3a8ebde81b3` |
| 7 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opfunctor--3ac9c595b01f52777e6b9b7f.md) | 117 | `declaration-track:3ac9c595b01f52777e6b9b7fc4cbffb7200315e9d9c7c26ef81a494bf132ce17` |
| 8 | `def` | [opInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opinverse--874d59b031d6c4c6d6e2bb2b.md) | 125 | `declaration-track:874d59b031d6c4c6d6e2bb2b33d9a83e213d216628ef2ecb2c306969b741ab12` |
| 9 | `def` | [opUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opunitiso--50d636adebd9530a7876f9d3.md) | 132 | `declaration-track:50d636adebd9530a7876f9d3d9af3e6cba0993baf2a303b7a678b08ab40c527a` |
| 10 | `def` | [opCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opcounitiso--3a399fe8ac55cd87c18a7b21.md) | 146 | `declaration-track:3a399fe8ac55cd87c18a7b21c6ed055bb525635657504316756e32ba385d8947` |
| 11 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opequivalence--38fc71fa6cd396c04d876343.md) | 153 | `declaration-track:38fc71fa6cd396c04d87634370a086751f5c66300054e10d64fcd281f360a0f7` |
| 12 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopfunctor--5b07f58545e206b8de757a00.md) | 166 | `declaration-track:5b07f58545e206b8de757a00f9cdcc2d73a7547bb3a4a9a556dbfa32d7d90b9f` |
| 13 | `def` | [unopInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopinverse--3328a0f9f7c61ecdff475f33.md) | 174 | `declaration-track:3328a0f9f7c61ecdff475f3368b57b2f27cd663b467ac8c78db2f572d653ebb6` |
| 14 | `def` | [unopUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopunitiso--319f90cbf6b9b00a88769382.md) | 181 | `declaration-track:319f90cbf6b9b00a887693829f453cd72a92aaf140470aedaf3c4290131bb693` |
| 15 | `def` | [unopCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopcounitiso--830d040af52bc9ddcc157805.md) | 195 | `declaration-track:830d040af52bc9ddcc1578051ad5af18c3001f58edcce08a2a8111a49e52c4ba` |
| 16 | `def` | [unopEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopequivalence--4280e7df5ec4c8581e96336d.md) | 202 | `declaration-track:4280e7df5ec4c8581e96336d9aca48922171da188efc1e717ae4e9d738e9a546` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--887d66bd5b95d82bc3fdd43a.md) | 213 | `declaration-track:887d66bd5b95d82bc3fdd43a9493f3fceec4a310fbac15ff0bbed2de30e785a0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--65726da45a70a54addf57655.md) | 217 | `declaration-track:65726da45a70a54addf57655eb20f9b1026adfebe9977ef03026c43cbb325b7c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--ef2799aa1e554ad9cd34fab7.md) | 221 | `declaration-track:ef2799aa1e554ad9cd34fab70990e3b79fd51e55b38d4ae22c5852f9dfb8759d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--45b99a84d8268d2433de3c28.md) | 226 | `declaration-track:45b99a84d8268d2433de3c28d41bdb2067ad3b2cb41fa0c85d8dc90e7b8a2e95` |
| 21 | `lemma` | [quasiIsoAt_opFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/quasiisoat-opfunctor-map-iff--55c08c8ef0a10e2cd6a02955.md) | 234 | `result-track:55c08c8ef0a10e2cd6a0295559c65911fac8b39d1cd64003e5310cea2a9488cf` |
| 22 | `lemma` | [quasiIsoAt_unopFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/quasiisoat-unopfunctor-map-iff--a591b9ffba8381c646e22f0c.md) | 242 | `result-track:a591b9ffba8381c646e22f0c3cb2508c5110d9dc707a40d9c4ee582984042c29` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--395045e94ceb83cab061ac2a.md) | 249 | `declaration-track:395045e94ceb83cab061ac2ac46da97d04c584805d48e1348fe734175306e66e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--5d5e6e82129e0e5445e2a227.md) | 255 | `declaration-track:5d5e6e82129e0e5445e2a227abc9ae94288102145a3b609986661f520d2b823f` |
| 25 | `lemma` | [quasiIso_opFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/quasiiso-opfunctor-map-iff--ccfaf30539575969e54317ea.md) | 262 | `result-track:ccfaf30539575969e54317ea1dc98c045b18b5aab9904ec28157a16b3c6f8903` |
| 26 | `lemma` | [quasiIso_unopFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/quasiiso-unopfunctor-map-iff--cb106463552a6e07651dc1c5.md) | 269 | `result-track:cb106463552a6e07651dc1c5f2f47e85829e07f38028484f96e2dcde35755128` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--4dfade6c8bc7e61448f53557.md) | 275 | `declaration-track:4dfade6c8bc7e61448f53557384632a4f0e3b82bb22e647cbdd8b9a51c253776` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/instance--b131049156869eb9f3941c02.md) | 281 | `declaration-track:b131049156869eb9f3941c02afbbb1440bf660d11118410c0ef25cae6fe2f1d3` |
| 29 | `lemma` | [ExactAt.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/exactat-op--8ad2be2d9e60de49bdc14984.md) | 287 | `result-track:8ad2be2d9e60de49bdc149846af259b7e06aaeb74ed0fb7a99dcdb505baaad72` |
| 30 | `lemma` | [ExactAt.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/exactat-unop--d37b318de3ada2dc765fcc1d.md) | 291 | `result-track:d37b318de3ada2dc765fcc1d08dba2faf6de146c3d92f49e11aa4beb33411232` |
| 31 | `lemma` | [exactAt_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/exactat-op-iff--722ad64cdd4be93b14667a40.md) | 296 | `result-track:722ad64cdd4be93b14667a40f2a338ad3b994e62b9bdc13957132e2e4dc0e9eb` |
| 32 | `lemma` | [Acyclic.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/acyclic-op--8b7e46232480eba70a51ec51.md) | 300 | `result-track:8b7e46232480eba70a51ec515937aa2b149523f6f59f73c4f0259eab4f903ca5` |
| 33 | `lemma` | [Acyclic.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/acyclic-unop--d4c0b3c4b801da906950ca2f.md) | 304 | `result-track:d4c0b3c4b801da906950ca2f570313f355b4e980591a1b2393413ae0e4ec28c3` |
| 34 | `lemma` | [acyclic_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/acyclic-op-iff--32110984a58bd6f5987b552a.md) | 309 | `result-track:32110984a58bd6f5987b552a8332133c3891175b0b87f630e404f9cf1fe92d70` |
| 35 | `def` | [homologyOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/homologyop--3bc73e014e592c3b10e15b3f.md) | 315 | `declaration-track:3bc73e014e592c3b10e15b3f933ef2b33b8a13eda02a15652a19257923f996c9` |
| 36 | `def` | [homologyUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/homologyunop--4507b14f3599b730bb5360b9.md) | 321 | `declaration-track:4507b14f3599b730bb5360b98d14e03007ee9f9a17ac84cd20504fe8805e0807` |
| 37 | `def` | [cyclesOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/cyclesopiso--834bf178171c6b3c440b9668.md) | 330 | `declaration-track:834bf178171c6b3c440b9668843a4b713bac53bfaad12d8bac2daf21316d1a20` |
| 38 | `def` | [opcyclesOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opcyclesopiso--1f95b888a3233635bd918edf.md) | 334 | `declaration-track:1f95b888a3233635bd918edf640795ca9fc7c42c2c916600f487c58400010b05` |
| 39 | `lemma` | [opcyclesOpIso_hom_toCycles_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opcyclesopiso-hom-tocycles-op--9e2ce92c79e92712ce9407c3.md) | 340 | `result-track:9e2ce92c79e92712ce9407c30db31b9398d64c0c6a6e66a25c569d4de7c3b6e2` |
| 40 | `lemma` | [fromOpcycles_op_cyclesOpIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/fromopcycles-op-cyclesopiso-inv--aabf8abdca870fa8749a2d2a.md) | 348 | `result-track:aabf8abdca870fa8749a2d2a334c33cea55fc83e3403a08c4904477ab5aa3dea` |
| 41 | `lemma` | [homologyOp_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/homologyop-hom-naturality--b1b5c56ef321f5070902ae8a.md) | 363 | `result-track:b1b5c56ef321f5070902ae8a7c4f663b54ecccb66a3debdfe9fad383b312fa52` |
| 42 | `lemma` | [opcyclesOpIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opcyclesopiso-hom-naturality--351b7e30f330106ae5aff34c.md) | 369 | `result-track:351b7e30f330106ae5aff34c3b934da59fd49822f25264366adf8caea69bf7a1` |
| 43 | `lemma` | [opcyclesOpIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opcyclesopiso-inv-naturality--be6ebd2505cda8cc9ad818b9.md) | 375 | `result-track:be6ebd2505cda8cc9ad818b9e51759cd37afb1f50fa8be5de7f9dde75074a7a0` |
| 44 | `lemma` | [cyclesOpIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/cyclesopiso-hom-naturality--fcbab5074dc7b5dc3c8faa3c.md) | 381 | `result-track:fcbab5074dc7b5dc3c8faa3ce186eb5c398114ddb694057aa5e2a3f0313e02d3` |
| 45 | `lemma` | [cyclesOpIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/cyclesopiso-inv-naturality--cb777cab2fc5b8654d8e68f5.md) | 387 | `result-track:cb777cab2fc5b8654d8e68f5afbe65c3e1032a3dfac43ec8fdf7c4ca64cefa0c` |
| 46 | `def` | [cyclesOpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/cyclesopnatiso--9edc71d55495c8af79c025f9.md) | 400 | `declaration-track:9edc71d55495c8af79c025f95cc9027b6c4b388ce8b180dac7b5a734382a5194` |
| 47 | `def` | [opcyclesOpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opcyclesopnatiso--ebc8322db2fd9cc3f0fa57dd.md) | 406 | `declaration-track:ebc8322db2fd9cc3f0fa57dd1b52f6183efd0249abd62ca36b4e48cfb20b5eb3` |
| 48 | `def` | [homologyOpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/homologyopnatiso--2ad837cb2e75422bee50b77d.md) | 412 | `declaration-track:2ad837cb2e75422bee50b77d5bdd978a79a75a21f2334b174cf0b8c04e4cceac` |
| 49 | `instance` | [opFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/opfunctor-additive--360603721a57a52251cafaac.md) | 425 | `declaration-track:360603721a57a52251cafaac3a49857076671ba5993e5f8f89c0b774d47e407f` |
| 50 | `instance` | [unopFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc35cd574b57cd42df9500ce6e8e1ed24af102b15da0382d67b46004b0504a93d.lean/declarations/unopfunctor-additive--15081b40748b8a16bad629b8.md) | 427 | `declaration-track:15081b40748b8a16bad629b83bae9e2c03ba450e74e50f8d8913437d0c3d208c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
