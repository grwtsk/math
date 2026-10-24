# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PolynomialGaloisGroup.Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8020e5fb205aa6a5cc570b04c3f59570ebac5dd",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8020e5fb205aa6a5cc570b04c3f59570ebac5dd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gal](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/gal--a45905473a952ae93414b5a8.md) | 55 | `declaration-track:a45905473a952ae93414b5a8448ed6c1cfcc35cb51c88286773cf7ebb618d8d6` |
| 2 | `instance` | [instGroup](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/instgroup--13176b17cd72309837a59ac7.md) | 63 | `declaration-track:13176b17cd72309837a59ac7f4d20db725592152bb658dd12205973f3d658b84` |
| 3 | `instance` | [instFintype](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/instfintype--3bec36a81b3c596847958de4.md) | 65 | `declaration-track:3bec36a81b3c596847958de441d8cc4b035161da1cc2992f0a6673bbef5d0286` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/instance--3f2d8b41983730dce4b55118.md) | 68 | `declaration-track:3f2d8b41983730dce4b551182b2781b2f57c3508d745403eb6c9e5becfc8de3a` |
| 5 | `instance` | [applyMulSemiringAction](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/applymulsemiringaction--37440a11afcad8c1aec0d172.md) | 72 | `declaration-track:37440a11afcad8c1aec0d17260658570f01cf3bda1bf33607d50d13975e643b2` |
| 6 | `theorem` | [ext](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/ext--1ddb262d08f347897de86d9e.md) | 77 | `result-track:1ddb262d08f347897de86d9ea0adb37157b6f1c2829f4fe0e192e51f8ea160d7` |
| 7 | `def` | [uniqueGalOfSplits](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalofsplits--a0ea6827762c3fda9e711243.md) | 86 | `declaration-track:a0ea6827762c3fda9e711243f74949b66af09d91a9666b9b887042f5631ed04c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/instance--9f2406eea38d8cfc496e59e8.md) | 96 | `declaration-track:9f2406eea38d8cfc496e59e8e205423fd7a6730ddd2fda097e53717c5d166081` |
| 9 | `instance` | [uniqueGalZero](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalzero--a67f2b2ac85ec2440897069d.md) | 99 | `declaration-track:a67f2b2ac85ec2440897069d429e6feb57058b84b08457abe001a06c5344af5c` |
| 10 | `instance` | [uniqueGalOne](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalone--da3dff353cde44233415235b.md) | 103 | `declaration-track:da3dff353cde44233415235b4deae95f8fc6e2caa3f64afbcbb7cc880f71aed7` |
| 11 | `instance` | [uniqueGalC](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalc--8a45146e5f275a7389a3512a.md) | 107 | `declaration-track:8a45146e5f275a7389a3512aa956801553f7ed6ce91948d728ae63b6f079c9c7` |
| 12 | `instance` | [uniqueGalX](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalx--e6b386956808285130781878.md) | 112 | `declaration-track:e6b3869568082851307818786a342491bab0eb50ec4730c9e1ab6f93be77eab4` |
| 13 | `instance` | [uniqueGalXSubC](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalxsubc--708cf3bd4183117a8a1a3b4a.md) | 117 | `declaration-track:708cf3bd4183117a8a1a3b4a8cc817c43c2170949970bc20f15f6216607e9db2` |
| 14 | `instance` | [uniqueGalXPow](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/uniquegalxpow--690e0176bf777bd9308f4ec7.md) | 122 | `declaration-track:690e0176bf777bd9308f4ec7e6d30fbfd7651025069d0040df7b25e0fad2f61a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/instance--13305f430e5829a0ad5f4853.md) | 127 | `declaration-track:13305f430e5829a0ad5f4853708a7c3202655f0d9fb4889ed676bcb0e07102ca` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/instance--f89cf2d3a8ba09b6bb3c7583.md) | 130 | `declaration-track:f89cf2d3a8ba09b6bb3c7583e664618c57212f0ca5aab92ddf18430f099a7090` |
| 17 | `def` | [restrict](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrict--8faa20f0fc1712c651d19359.md) | 141 | `declaration-track:8faa20f0fc1712c651d193594b22cfea6e80c107384828cdb0dc1cee04ff48e2` |
| 18 | `theorem` | [restrict_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrict-surjective--1c7176e98ae0f758ac0ea5dc.md) | 145 | `result-track:1c7176e98ae0f758ac0ea5dc14cb8228410ebba7c4645cf0e757ec4543b81781` |
| 19 | `def` | [mapRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/maproots--f6e88c87ae694417c0b12318.md) | 154 | `declaration-track:f6e88c87ae694417c0b12318c0d892420e5b7536fb047d5df880a0b8479a8473` |
| 20 | `theorem` | [mapRoots_bijective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/maproots-bijective--82b246cd754cca1592d806a1.md) | 158 | `result-track:82b246cd754cca1592d806a1467424d4fc75ef788a552ffa8e48de97648e8d61` |
| 21 | `def` | [rootsEquivRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/rootsequivroots--0dfcec4b9cd8e06461fa5e53.md) | 175 | `declaration-track:0dfcec4b9cd8e06461fa5e536ea626489575c5415702a09c037e4253d9b0563c` |
| 22 | `instance` | [galActionAux](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galactionaux--3c4f618a5bdc8579908b4e07.md) | 179 | `declaration-track:3c4f618a5bdc8579908b4e07abbf84ece309dc337e73c8d4a16b993318dfe133` |
| 23 | `instance` | [smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/smul--1414190b66b41b9caa238f9a.md) | 186 | `declaration-track:1414190b66b41b9caa238f9a84d429a7566cba59780bcfaf55e702458959c33a` |
| 24 | `theorem` | [smul_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/smul-def--ad266ce44e48adccdb59e340.md) | 190 | `result-track:ad266ce44e48adccdb59e3403887679b7a4325eda50c2fc2dc01776de41e348d` |
| 25 | `instance` | [galAction](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galaction--b404a4e07263677fa538f19b.md) | 195 | `declaration-track:b404a4e07263677fa538f19b63da240da87f603518e3c2343b7a0ba00b7b2cd7` |
| 26 | `theorem` | [restrict_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrict-smul--e312453f0ec52a6a9f1029a1.md) | 205 | `result-track:e312453f0ec52a6a9f1029a1e4366993728f64f5e772fcde5c68a1311d54b936` |
| 27 | `def` | [galActionHom](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galactionhom--15961a82b2565b187a0f6b64.md) | 217 | `declaration-track:15961a82b2565b187a0f6b64335fe08f93f1c21faee1593d29f57ac8d5e634ef` |
| 28 | `theorem` | [galActionHom_restrict](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galactionhom-restrict--3f6d5c4d64a1a30f48b08a7f.md) | 221 | `result-track:3f6d5c4d64a1a30f48b08a7f810590df5557786a07eadd337bfb681061216f08` |
| 29 | `theorem` | [galActionHom_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galactionhom-injective--848305c2485070ca676c376a.md) | 227 | `result-track:848305c2485070ca676c376a5c7af10aaf4952217bc934cee21a8956a541407e` |
| 30 | `def` | [restrictDvd](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictdvd--b6f2d4ee6ada9ae1e766deb5.md) | 246 | `declaration-track:b6f2d4ee6ada9ae1e766deb52de31e47195e6b4fbe7e64cf68fb529494f71289` |
| 31 | `theorem` | [restrictDvd_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictdvd-def--6cc9e0774285ad8533794578.md) | 254 | `result-track:6cc9e0774285ad853379457876bdcf1ea1bf449ecb6416eed1f09d8aa728e13c` |
| 32 | `theorem` | [restrictDvd_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictdvd-surjective--59b401da33fa65c6c8e948c6.md) | 266 | `result-track:59b401da33fa65c6c8e948c6275b6279f120356a99d15f5a92148fc09e4cee36` |
| 33 | `def` | [restrictProd](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictprod--081f780c521049393b61f8be.md) | 278 | `declaration-track:081f780c521049393b61f8be9294eb692eb5764b3ee931f7157349f101b2c195` |
| 34 | `theorem` | [restrictProd_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictprod-injective--2334db1d733200fb96c39acd.md) | 283 | `result-track:2334db1d733200fb96c39acdd123eccb7daf905b4513a34a6aaba46d35299cdc` |
| 35 | `theorem` | [mul_splits_in_splittingField_of_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/mul-splits-in-splittingfield-of-mul--44ab78fc0a0686348a8c6617.md) | 317 | `result-track:44ab78fc0a0686348a8c6617fb9af8cc83cac527c7173cba3a176fcaebbb9de2` |
| 36 | `theorem` | [splits_in_splittingField_of_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/splits-in-splittingfield-of-comp--8a685e840c1ed36b4c7509a2.md) | 336 | `result-track:8a685e840c1ed36b4c7509a2100b5120668a33b78b470c1d8de26ad3e5fe271c` |
| 37 | `def` | [restrictComp](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictcomp--198601cbf845d6c4ef459e68.md) | 382 | `declaration-track:198601cbf845d6c4ef459e681c2b2e1c0c7ed5cbcc81ccc2a4e85dbec2af8ccb` |
| 38 | `theorem` | [restrictComp_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/restrictcomp-surjective--214597ae27432871da7709d6.md) | 388 | `result-track:214597ae27432871da7709d6e9906b05d4c1a95c4b0e488d4c740b96144e4d2c` |
| 39 | `theorem` | [card_of_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/card-of-separable--135cd0867c442d7f5fc42f92.md) | 402 | `result-track:135cd0867c442d7f5fc42f92626b8e7d7219a1e9f7269b5eb30b55813d785790` |
| 40 | `theorem` | [prime_degree_dvd_card](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/prime-degree-dvd-card--1ea95ce6fc14c34b5b87ce24.md) | 407 | `result-track:1ea95ce6fc14c34b5b87ce24993298ec6f6758367e39b5ea53e1ed8d8fafecf8` |
| 41 | `theorem` | [splits_ℚ_ℂ](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/splits--07e318c1212f1b2248314be2.md) | 430 | `result-track:07e318c1212f1b2248314be2a0dac1a29e7834e1059dcdbf26b3c37487b64c75` |
| 42 | `theorem` | [card_complex_roots_eq_card_real_add_card_not_gal_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/card-complex-roots-eq-card-real-add-card-not-gal-inv--23f22b2193673206bbaa62ce.md) | 438 | `result-track:23f22b2193673206bbaa62ce38becee9ca1ac8cafca802f64c4cbc71382b3e89` |
| 43 | `theorem` | [galActionHom_bijective_of_prime_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galactionhom-bijective-of-prime-degree--52f904bad6dae3ea356c57bc.md) | 492 | `result-track:52f904bad6dae3ea356c57bcd123a4e9311b152b1e3f4c785033ce86faed0a6e` |
| 44 | `theorem` | [galActionHom_bijective_of_prime_degree'](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variant024207fd34d527f29fdb7298779f832b2c0391442c7c6219c7824103564d51f8.lean/declarations/galactionhom-bijective-of-prime-degree--75f39dcc4e2b38316e22475f.md) | 522 | `result-track:75f39dcc4e2b38316e22475f40092de67554a4bece3f3d5de956e52e1242bf82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
