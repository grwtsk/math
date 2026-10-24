# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d52f2ec62e73f9fd9ec902f4c062f96249fd61a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Rotate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [formPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm--b1590706281bc6abe9a0471a.md) | 47 | `declaration-track:b1590706281bc6abe9a0471a90f5963835e7a28f1eb2347f724b61ea4accfd1e` |
| 2 | `theorem` | [formPerm_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-nil--1ad4fd284b975dff9696211b.md) | 52 | `result-track:1ad4fd284b975dff9696211bbda8addc1b10cd811a92f5808de24f74d15c2d7a` |
| 3 | `theorem` | [formPerm_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-singleton--dc1f36dc5e841b8cbf2ee675.md) | 57 | `result-track:dc1f36dc5e841b8cbf2ee675bab9939228e9fb6525afd96abf1b794cc6e37e9d` |
| 4 | `theorem` | [formPerm_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-cons-cons--b284ec821829db30f4bcf207.md) | 62 | `result-track:b284ec821829db30f4bcf20707495928a6dfe4774d8d7761489730f0f1d16d7b` |
| 5 | `theorem` | [formPerm_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-pair--95902aaaa71205288fa4b77a.md) | 67 | `result-track:95902aaaa71205288fa4b77aa37692d890c4cf4b667aa5c4db3e08aa92369c85` |
| 6 | `theorem` | [formPerm_apply_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-of-not-mem--c7ddcd56f9a50f4d9d33e439.md) | 73 | `result-track:c7ddcd56f9a50f4d9d33e439a0d8cfca4c630696ad194fe4f7ecce139db97b04` |
| 7 | `theorem` | [mem_of_formPerm_apply_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/mem-of-formperm-apply-ne--112adf21ea9aded1fcc4eb93.md) | 83 | `result-track:112adf21ea9aded1fcc4eb93007b8b7aa732c0c7a522653107a0b528fa321b18` |
| 8 | `theorem` | [formPerm_apply_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-mem-of-mem--3e7c6784411686db97a9d1e8.md) | 87 | `result-track:3e7c6784411686db97a9d1e806454a79db09b3cafdc60e0e5f9617591ae20305` |
| 9 | `theorem` | [mem_of_formPerm_apply_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/mem-of-formperm-apply-mem--e2216922372b6c106679e096.md) | 103 | `result-track:e2216922372b6c106679e096cbe4d96f519d1045948f50a7a510ec806e191b18` |
| 10 | `theorem` | [formPerm_mem_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-mem-iff-mem--eb324893d48e4ff7b97020d2.md) | 121 | `result-track:eb324893d48e4ff7b97020d2372c3eea99482cda9bce63f5384dbf5e0c49bc7e` |
| 11 | `theorem` | [formPerm_cons_concat_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-cons-concat-apply-last--610327aebaa426b4eb6c4c20.md) | 126 | `result-track:610327aebaa426b4eb6c4c2092a644d482a8ffca56e7a2f1f7381289ae5701b7` |
| 12 | `theorem` | [formPerm_apply_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-getlast--196053f31f84eba50bfe4998.md) | 134 | `result-track:196053f31f84eba50bfe4998a5127eca2065663991f042a8da719064505614c4` |
| 13 | `theorem` | [formPerm_apply_nthLe_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-nthle-length--09d333e3ed61ba5e38dee19d.md) | 141 | `result-track:09d333e3ed61ba5e38dee19da792a15e5081dff38579b4e6060903b6a8ad60eb` |
| 14 | `theorem` | [formPerm_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-head--6d091cbddbc0395faf55347f.md) | 146 | `result-track:6d091cbddbc0395faf55347f21c451be510ea8d9d697109ca0875610ddc9152d` |
| 15 | `theorem` | [formPerm_apply_nthLe_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-nthle-zero--aba1e3c2ec54f1032a18a0fc.md) | 151 | `result-track:aba1e3c2ec54f1032a18a0fc85220d9d0a18bb6b2f0f025d25426a125a3a773e` |
| 16 | `theorem` | [formPerm_eq_head_iff_eq_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-eq-head-iff-eq-getlast--b3be86f8db3cce72c51fe209.md) | 161 | `result-track:b3be86f8db3cce72c51fe209adeb37d5f00ec977b43cbb752fc525610f21ec44` |
| 17 | `theorem` | [zipWith_swap_prod_support'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/zipwith-swap-prod-support--7a22b4ccd253a36ed9a9e587.md) | 166 | `result-track:7a22b4ccd253a36ed9a9e58726d3325431a12f8e863e1133b9800e0981b1094f` |
| 18 | `theorem` | [zipWith_swap_prod_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/zipwith-swap-prod-support--036fef0bcc23c6c1be3781f5.md) | 191 | `result-track:036fef0bcc23c6c1be3781f510048ecf23e8ceddf7fa4300e13d9399509ae639` |
| 19 | `theorem` | [support_formPerm_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/support-formperm-le--7f54ad46875ab8bf6365d329.md) | 198 | `result-track:7f54ad46875ab8bf6365d3298f3886b69dbaee1824dfad796c70b8c1530621b5` |
| 20 | `theorem` | [support_formPerm_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/support-formperm-le--82aae663529f8e39e3345891.md) | 203 | `result-track:82aae663529f8e39e33458911513fd6291952270f5f7e679dd43b1c52f83cbc3` |
| 21 | `theorem` | [formPerm_apply_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-lt--dd5c9c9b8b33a6087a16c925.md) | 210 | `result-track:dd5c9c9b8b33a6087a16c925ee5b5f49a0fca27eda130d690e499203686bfd99` |
| 22 | `theorem` | [formPerm_apply_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-nthle--054d15228d96c1c64169e342.md) | 228 | `result-track:054d15228d96c1c64169e342c4ba18fb59e78fede2eac999f262db839711b940` |
| 23 | `theorem` | [support_formPerm_of_nodup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/support-formperm-of-nodup--a31fe2fe0547804463cea8d4.md) | 244 | `result-track:a31fe2fe0547804463cea8d4600c59db86f578cade59db2dd85582a5895ce824` |
| 24 | `theorem` | [support_formPerm_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/support-formperm-of-nodup--f9f3b43359dac5fcdf4b4f23.md) | 263 | `result-track:f9f3b43359dac5fcdf4b4f23c74feb83d66a29a89ce6a1014794335d65a4e68f` |
| 25 | `theorem` | [formPerm_rotate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-rotate-one--7c3fd840fb3521cec30e2758.md) | 271 | `result-track:7c3fd840fb3521cec30e27581a9b15daead14db03dafd089d0e5ae9543de70b7` |
| 26 | `theorem` | [formPerm_rotate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-rotate--0fec1eefa8d829e86c347676.md) | 282 | `result-track:0fec1eefa8d829e86c347676729663148c5f948bb438be1f499c54831800c317` |
| 27 | `theorem` | [formPerm_eq_of_isRotated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-eq-of-isrotated--b0bcae760e4fb1ad14b8c9bd.md) | 291 | `result-track:b0bcae760e4fb1ad14b8c9bd480776cb61d1d6a1d220c7710ac93c7f28570e67` |
| 28 | `theorem` | [formPerm_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-reverse--c561920936af06b1a694a5dd.md) | 298 | `result-track:c561920936af06b1a694a5ddba78ddcf3cdb1a0f5c74c1e623547b714526b704` |
| 29 | `theorem` | [formPerm_pow_apply_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-pow-apply-nthle--dd9719082d466bb90eb6e0c2.md) | 326 | `result-track:dd9719082d466bb90eb6e0c26227b1b47df9e990295e1175631859b1c752e55b` |
| 30 | `theorem` | [formPerm_pow_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-pow-apply-head--c384cd48d4d4bb77a6f74162.md) | 334 | `result-track:c384cd48d4d4bb77a6f74162708f821f985a32006bd620039983a4e6f7d045f1` |
| 31 | `theorem` | [formPerm_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-ext-iff--9cde3d7884a4c8396a368bdb.md) | 342 | `result-track:9cde3d7884a4c8396a368bdbf9735c3471995d587e55066ca7ad949b45991f51` |
| 32 | `theorem` | [formPerm_apply_mem_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-mem-eq-self-iff--01ca339d0d75a8f54e855d0f.md) | 381 | `result-track:01ca339d0d75a8f54e855d0f57bbaec5a9bcec5623fac75485c8ee47651cd650` |
| 33 | `theorem` | [formPerm_apply_mem_ne_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-apply-mem-ne-self-iff--7af0dacc7f1d598b318f0f5e.md) | 394 | `result-track:7af0dacc7f1d598b318f0f5ea3bd73927645f734971fa49d327ee4ba84b53131` |
| 34 | `theorem` | [mem_of_formPerm_ne_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/mem-of-formperm-ne-self--c3fe410fefa8d0612e6f8baf.md) | 400 | `result-track:c3fe410fefa8d0612e6f8baf4177e79b8a390846aa4a0efff0361803e08c38a4` |
| 35 | `theorem` | [formPerm_eq_self_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-eq-self-of-not-mem--87eabf4731c5ce198fdc5abe.md) | 407 | `result-track:87eabf4731c5ce198fdc5abe421aa114d324705c49f9f2444a0a0d0ae344d9cf` |
| 36 | `theorem` | [formPerm_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-eq-one-iff--fb80f395b6ff5babd3f614b6.md) | 411 | `result-track:fb80f395b6ff5babd3f614b6ec059a0de4aad28bee61baa45485195da11514da` |
| 37 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-eq-formperm-iff--f1d355d29740274e324047bb.md) | 423 | `result-track:f1d355d29740274e324047bb6ef94d7aa8abd513d1ad8691694913d15c19457c` |
| 38 | `theorem` | [form_perm_zpow_apply_mem_imp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/form-perm-zpow-apply-mem-imp-mem--c6c03f57304ef729bf9c74bd.md) | 444 | `result-track:c6c03f57304ef729bf9c74bda307edfdce00bd6b34538249eb4966780fb76aec` |
| 39 | `theorem` | [formPerm_pow_length_eq_one_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/declarations/formperm-pow-length-eq-one-of-nodup--49f9ec34af0bcd5dabca3a76.md) | 455 | `result-track:49f9ec34af0bcd5dabca3a767cf613eb9b6828cfd7452dfa9bf74ca484bf4fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
