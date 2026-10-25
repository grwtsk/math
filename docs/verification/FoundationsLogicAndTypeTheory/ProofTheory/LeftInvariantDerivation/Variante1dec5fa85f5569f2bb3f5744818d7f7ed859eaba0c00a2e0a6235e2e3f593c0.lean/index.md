# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7864f8ac39c4cf2a79325950c88238521a22f142",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7864f8ac39c4cf2a79325950c88238521a22f142`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Lie` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.DerivationBundle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInvariantDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/leftinvariantderivation--6ed6aa0977a6142048457919.md) | 57 | `declaration-track:6ed6aa0977a61420484579191b6f329cfcfbe9d6e80ffa019e5a7bc2adf6bfbb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--2c997eb7a3af9da01d4e3ad9.md) | 66 | `declaration-track:2c997eb7a3af9da01d4e3ad98a135f2cbf5fd68b8fa2e95758df34cc42a6a20f` |
| 3 | `theorem` | [toDerivation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/toderivation-injective--fba7fafc74d3cbd9cc28ee39.md) | 71 | `result-track:fba7fafc74d3cbd9cc28ee39dea0598c21f6a1f651d9e5482e4d9b3bfd8b8fd4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--2a3f7475aa7d25c8adbec276.md) | 75 | `declaration-track:2a3f7475aa7d25c8adbec276420c87a5ad4d75e22b6dfb575664849de22485ce` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--4ece8748a603a734a74aedf9.md) | 79 | `declaration-track:4ece8748a603a734a74aedf997800f146f1e4c8e3fc5a90b99a357bd0b07c14e` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/tofun-eq-coe--5cbfdad2bcba50e7c2964152.md) | 85 | `result-track:5cbfdad2bcba50e7c2964152ff5d1e67a28ee5a77352eb5a5210e0151e222821` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-injective--1983b936346012269c22a79c.md) | 90 | `result-track:1983b936346012269c22a79cb834e9beb3fca3f74bc1f0bef40e341ca4449ee0` |
| 8 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/ext--902ac853d7c33e5cd7902594.md) | 95 | `result-track:902ac853d7c33e5cd7902594bfdbba53a555a7088c8d91670269598a6f081d6b` |
| 9 | `theorem` | [coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-derivation--5665080b3c8463615a9ecdd2.md) | 99 | `result-track:5665080b3c8463615a9ecdd21d731600c7c638bd1d05ec30b0eac930a9930d96` |
| 10 | `theorem` | [left_invariant'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/left-invariant--5eb1ec599a04e390bcf12a36.md) | 104 | `result-track:5eb1ec599a04e390bcf12a369b6c93d89f4a7de02a716100963a7722fa4685a0` |
| 11 | `theorem` | [map_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/map-add--8cc5db4de96c0d5802a28267.md) | 108 | `result-track:8cc5db4de96c0d5802a2826702a1969419e7c2fb3475cdd00233f32ee51b9096` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/map-zero--fa56a2486a568ef66952d987.md) | 110 | `result-track:fa56a2486a568ef66952d987c4816d101e8c72635bf270919db5f1ecafb829cb` |
| 13 | `theorem` | [map_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/map-neg--e3d4836b1075b367a3c45fb1.md) | 112 | `result-track:e3d4836b1075b367a3c45fb1868549239ef841851e35815f1c8579c55e6dd36d` |
| 14 | `theorem` | [map_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/map-sub--05e491715c75408898d4323e.md) | 114 | `result-track:05e491715c75408898d4323e08a39bd43b171695651a173c9386f96850d773a8` |
| 15 | `theorem` | [map_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/map-smul--ece57da35d7b54c065a59810.md) | 116 | `result-track:ece57da35d7b54c065a598107710d2b2ddae8148029664ee35e6d48efec5cdfe` |
| 16 | `theorem` | [leibniz](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/leibniz--c382dda32d5271a39776cb3b.md) | 119 | `result-track:c382dda32d5271a39776cb3bdb922756b114307164ce0b02879b5a4b0c3e7eb0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--52df6eae686c0519469634e7.md) | 122 | `declaration-track:52df6eae686c0519469634e7fa9662c6b89e7ebeae198afb884b5c1916d3ebba` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--e99800efd46511ac9fef5d75.md) | 125 | `declaration-track:e99800efd46511ac9fef5d7516ef3c38e26ac3890d45e6c8e0fa2e54be6fadce` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--48b808292e65f1ce931200d6.md) | 128 | `declaration-track:48b808292e65f1ce931200d6c0a63c41a2a90e7adc192609393243a8bd557cf4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--9fc21a30b0f1b9b253a68929.md) | 133 | `declaration-track:9fc21a30b0f1b9b253a68929c966228c2508b187bc95d55fbfffbce7a9df7f1e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--c741448ca5b52ebbc8c23635.md) | 136 | `declaration-track:c741448ca5b52ebbc8c236351ee606be791b67753178e9ebd14dc6da1a072a77` |
| 22 | `theorem` | [coe_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-add--98996208802ffb97ba79d8fb.md) | 140 | `result-track:98996208802ffb97ba79d8fb9e8492935cd2f5e1fdee9e4968daec91e77e907d` |
| 23 | `theorem` | [coe_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-zero--e4e89ae228e2bf207eb65758.md) | 144 | `result-track:e4e89ae228e2bf207eb65758dfdcf53f063d5f0edfb1d972420f18fb83d46f93` |
| 24 | `theorem` | [coe_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-neg--98184fb585646a759d253101.md) | 148 | `result-track:98184fb585646a759d253101a8e5e417597a19f4a8030ed6581dc63e480e36c3` |
| 25 | `theorem` | [coe_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-sub--f5f1bcf9ea071a06c4f30e00.md) | 152 | `result-track:f5f1bcf9ea071a06c4f30e005c8c0a10b14f9f8a20a1e311f41b888889b732b7` |
| 26 | `theorem` | [lift_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/lift-add--46edfd57706210d110c2b841.md) | 156 | `result-track:46edfd57706210d110c2b8411474341f0cf6e8d40672a7e72ae3eb3db038dbde` |
| 27 | `theorem` | [lift_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/lift-zero--7ba814707bc33b2c42dae488.md) | 160 | `result-track:7ba814707bc33b2c42dae4885d3a8e88d802b39409f95addff5ee57d9e9421bb` |
| 28 | `instance` | [hasNatScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/hasnatscalar--a4cfda9c80cef941b2f2dba3.md) | 164 | `declaration-track:a4cfda9c80cef941b2f2dba307872776173b86e0bc5d5ff663302d48dc110069` |
| 29 | `instance` | [hasIntScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/hasintscalar--6cb05d6e5514507898277391.md) | 167 | `declaration-track:6cb05d6e5514507898277391d869a18a6c79b3a904d4d799eb63d6bdf72703a5` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--56b25f9e56666268c762af10.md) | 170 | `declaration-track:56b25f9e56666268c762af101d3df4f0c05cf7da43afe37efe446e8e9dabdd00` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--6a9e1716f3540d79285db60a.md) | 173 | `declaration-track:6a9e1716f3540d79285db60a987b336599599828ba3c652fecccc3681b01854b` |
| 32 | `theorem` | [coe_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coe-smul--d6572633a4749c82d30e2b45.md) | 179 | `result-track:d6572633a4749c82d30e2b45b1d8814c6647520bcf3ec337c00eabaeb792c5af` |
| 33 | `theorem` | [lift_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/lift-smul--89745180a2f4400ab4816016.md) | 183 | `result-track:89745180a2f4400ab48160160564a85c93fadba11d9c41f76b343c4deaca3a6f` |
| 34 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/coefnaddmonoidhom--24857e41b2cbdba7cd2772c2.md) | 190 | `declaration-track:24857e41b2cbdba7cd2772c2c9dc059cdb675a7987deffc3a92fb74cdfec6204` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--0534cfa7e1b9410af498b556.md) | 195 | `declaration-track:0534cfa7e1b9410af498b5561277c23c61164e02bc4544f71376c996701bdcc6` |
| 36 | `def` | [evalAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/evalat--83aa4f7883347756733fc428.md) | 200 | `declaration-track:83aa4f7883347756733fc428344f3c69952d9925efe22b97afc7927bff689850` |
| 37 | `theorem` | [evalAt_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/evalat-apply--022d769ddaa3eb8d7f75545b.md) | 205 | `result-track:022d769ddaa3eb8d7f75545b7ab6c41f6fc657f050096982d699997ad65a529d` |
| 38 | `theorem` | [evalAt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/evalat-coe--bef878b5e1b6d6420add37ad.md) | 209 | `result-track:bef878b5e1b6d6420add37ad0d9deb9cef95a4890d74e1c5401e034e4d63e978` |
| 39 | `theorem` | [left_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/left-invariant--cd7a551816be1a8f9238b3a1.md) | 212 | `result-track:cd7a551816be1a8f9238b3a1bec1ad44256c0e46ace2068801269fc8d195a50f` |
| 40 | `theorem` | [evalAt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/evalat-mul--9fbee4f96e0b5906d83432f5.md) | 215 | `result-track:9fbee4f96e0b5906d83432f5be68e7f4beb20dfa9df514951c77925a13fdd62c` |
| 41 | `theorem` | [comp_L](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/comp-l--e73b8fd75c30d68d942b38e5.md) | 224 | `result-track:e73b8fd75c30d68d942b38e564651cb4fee4248a0b5ff5ab0b94cdbd99638fbc` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--f51fdbb12c103c4651772037.md) | 229 | `declaration-track:f51fdbb12c103c4651772037ef05f2e1d1142faa6019d894179ba532e3a98b52` |
| 43 | `theorem` | [commutator_coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/commutator-coe-derivation--27a6259d5745c748e18b1bd2.md) | 243 | `result-track:27a6259d5745c748e18b1bd2204cbfc702338546973079c78b967b42bfe3bff5` |
| 44 | `theorem` | [commutator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/commutator-apply--bbab9637970b5ed009d46a0d.md) | 249 | `result-track:bbab9637970b5ed009d46a0d2613dba93f0fcf47a888cba88c2f29d376d4d9e4` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--13c7d713f37c524cd8b032c6.md) | 252 | `declaration-track:13c7d713f37c524cd8b032c665719383034235371112d5049f32fdffcc0f3364` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variante1dec5fa85f5569f2bb3f5744818d7f7ed859eaba0c00a2e0a6235e2e3f593c0.lean/declarations/instance--024168d23b228862854af3c7.md) | 267 | `declaration-track:024168d23b228862854af3c7259baabc1c2147ac3d2550f0cd431711c377f1e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
