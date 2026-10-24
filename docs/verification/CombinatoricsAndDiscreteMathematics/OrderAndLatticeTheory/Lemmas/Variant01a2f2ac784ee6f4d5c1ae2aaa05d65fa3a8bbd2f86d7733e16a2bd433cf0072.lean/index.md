# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lemmas.Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90557c780801b8253e6e84ad441d0581576af04f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90557c780801b8253e6e84ad441d0581576af04f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Bool.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/isup-bool-eq--a3ed8fe0c904bf02233b2fbd.md) | 57 | `result-track:a3ed8fe0c904bf02233b2fbdddafc2dd8a5efe1d6b7afd599864f0305671d771` |
| 2 | `theorem` | [iInf_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/iinf-bool-eq--4c7bc75c26f4cc760faffce9.md) | 60 | `result-track:4c7bc75c26f4cc760faffce962c7000069288b4c7531bd0d5bb3a848bfd9b0e2` |
| 3 | `theorem` | [sup_eq_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/sup-eq-isup--2fe829ea3ec2eeedc6c0485e.md) | 63 | `result-track:2fe829ea3ec2eeedc6c0485e6e30ef7d3a78a3f83bd39dcba85324947bd7d7c5` |
| 4 | `theorem` | [inf_eq_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/inf-eq-iinf--2165a20076e2ab2ba04a3e4b.md) | 66 | `result-track:2165a20076e2ab2ba04a3e4b9c07d010c007ab6818928b57c0fb940d0a226c71` |
| 5 | `theorem` | [iSup_ge_eq_iSup_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/isup-ge-eq-isup-nat-add--e54575b86e87df2fbf1271c8.md) | 74 | `result-track:e54575b86e87df2fbf1271c8149c1890788d4d21bb33ea64257b74d7b6cd0359` |
| 6 | `theorem` | [iInf_ge_eq_iInf_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/iinf-ge-eq-iinf-nat-add--0fe8d1b1b80462799411e440.md) | 81 | `result-track:0fe8d1b1b80462799411e4402ebaac3f730578c76512c95043c41707a0645116` |
| 7 | `theorem` | [Monotone.iSup_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/monotone-isup-nat-add--2e70d319cee5402a8131c84d.md) | 84 | `result-track:2e70d319cee5402a8131c84d3b82a3e92d719170e51586902bc03336955550e5` |
| 8 | `theorem` | [Antitone.iInf_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/antitone-iinf-nat-add--ad2a6ca34b6fb5d1bc2bbee9.md) | 87 | `result-track:ad2a6ca34b6fb5d1bc2bbee91822adeb78ccc6b016ae62ef606d546fe1c73f05` |
| 9 | `theorem` | [iSup_iInf_ge_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/isup-iinf-ge-nat-add--73fa417b5edcdfe80f2695e3.md) | 96 | `result-track:73fa417b5edcdfe80f2695e30fc2cdd9bdaff75348729a0256beabcb27ef7c96` |
| 10 | `theorem` | [iInf_iSup_ge_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/iinf-isup-ge-nat-add--2c35fedeab3d24a906f052fb.md) | 104 | `result-track:2c35fedeab3d24a906f052fb6325d9428d0c7ba40d22f101843411a1fc7fbd76` |
| 11 | `theorem` | [sup_iSup_nat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/sup-isup-nat-succ--86519a3b855282b76b421992.md) | 108 | `result-track:86519a3b855282b76b421992f90821c858461d2e84009d32c34bc19f5494af17` |
| 12 | `theorem` | [inf_iInf_nat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/inf-iinf-nat-succ--70d37d79f22718f0041a8c5e.md) | 114 | `result-track:70d37d79f22718f0041a8c5e3866d2e365a2a0087ef768745f869985626e9343` |
| 13 | `theorem` | [iInf_nat_gt_zero_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/iinf-nat-gt-zero-eq--0844c5399423d1eabed361f3.md) | 117 | `result-track:0844c5399423d1eabed361f34db9ad4a7d6472e23c34ef23e6b7bde818231592` |
| 14 | `theorem` | [iSup_nat_gt_zero_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/isup-nat-gt-zero-eq--b2cf7a6532fd693cbbeb34e0.md) | 121 | `result-track:b2cf7a6532fd693cbbeb34e01d7ecf0e559fc1a174a01b1606f0c1f269e23d01` |
| 15 | `theorem` | [sup_sInf_le_iInf_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/sup-sinf-le-iinf-sup--d4c7ab2c1aa260dbea320016.md) | 135 | `result-track:d4c7ab2c1aa260dbea32001690851a98c8f425e6cd5fab73479940b7ebdb9a6a` |
| 16 | `theorem` | [iSup_inf_le_inf_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/isup-inf-le-inf-ssup--c0e9f8498d714a35979b79b8.md) | 139 | `result-track:c0e9f8498d714a35979b79b8683411f5cd06c5f38d25357be9726be86dbcf20e` |
| 17 | `theorem` | [sInf_sup_le_iInf_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/sinf-sup-le-iinf-sup--a29403095e6e57487fd7419f.md) | 143 | `result-track:a29403095e6e57487fd7419f7fb3a83742fc7c885fe06991c2026814bf1bc931` |
| 18 | `theorem` | [iSup_inf_le_sSup_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/isup-inf-le-ssup-inf--64d0e75e75223a407fe0ae49.md) | 147 | `result-track:64d0e75e75223a407fe0ae495214a1320cc8d6744bda6507693075742e38e9c3` |
| 19 | `theorem` | [le_iSup_inf_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/le-isup-inf-isup--cceaedf1203c63eedc21e818.md) | 150 | `result-track:cceaedf1203c63eedc21e81812570e79e7d8404ab81358861fd9bde36e2b4d75` |
| 20 | `theorem` | [iInf_sup_iInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/iinf-sup-iinf-le--8bf5b723bc1967f469b56d3d.md) | 153 | `result-track:8bf5b723bc1967f469b56d3d3fe151454324d5026b5730d4f72dbf7521a0f234` |
| 21 | `theorem` | [disjoint_sSup_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/disjoint-ssup-left--ad153447f14ecf5635c95307.md) | 156 | `result-track:ad153447f14ecf5635c95307db5fa60c6904845e78b9e5efbc0667da1593af14` |
| 22 | `theorem` | [disjoint_sSup_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/disjoint-ssup-right--daa168836a75148e91556dcb.md) | 160 | `result-track:daa168836a75148e91556dcb77a1e50a41a9fdd3fd125458f6230f787f7bfbd5` |
| 23 | `lemma` | [disjoint_of_sSup_disjoint_of_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/disjoint-of-ssup-disjoint-of-le-of-le--0b44d1fc5060078493bdd18a.md) | 164 | `result-track:0b44d1fc5060078493bdd18ae465ff2f839a674b660ffbba7fd26823170b61ee` |
| 24 | `lemma` | [disjoint_of_sSup_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/disjoint-of-ssup-disjoint--ca94b7678b0d4ef48081b265.md) | 172 | `result-track:ca94b7678b0d4ef48081b26521fe9334ed012694b240cea1e5a6869eb9d084c8` |
| 25 | `instance` | [supSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/supset--c16884d2bf71c42d5c3cacae.md) | 182 | `declaration-track:c16884d2bf71c42d5c3cacae47a1988cdd90d9a3e586a3891dec17a2d578a1e9` |
| 26 | `theorem` | [down_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/down-ssup--dcfa7f8a16cbe099ae3dce8c.md) | 184 | `result-track:dcfa7f8a16cbe099ae3dce8c0d171f2c3b82b4d37f7b06f4d48abd937b7c053f` |
| 27 | `theorem` | [up_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/up-ssup--dc889158480e5c70197b9f46.md) | 185 | `result-track:dc889158480e5c70197b9f46b5e853df07248d174da21dcc30852a4f2df7e9bc` |
| 28 | `instance` | [infSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/infset--6a96731868978ef5f2e3a4da.md) | 187 | `declaration-track:6a96731868978ef5f2e3a4da9d36e7b4e4a24f065aecf5a08c385323865189a4` |
| 29 | `theorem` | [down_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/down-sinf--5ee8b58401073e81ff2e8f57.md) | 189 | `result-track:5ee8b58401073e81ff2e8f57d1bddd0eb2b2c81953b5d24a10c96c8fdfdc2e52` |
| 30 | `theorem` | [up_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/up-sinf--a33212a819540d22d79aa1e3.md) | 190 | `result-track:a33212a819540d22d79aa1e3f8e38a7778a7797237804c5a0ad59fdcb749d3fd` |
| 31 | `theorem` | [down_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/down-isup--2e78c73f8f4bfbfe03613c0f.md) | 192 | `result-track:2e78c73f8f4bfbfe03613c0f22b6a28d145f6b61478cdea3881adfab611fe4f7` |
| 32 | `theorem` | [up_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/up-isup--5a44b116be94011b74bb6796.md) | 195 | `result-track:5a44b116be94011b74bb6796ef4d3033ebf57fce1ce000a095acb2b2456b82df` |
| 33 | `theorem` | [down_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/down-iinf--b018013e092188353e5ee75c.md) | 198 | `result-track:b018013e092188353e5ee75cc908a3f343f5715ca7cbd224208f1e92f4d70a0c` |
| 34 | `theorem` | [up_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/up-iinf--f0535bfef1665f13a4d313a4.md) | 201 | `result-track:f0535bfef1665f13a4d313a43a7421ee0ab6039a7435195a5b45052fdbeaceb7` |
| 35 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/instcompletelattice--81da4cbb15c07e00ee7ba2c5.md) | 204 | `declaration-track:81da4cbb15c07e00ee7ba2c52ae95b70fe43c09b91736dbd399c767d7d9728bd` |
| 36 | `instance` | [instCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant01a2f2ac784ee6f4d5c1ae2aaa05d65fa3a8bbd2f86d7733e16a2bd433cf0072.lean/declarations/instcompletelinearorder--1f736c844c3da8194b8e8ae9.md) | 213 | `declaration-track:1f736c844c3da8194b8e8ae90c94487b23eaa3426ef8b2c4a1e440092c568209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
