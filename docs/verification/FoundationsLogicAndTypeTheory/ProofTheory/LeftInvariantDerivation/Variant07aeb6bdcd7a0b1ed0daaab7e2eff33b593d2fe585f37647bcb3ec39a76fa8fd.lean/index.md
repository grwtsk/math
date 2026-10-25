# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeftInvariantDerivation.Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00c54bbc86a64c76002bf0bb126993c083ed3dc",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00c54bbc86a64c76002bf0bb126993c083ed3dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Lie` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.DerivationBundle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInvariantDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/leftinvariantderivation--32d888daeb3adcf39d940ca9.md) | 43 | `declaration-track:32d888daeb3adcf39d940ca933eaef1f03d50c6f4b39c85642d4a9f2e1c944a5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--a25e3f0f8336a5e7f7fb6a3a.md) | 53 | `declaration-track:a25e3f0f8336a5e7f7fb6a3a39453763c74787a24f616d47cfac2262efce4622` |
| 3 | `theorem` | [toDerivation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/toderivation-injective--f58f4247ce147e48ea64a31f.md) | 58 | `result-track:f58f4247ce147e48ea64a31fe21e24b6a6d427179c812fb0082c922199e75bde` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--0078c0e92f9b23c94ff0473b.md) | 63 | `declaration-track:0078c0e92f9b23c94ff0473b8eb5a09b62dbf107be5de5c36d1442808fb0e174` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--2cf8752e6cf30005459945ea.md) | 69 | `declaration-track:2cf8752e6cf30005459945eab30fd16311097cc69508fd9c90cdf4eab0b0c02b` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/tofun-eq-coe--517f7303d0a0b5eac1254b20.md) | 75 | `result-track:517f7303d0a0b5eac1254b20b4c60ca0ef5053b43b920798c36eac145abae89f` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-injective--106859d2461a5f9afd149cf5.md) | 84 | `result-track:106859d2461a5f9afd149cf581017be46336c0fbf32c480c00e301f5176f446a` |
| 8 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/ext--9553d9e395bc1a085cf53462.md) | 90 | `result-track:9553d9e395bc1a085cf53462dcbdddce02f702d753557c11663e4102fbfd81d1` |
| 9 | `theorem` | [coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-derivation--4211707c5a6d9a4951eef778.md) | 95 | `result-track:4211707c5a6d9a4951eef77882074a8f8d8d253c5e7748fa67dc740e2edf550e` |
| 10 | `theorem` | [left_invariant'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/left-invariant--16170f68de7521d7f1eff663.md) | 101 | `result-track:16170f68de7521d7f1eff6636cc5dabd1767ae1a7772ebfb1721548bdd99eec6` |
| 11 | `theorem` | [map_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/map-add--b76ac3d73e8ea015261542bd.md) | 107 | `result-track:b76ac3d73e8ea015261542bde9add97f71c4336e72f57e35f5daea4e51af4a83` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/map-zero--18e927db45d183b260c6a6ba.md) | 111 | `result-track:18e927db45d183b260c6a6ba0b912781ea6c10c29d7a9ba507a86c246b453eeb` |
| 13 | `theorem` | [map_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/map-neg--04c6c9f8710f10c23b95523c.md) | 115 | `result-track:04c6c9f8710f10c23b95523c890d9e2cc81f35fd571f5c0a57f38377546a208b` |
| 14 | `theorem` | [map_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/map-sub--6eb40427c3e4689475d7d504.md) | 119 | `result-track:6eb40427c3e4689475d7d504913372851ebf2b6e387ee98e3c2f238769f3d0f4` |
| 15 | `theorem` | [map_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/map-smul--2e66b5ad71a4a24d2e481149.md) | 123 | `result-track:2e66b5ad71a4a24d2e481149128518aec712273b27f893451e536bdc700bcd02` |
| 16 | `theorem` | [leibniz](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/leibniz--c51ebb4b29d0381a32dc5dab.md) | 127 | `result-track:c51ebb4b29d0381a32dc5dabe0453a62161d1795863b3a847ddc667daaceeeed` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--b36cfce9f57fa72585681562.md) | 131 | `declaration-track:b36cfce9f57fa7258568156249de35f205b7dbc388c342fdd1363d7f001e15a8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--879232d69b04260391689d2e.md) | 134 | `declaration-track:879232d69b04260391689d2e44437d7d887eae0e46a954557342ae29bf9c4c40` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--ce2d38ddfb6c2ea1e57860a6.md) | 137 | `declaration-track:ce2d38ddfb6c2ea1e57860a618f7a60f687e015d0da61294cbf264c89627254d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--82ccc76aca1c89cd4ad07e14.md) | 143 | `declaration-track:82ccc76aca1c89cd4ad07e14a9f9eac5f65e45c5d56dddeeb3d64977f777bf5b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--d9d7abf191fe1a6b9ff3129c.md) | 151 | `declaration-track:d9d7abf191fe1a6b9ff3129c6bb0d255244983854fdeea25c18b9f8ea1b19c7a` |
| 22 | `theorem` | [coe_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-add--d36599b3614c1e9b79af8a93.md) | 159 | `result-track:d36599b3614c1e9b79af8a93131edf0f53e8aeec2962cb6b6d1a3b16ef3074a2` |
| 23 | `theorem` | [coe_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-zero--979e3bc6488b3a09a3558626.md) | 164 | `result-track:979e3bc6488b3a09a35586261560862a9bf89bf93fec16c53b1d3aaa67c96f67` |
| 24 | `theorem` | [coe_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-neg--c71c70cd71c9e8cbf599d11c.md) | 169 | `result-track:c71c70cd71c9e8cbf599d11c062fc91ef2126cc8f800b54b3080d94e964ac6a8` |
| 25 | `theorem` | [coe_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-sub--93794dd40a11ee3b2606cd7a.md) | 174 | `result-track:93794dd40a11ee3b2606cd7ac2a71dbde49818acc428bc97da1a604646fcd89d` |
| 26 | `theorem` | [lift_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/lift-add--184612a014c25424ea4c554b.md) | 179 | `result-track:184612a014c25424ea4c554bf31586b37e2b94a96c1ba989af4a1c519f64db57` |
| 27 | `theorem` | [lift_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/lift-zero--022f8f81478c7859df4c56ff.md) | 184 | `result-track:022f8f81478c7859df4c56ff99ec1c62c557669838623caab558795e58921c5c` |
| 28 | `instance` | [hasNatScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/hasnatscalar--5e1fdf89648d8dd63a645ee5.md) | 189 | `declaration-track:5e1fdf89648d8dd63a645ee52ba232b9cf00e414a5129712f5c4abd3e59b472c` |
| 29 | `instance` | [hasIntScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/hasintscalar--4e8be26b857247ac3065ae38.md) | 193 | `declaration-track:4e8be26b857247ac3065ae3862614f6e4f750872361245ccd8ac3fac503fb5b3` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--4b276200ba3d343529c77742.md) | 197 | `declaration-track:4b276200ba3d343529c77742a3414b67604541302fd8028d58fd893b73038984` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--7de20527360bc0124f6fca77.md) | 200 | `declaration-track:7de20527360bc0124f6fca77682bb8908dd7e6bac11add1d73dd42d48dde51e6` |
| 32 | `theorem` | [coe_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coe-smul--eb6435b01b8b89fb10f3f70a.md) | 206 | `result-track:eb6435b01b8b89fb10f3f70aa5e173bb2bc2b8f71acd0e5a1c645409969c977e` |
| 33 | `theorem` | [lift_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/lift-smul--42140808c7f4177a0d0a7dd7.md) | 211 | `result-track:42140808c7f4177a0d0a7dd7604eb883fd7d13b7a4a243bd6eec6b08320332c3` |
| 34 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/coefnaddmonoidhom--dc01e96cf2760a855631b425.md) | 219 | `declaration-track:dc01e96cf2760a855631b425cd175150f3bb0834cefdddc2cda785462e8baed7` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--1ccbd2cce19b0c9c7041d53d.md) | 225 | `declaration-track:1ccbd2cce19b0c9c7041d53d01dad0af5a4d668cfed434424f9404fe2704b6d7` |
| 36 | `def` | [evalAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/evalat--78e31126851c64c7b67185f7.md) | 230 | `declaration-track:78e31126851c64c7b67185f7f68075de2df425680dbc7b677aba62f914d8286b` |
| 37 | `theorem` | [evalAt_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/evalat-apply--11996d2fac1631e1ef24d974.md) | 236 | `result-track:11996d2fac1631e1ef24d97445143f719f12dae4f15e356ea0fb808a31ee590e` |
| 38 | `theorem` | [evalAt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/evalat-coe--0180a1a8f7edeb2953e4e7a6.md) | 241 | `result-track:0180a1a8f7edeb2953e4e7a666c64f7baa23b5e687911425f48c88a065f3d95d` |
| 39 | `theorem` | [left_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/left-invariant--fbe3b51bcd0ae8ebfc958e78.md) | 245 | `result-track:fbe3b51bcd0ae8ebfc958e78a109d5b9ea4c524511adfeee30ed93e32baf59d9` |
| 40 | `theorem` | [evalAt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/evalat-mul--c95233f2886e0ecd4f8b4870.md) | 249 | `result-track:c95233f2886e0ecd4f8b48706efffb7895ab620c5e4b39ac309a48b34dfa39ef` |
| 41 | `theorem` | [comp_L](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/comp-l--daf84aa9dc22897793700bee.md) | 258 | `result-track:daf84aa9dc22897793700beeea5c020d6a685514498d67b8f7c4cf1d9543c4ec` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--3169d58f382e5bdf36f5f412.md) | 266 | `declaration-track:3169d58f382e5bdf36f5f4124832fb783eccb5947c47e25e395f16c51456716d` |
| 43 | `theorem` | [commutator_coe_derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/commutator-coe-derivation--824c3d4242c48d021a43f8c3.md) | 280 | `result-track:824c3d4242c48d021a43f8c383be0992edde7c9c18094f96f30780e77a520f39` |
| 44 | `theorem` | [commutator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/commutator-apply--3027589c58b91fde6e3510ad.md) | 287 | `result-track:3027589c58b91fde6e3510ad936207f61b88142d47a52a6d96f0482c9073e329` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--5bf79c9fc009839ed54938ef.md) | 291 | `declaration-track:5bf79c9fc009839ed54938ef9f53d614a4dd6b1ce0895840ce1ab619a89f0f01` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant07aeb6bdcd7a0b1ed0daaab7e2eff33b593d2fe585f37647bcb3ec39a76fa8fd.lean/declarations/instance--b00966cca17dddb6d0652823.md) | 306 | `declaration-track:b00966cca17dddb6d065282303bac5ec6a66a48abf063c12f0fb1c04e9679ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
