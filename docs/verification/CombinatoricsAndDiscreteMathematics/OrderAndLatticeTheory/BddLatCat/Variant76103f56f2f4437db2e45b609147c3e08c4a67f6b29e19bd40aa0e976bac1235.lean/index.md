# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddLatCat.Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd18e87b4fef302ed06ce2cdf02312a1b59e5336",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd18e87b4fef302ed06ce2cdf02312a1b59e5336`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddOrdCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.LatCat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.SemilatCat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/bddlatcat--dc3a3f3efa15bc74957538ed.md) | 29 | `declaration-track:dc3a3f3efa15bc74957538ed49f9cd61eea34d479a186ff86e15eeb8c45cee61` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/instance--71f13a1f6ef61569fe8dc53b.md) | 36 | `declaration-track:71f13a1f6ef61569fe8dc53b410176f8cbab4175f0c2eef64ce1c4584ea714a2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/instance--da3c7b223f309aae0c70a340.md) | 39 | `declaration-track:da3c7b223f309aae0c70a3400354c09d424f4826f0fbe2c442955fbe6ce27d67` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/of--57fe741a405f375590e49090.md) | 45 | `declaration-track:57fe741a405f375590e490900147e7f269a5c9e660e6cea2723ce6f4fa241898` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/coe-of--789354a55e8fd67bc7045408.md) | 51 | `result-track:789354a55e8fd67bc7045408ef547218276a3ee5ea8ddcdf46e20f1613e75dc4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/instance--f0f6e0dfc6540f7baba847ec.md) | 55 | `declaration-track:f0f6e0dfc6540f7baba847eca61c2b484dab5cd2955efe0080c19f6879488b2d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/instance--7a0481d3825967c325898ed6.md) | 58 | `declaration-track:7a0481d3825967c325898ed617c6a5b4d01e00edbf0d55b5a46a635d58ce16a6` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/instfunlike--75df31959fc4efe36e7a61e8.md) | 67 | `declaration-track:75df31959fc4efe36e7a61e82ca7f5e419efba401f4bd5457ebfd233814802f2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/instance--f4b345e2f5759bece130c85e.md) | 70 | `declaration-track:f4b345e2f5759bece130c85e01c2f90f287b801ce374172664def9d27cbc780d` |
| 10 | `instance` | [hasForgetToBddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/hasforgettobddord--0c0c4e39af07225e41c99c1c.md) | 76 | `declaration-track:0c0c4e39af07225e41c99c1c18e312daf98d4365735acc99a30a4b8531b469c1` |
| 11 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/hasforgettolat--a8406e117f18681e3444125e.md) | 82 | `declaration-track:a8406e117f18681e3444125e02d44d84a8d00a26bb8a1eee3b1d7ce7c0a1bccd` |
| 12 | `instance` | [hasForgetToSemilatSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/hasforgettosemilatsup--0ec2b56bc14d61e9f5974a95.md) | 89 | `declaration-track:0ec2b56bc14d61e9f5974a952bfc1aca189cd2a7ba0da821073e3021d1be891f` |
| 13 | `instance` | [hasForgetToSemilatInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/hasforgettosemilatinf--7a36b0cd7c0fc19fd76517f7.md) | 95 | `declaration-track:7a36b0cd7c0fc19fd76517f7583fc9d46530a5b64e6f891bdef49581a4fbdb77` |
| 14 | `theorem` | [coe_forget_to_bddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/coe-forget-to-bddord--6b810a11be080f30be8c4713.md) | 102 | `result-track:6b810a11be080f30be8c4713e1fde39a294831a5739b30f96f9f980e15792da8` |
| 15 | `theorem` | [coe_forget_to_latCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/coe-forget-to-latcat--e2f424e747f5310f05196427.md) | 107 | `result-track:e2f424e747f5310f0519642700dbc3b310e6d0e0d8b7b28593b26790c5fbf573` |
| 16 | `theorem` | [coe_forget_to_semilatSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/coe-forget-to-semilatsup--51d86f0809f73eba229f7d30.md) | 112 | `result-track:51d86f0809f73eba229f7d30df1efb7d4741d2bb9b3f88278a570dd7f9ca1733` |
| 17 | `theorem` | [coe_forget_to_semilatInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/coe-forget-to-semilatinf--47c2d8d484905ae5bcdc6e83.md) | 118 | `result-track:47c2d8d484905ae5bcdc6e8343155730c10840dd401b3850bd5913590c9b42cb` |
| 18 | `theorem` | [forget_latCat_partOrdCat_eq_forget_bddOrd_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/forget-latcat-partordcat-eq-forget-bddord-partordcat--6279ad708dc7369ac38c492e.md) | 123 | `result-track:6279ad708dc7369ac38c492e75e9f51d4ba0adc8e48008464e66d6d1233eace3` |
| 19 | `theorem` | [forget_semilatSup_partOrdCat_eq_forget_bddOrd_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/forget-semilatsup-partordcat-eq-forget-bddord-partordcat--f96ef2c5f1226ba333d9bfcf.md) | 129 | `result-track:f96ef2c5f1226ba333d9bfcf9196a3b8f50e2f911305c2a8bcea01d1e0a954cf` |
| 20 | `theorem` | [forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/forget-semilatinf-partordcat-eq-forget-bddord-partordcat--ae29e3537a20e23ca2245af5.md) | 135 | `result-track:ae29e3537a20e23ca2245af59620816ce944f0da4f96db4ef03312241832c6d9` |
| 21 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/iso-mk--bb357f4c82b352418f2e904b.md) | 144 | `declaration-track:bb357f4c82b352418f2e904b844e49b8fe1007f22ea2c08dc1114cf6b0162eb0` |
| 22 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/dual--e32ddf5af5846d0f954a2956.md) | 153 | `declaration-track:e32ddf5af5846d0f954a295687d10d4b6f44444c4fe8af3821357c85ab15d17b` |
| 23 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/dualequiv--5cc16a82068fd77b6d1f2c90.md) | 160 | `declaration-track:5cc16a82068fd77b6d1f2c9055dc35be4ead7c22123e4ec69ac8963c7da01799` |
| 24 | `theorem` | [bddLatCat_dual_comp_forget_to_bddOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/bddlatcat-dual-comp-forget-to-bddordcat--4aa9bc1ee33fc778da2307cf.md) | 169 | `result-track:4aa9bc1ee33fc778da2307cf2517b0791b19a6ea5321f44fc27f43952280f211` |
| 25 | `theorem` | [bddLatCat_dual_comp_forget_to_latCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/bddlatcat-dual-comp-forget-to-latcat--8777f02afb632591dac05c26.md) | 175 | `result-track:8777f02afb632591dac05c26db4409313005059bd7491e42399773e7c34d1abe` |
| 26 | `theorem` | [bddLatCat_dual_comp_forget_to_semilatSupCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/bddlatcat-dual-comp-forget-to-semilatsupcat--e1df0572158b38ad0353a55f.md) | 180 | `result-track:e1df0572158b38ad0353a55f7d5ed07b5867fd7b4cb380fb426d2a6d39676cde` |
| 27 | `theorem` | [bddLatCat_dual_comp_forget_to_semilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/bddlatcat-dual-comp-forget-to-semilatinfcat--a67de5d93b566d809ce88c18.md) | 186 | `result-track:a67de5d93b566d809ce88c18bd303db06c3d143ce8c6785ff3683888c0b1c3f2` |
| 28 | `def` | [latToBddLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/lattobddlatcat--230b1a67ececffa835169b62.md) | 193 | `declaration-track:230b1a67ececffa835169b625704a247d47bed8dfbee608d8a8c540066e76935` |
| 29 | `def` | [latToBddLatCatForgetAdjunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/lattobddlatcatforgetadjunction--de2c56418e3d56f25f0a5de4.md) | 202 | `declaration-track:de2c56418e3d56f25f0a5de421d61e947eaae64987aeef369a880a280d8779fd` |
| 30 | `def` | [latToBddLatCatCompDualIsoDualCompLatToBddLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/declarations/lattobddlatcatcompdualisodualcomplattobddlatcat--99ca22e1adc28bb807d2f45a.md) | 236 | `declaration-track:99ca22e1adc28bb807d2f45a24370b25b35a10e0a1bd4bff30f95c6008e78685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
