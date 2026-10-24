# Verification target: GRWTSK.Algebra.LinearAlgebra.LSum.Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939a121aa57be04180e918a9c39b93efd678812a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939a121aa57be04180e918a9c39b93efd678812a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_sum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/smul-sum--6a31c0541ef997ce275134fc.md) | 45 | `result-track:6a31c0541ef997ce275134fc3e66f648521db52932048e9c72401381d0a69d27` |
| 2 | `theorem` | [sum_smul_index_semilinearMap'](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/sum-smul-index-semilinearmap--e0bd0407ad08f83ddaf52db5.md) | 50 | `result-track:e0bd0407ad08f83ddaf52db515412b1062aac798920dd733659d8fdf6850ba43` |
| 3 | `theorem` | [sum_smul_index_linearMap'](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/sum-smul-index-linearmap--e2a627324c7000e712d49e2e.md) | 58 | `result-track:e2a627324c7000e712d49e2e786ca06f55b1735a30e1cdf49d82c14abb5cf966` |
| 4 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.SmulSum.Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.LinearMap.CompatibleSMul.finsupp_dom](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/root-grwtsk-algebra-linearalgebra-smulsum-variant0fd720dc967646a1bcf3b5a--a413ebe9bba2e4d2ad52734a.md) | 78 | `declaration-track:a413ebe9bba2e4d2ad52734aabbf426a1ee2347450a398a2a572e44c750f90a1` |
| 5 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.SmulSum.Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.LinearMap.CompatibleSMul.finsupp_cod](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/root-grwtsk-algebra-linearalgebra-smulsum-variant0fd720dc967646a1bcf3b5a--837e6a9f79700bb5b646a674.md) | 85 | `declaration-track:837e6a9f79700bb5b646a674f261586535b0ae4c208773597ab2b410260e3ae4` |
| 6 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lsum--1f9d6179788d9243421f93b7.md) | 101 | `declaration-track:1f9d6179788d9243421f93b76df001d8d9c0964a659fb1df11782586d534eabb` |
| 7 | `theorem` | [coe_lsum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/coe-lsum--f0b2ab39be22f93bff02f48e.md) | 121 | `result-track:f0b2ab39be22f93bff02f48edc67b603deb89f1ae9d2ad7c75a0aab33cb53f59` |
| 8 | `theorem` | [lsum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lsum-apply--572bd81fb0bcba94605eefbd.md) | 124 | `result-track:572bd81fb0bcba94605eefbdef804f1ef841a10deeb53621f15a3a3175c6a09c` |
| 9 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lsum-single--e6d05bfbc269c572734938ed.md) | 127 | `result-track:e6d05bfbc269c572734938ed1465c4d65b2bf04174587f791994bdf9bbe829a5` |
| 10 | `theorem` | [lsum_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lsum-comp-lsingle--507397f8435f354304076ed5.md) | 131 | `result-track:507397f8435f354304076ed586c921a36152a201aa5986bab2e2edceff49822f` |
| 11 | `theorem` | [lsum_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lsum-symm-apply--d78b885cba1faf01420d52a1.md) | 134 | `result-track:d78b885cba1faf01420d52a1fce3137b8bc45f37f85c33af3fbe9be0bd9a6691` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lift--9d549ddf455a83bcb1833298.md) | 147 | `declaration-track:9d549ddf455a83bcb1833298701c8dcd84ee51e4a9ea44bd6da8a6e7c1c6bd51` |
| 13 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lift-symm-apply--2615cdabd9e990027eda6b87.md) | 152 | `result-track:2615cdabd9e990027eda6b87bda839c1848a505fc3a4d2c16376829c7d6b4472` |
| 14 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lift-apply--60486f275fed1e123375375c.md) | 156 | `result-track:60486f275fed1e123375375cadaab47466708f96c4e046d576c515c6ca879363` |
| 15 | `def` | [llift](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/llift--6c2b2af32c28cb840fe31af6.md) | 162 | `declaration-track:6c2b2af32c28cb840fe31af632fe591026f22856589fe26abf2fbf58df451fb9` |
| 16 | `theorem` | [llift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/llift-apply--e9ced28c0bd66acf520ca7a1.md) | 172 | `result-track:e9ced28c0bd66acf520ca7a1689a3a8d2cdbed66a08d33af914d456eae93558e` |
| 17 | `theorem` | [llift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/llift-symm-apply--1c54b24341bd9c2594a8c327.md) | 176 | `result-track:1c54b24341bd9c2594a8c327c42918a1eb054778a613b15124a6e6ea884e67d7` |
| 18 | `def` | [domLCongr](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/domlcongr--60761363b36b00214edfc924.md) | 186 | `declaration-track:60761363b36b00214edfc92457a7689affb284adeaca0cbb709fafa747458f17` |
| 19 | `theorem` | [domLCongr_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/domlcongr-apply--47c27743ff1aea232cef6e42.md) | 191 | `result-track:47c27743ff1aea232cef6e42c1ce834b4d030086898016cbb448511191d89a17` |
| 20 | `theorem` | [domLCongr_refl](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/domlcongr-refl--adc2f71e9b7352ddc69c7e97.md) | 196 | `result-track:adc2f71e9b7352ddc69c7e975828e5b629c6cd21419054686de0484c1f5b9266` |
| 21 | `theorem` | [domLCongr_trans](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/domlcongr-trans--3929b23b39198db165ff28f7.md) | 199 | `result-track:3929b23b39198db165ff28f7421baaebd2b7a8ba7f376b6cc6907ccb92080222` |
| 22 | `theorem` | [domLCongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/domlcongr-symm--c24a7991599a654f02187473.md) | 205 | `result-track:c24a7991599a654f02187473d9a33212c76ac368ae7e9c6d3849435b7f001bfc` |
| 23 | `theorem` | [domLCongr_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/domlcongr-single--c4fbe62d140bb9b50400416d.md) | 209 | `result-track:c4fbe62d140bb9b50400416d36a0e8a24e5d73cc2786e459496be102b99d92e3` |
| 24 | `def` | [lcongr](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lcongr--055b6adbb81456e89a2e23d1.md) | 219 | `declaration-track:055b6adbb81456e89a2e23d1c5e51849b5ccd4c442afb6dbaff2039153e4194c` |
| 25 | `theorem` | [lcongr_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lcongr-single--e45d3302ed464b2b1a6538c3.md) | 223 | `result-track:e45d3302ed464b2b1a6538c360827963a85eb6596fb6ce23d0146b944097a539` |
| 26 | `theorem` | [lcongr_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lcongr-apply-apply--1bdec4c0c4366a2af30dde33.md) | 227 | `result-track:1bdec4c0c4366a2af30dde33604d748e7a7a07e8b7797c778cf3300d5ea5823f` |
| 27 | `theorem` | [lcongr_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lcongr-symm-single--22f95c68174a5b85946f2304.md) | 231 | `result-track:22f95c68174a5b85946f2304c15de30a6d43859c24b5752912b006e8967ccfea` |
| 28 | `theorem` | [lcongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/lcongr-symm--48fed8e8dc871b13557ad24c.md) | 237 | `result-track:48fed8e8dc871b13557ad24cdebada95434fecaede76dc3f9a87bb471504b8e3` |
| 29 | `theorem` | [Submodule.finsuppSum_mem](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/submodule-finsuppsum-mem--02345e86d790b60a6bbdd0c1.md) | 255 | `result-track:02345e86d790b60a6bbdd0c1d4cdb6f762dfe20272db47eb2ca71911ceccabc1` |
| 30 | `def` | [splittingOfFinsuppSurjective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/splittingoffinsuppsurjective--3a29c403878bbf1110a819c5.md) | 271 | `declaration-track:3a29c403878bbf1110a819c50331bdfc4456b6b219f69f989e34770d281a8b02` |
| 31 | `theorem` | [splittingOfFinsuppSurjective_splits](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/splittingoffinsuppsurjective-splits--f747b84fec87bccb5bc02475.md) | 274 | `result-track:f747b84fec87bccb5bc02475e6abd3a88db58ec42cf92c17314f84d38fcb0b9b` |
| 32 | `theorem` | [leftInverse_splittingOfFinsuppSurjective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/leftinverse-splittingoffinsuppsurjective--504e1b60329c82b83bdeab43.md) | 283 | `result-track:504e1b60329c82b83bdeab43a8d54702b6c54cf7b2ddec95af3ada3112dd2c4c` |
| 33 | `theorem` | [splittingOfFinsuppSurjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/splittingoffinsuppsurjective-injective--654c811a76d34a3bc4678ea6.md) | 287 | `result-track:654c811a76d34a3bc4678ea627695d229e1dc0fccf21433a9b27c9f75fef5ed0` |
| 34 | `theorem` | [coe_finsupp_sum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/coe-finsupp-sum--385ca6e890de17e9553ff064.md) | 304 | `result-track:385ca6e890de17e9553ff064381f73ed5c1845f2a3026def0a0a87d4d30756e5` |
| 35 | `theorem` | [finsupp_sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/finsupp-sum-apply--a2143748bb193946c394ae08.md) | 308 | `result-track:a2143748bb193946c394ae08ca9894b0215aa230338f009358a656062057cbb5` |
| 36 | `def` | [mulLeftMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulleftmap--e9bd693ca1f2c849e3678c5c.md) | 328 | `declaration-track:e9bd693ca1f2c849e3678c5cea27f635b636aa8e7921d8003db0d8c100bb2e2c` |
| 37 | `theorem` | [mulLeftMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulleftmap-apply--f60bf6f8c1c9df110333b4ba.md) | 331 | `result-track:f60bf6f8c1c9df110333b4bad1571d9c2a2e53f83bcdf0aa3e747b33e677950e` |
| 38 | `theorem` | [mulLeftMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulleftmap-apply-single--6d28c9e835fa746138c488b2.md) | 335 | `result-track:6d28c9e835fa746138c488b237a53753d0e058ebd86ae02e9d6a30d8dcf76b88` |
| 39 | `def` | [mulRightMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulrightmap--5bee52e47e5fdbd1389464ff.md) | 346 | `declaration-track:5bee52e47e5fdbd1389464ffcc765f2a85f30b3190342104a91d641353bec015` |
| 40 | `theorem` | [mulRightMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulrightmap-apply--dcddeb7d312642edb14e8dc5.md) | 349 | `result-track:dcddeb7d312642edb14e8dc54b13f981e17f3f5f649bf1e36c81ae48b582fe66` |
| 41 | `theorem` | [mulRightMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulrightmap-apply-single--d3ef80f251a72a387879746c.md) | 353 | `result-track:d3ef80f251a72a387879746c8e109c7aa7f6a831e80dc412abb695dd9fbc2995` |
| 42 | `theorem` | [mulLeftMap_eq_mulRightMap_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulleftmap-eq-mulrightmap-of-commute--fc84faab5b3c1788f3509be6.md) | 357 | `result-track:fc84faab5b3c1788f3509be6e55c7a7cdb4fc8df096bf919f384e07754b33a09` |
| 43 | `theorem` | [mulLeftMap_eq_mulRightMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/declarations/mulleftmap-eq-mulrightmap--05b8fe422dbac944959ecb1d.md) | 362 | `result-track:05b8fe422dbac944959ecb1d4b7312f761b1b52ec05783dd683176d48094b3cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
