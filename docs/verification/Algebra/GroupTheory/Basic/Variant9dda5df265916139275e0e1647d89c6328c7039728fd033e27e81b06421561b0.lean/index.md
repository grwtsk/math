# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d87c97b981e9fa090aacc97a6872c76da16a9b02",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d87c97b981e9fa090aacc97a6872c76da16a9b02`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-prod--9eff8c257b67f1e03cc7ba4c.md) | 48 | `result-track:9eff8c257b67f1e03cc7ba4c76e8bfd0a7d8c09f4981155d259bb372c9c478e8` |
| 2 | `lemma` | [smul_set_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-pi--cf63027c77a1d2a512104ae6.md) | 56 | `result-track:cf63027c77a1d2a512104ae60a0bd0ccdf3d5a783e9fee2771d6e10389b8608f` |
| 3 | `lemma` | [smul_set_pi_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-pi-of-isunit--91742e5176cc505b7fa71f6c.md) | 61 | `result-track:91742e5176cc505b7fa71f6c14424900002dcb1faac6b666933e0fc74d6d61b1` |
| 4 | `lemma` | [smul_set_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-subset-mul--940f9ad81ba7183ce058f6c9.md) | 69 | `result-track:940f9ad81ba7183ce058f6c9e75d6252eccac65f683392c4878dd8530cbbe925` |
| 5 | `lemma` | [op_smul_set_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/op-smul-set-subset-mul--3f54136922cabbc25a86da30.md) | 72 | `result-track:3f54136922cabbc25a86da30a798150fc5e035ee2bf4d2f29153418087424b44` |
| 6 | `theorem` | [image_op_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/image-op-smul--bab76fd646813d5cfbbc0bdb.md) | 75 | `result-track:bab76fd646813d5cfbbc0bdbbd80d226ff0350b497fb7205e391dde0df9c8bc0` |
| 7 | `theorem` | [iUnion_op_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/iunion-op-smul-set--5cdb05752b576a888f9e7408.md) | 80 | `result-track:5cdb05752b576a888f9e7408ddf24bc04ebf1b80c84e63d1dc42810c34412f43` |
| 8 | `theorem` | [mul_subset_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mul-subset-iff-left--ab1b8943b1df0523f2132db8.md) | 84 | `result-track:ab1b8943b1df0523f2132db8358b9d29f167f1460125359a66bc0998767f16ae` |
| 9 | `theorem` | [mul_subset_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mul-subset-iff-right--4f77e69672eb6ed849682fa2.md) | 88 | `result-track:4f77e69672eb6ed849682fa2776097b486125c3f51624fe514790c7d62256acd` |
| 10 | `lemma` | [pair_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/pair-mul--7eb422bfb39f049fe47a4feb.md) | 91 | `result-track:7eb422bfb39f049fe47a4feb679e7c00019fbfe7b95a6ab0054ed004587860ea` |
| 11 | `lemma` | [mul_pair](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mul-pair--31debdf48a66472f86302b0e.md) | 95 | `result-track:31debdf48a66472f86302b0edf4369b62da5a02bbd3eda81fa28880f2f79415e` |
| 12 | `lemma` | [range_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/range-mul--cb84bd574ae530c5a03afe8f.md) | 98 | `result-track:cb84bd574ae530c5a03afe8f51e0d44463ccf905ccdd9a9ba82e27927b342342` |
| 13 | `lemma` | [image_smul_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/image-smul-distrib--d635cb327964dd5d550e5cd8.md) | 104 | `result-track:d635cb327964dd5d550e5cd8893eef1f62db9a868a308d73fcf75e5734f4728a` |
| 14 | `lemma` | [image_op_smul_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/image-op-smul-distrib--c2bcf57b0769fc77516a61a0.md) | 111 | `result-track:c2bcf57b0769fc77516a61a0364919dde234b80326b22faa58a4a8568af37958` |
| 15 | `lemma` | [op_smul_set_mul_eq_mul_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/op-smul-set-mul-eq-mul-smul-set--635499b8fa3f5522b2621983.md) | 118 | `result-track:635499b8fa3f5522b26219835bbd80d5a6abce1f9c2958eb01abda09562e72ed` |
| 16 | `theorem` | [pairwiseDisjoint_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/pairwisedisjoint-smul-iff--b935102cbd3a5fa0a59d4b89.md) | 129 | `result-track:b935102cbd3a5fa0a59d4b896b0d2bfdfaf225a754ebb247c38284b4783d1b08` |
| 17 | `instance` | [smulCommClass_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smulcommclass-set--4159dc9e88d81f5b33218e6d.md) | 136 | `declaration-track:4159dc9e88d81f5b33218e6d0b375e9923205eeb8f6337ef794d36cf511e1440` |
| 18 | `instance` | [smulCommClass_set'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smulcommclass-set--ed988f6f70dcb50e19d42636.md) | 141 | `declaration-track:ed988f6f70dcb50e19d426362b77ac05e6ec74d992f19b4f25e43d81d8fe814f` |
| 19 | `instance` | [smulCommClass_set''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smulcommclass-set--d8a9f0360fbd9a52d3957221.md) | 146 | `declaration-track:d8a9f0360fbd9a52d39572212935bbdc4bde3a3466383a8652005fa3fb15c5d3` |
| 20 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smulcommclass--34824916d48d1ccb0fa912a8.md) | 152 | `declaration-track:34824916d48d1ccb0fa912a8aaca00bc6b604ca1cc6c7abab037b311c4c359eb` |
| 21 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/isscalartower--4117e80d315ac568b2f1bafe.md) | 157 | `declaration-track:4117e80d315ac568b2f1bafe64631c622efa238107465e685f6a7b44d6bb245c` |
| 22 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/isscalartower--6ff8ed3a1c33d93eec7cec79.md) | 162 | `declaration-track:6ff8ed3a1c33d93eec7cec79a02937b22e6c05d353169253f5f8a37dea732122` |
| 23 | `instance` | [isScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/isscalartower--afce1ff97cc2470a4ae793cc.md) | 167 | `declaration-track:afce1ff97cc2470a4ae793cc75d52c10448cbb7994422d388e50aa14ab6edfff` |
| 24 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/iscentralscalar--186e2d05bb57c4ee13500160.md) | 172 | `declaration-track:186e2d05bb57c4ee1350016026cbc22f62d6e449c73ed05acc84d283ecd9f6f5` |
| 25 | `def` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mulaction--730119a1d7409c395abe57b9.md) | 181 | `declaration-track:730119a1d7409c395abe57b95860bd0e4b87e09026af5450847c248b0c8abeaf` |
| 26 | `def` | [mulActionSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mulactionset--ba72f0252799860a9ac999b9.md) | 188 | `declaration-track:ba72f0252799860a9ac999b9b4a7ab21692c7021e94b072ff54c92ccaf3adb59` |
| 27 | `theorem` | [smul_mem_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-mem-smul-set-iff--8d7f1565d05cf9535dfd3b59.md) | 199 | `result-track:8d7f1565d05cf9535dfd3b594af21b2c5a42a37424326a76c3bb41f0384e4a70` |
| 28 | `theorem` | [mem_smul_set_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mem-smul-set-iff-inv-smul-mem--4e65c0f3479f7f2ba396c484.md) | 203 | `result-track:4e65c0f3479f7f2ba396c484e63d9f7cc87faf74ecbe916e79f731bc4730d50f` |
| 29 | `theorem` | [mem_inv_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mem-inv-smul-set-iff--a1d21697dc48c102be5384b4.md) | 207 | `result-track:a1d21697dc48c102be5384b4811b805b27d5164627a422dd7dd07f1dde99b16e` |
| 30 | `lemma` | [mem_smul_set_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mem-smul-set-inv--7f32565fae0844194db0e1a7.md) | 211 | `result-track:7f32565fae0844194db0e1a78cde035cac72b6c770bfc3b8734c7cf490f1e29d` |
| 31 | `theorem` | [preimage_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/preimage-smul--9e28ea73ddfc03adf1155b3b.md) | 215 | `result-track:9e28ea73ddfc03adf1155b3b1ed4a39fd26b836ee9b6d31ba99cef4e8dbb4d99` |
| 32 | `theorem` | [preimage_smul_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/preimage-smul-inv--5059940bf3836bf9e9704fa1.md) | 219 | `result-track:5059940bf3836bf9e9704fa1cbc5099ad1394004dab7887d0a68a7daf1447bd6` |
| 33 | `theorem` | [smul_set_subset_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-subset-smul-set-iff--7b42dfe312fdf8c7b96d8cff.md) | 223 | `result-track:7b42dfe312fdf8c7b96d8cff2ecd62bf579cd0e48f9ca5bccaed14e12b290637` |
| 34 | `theorem` | [smul_set_subset_iff_subset_inv_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-subset-iff-subset-inv-smul-set--ef1e54bc6c316180dbcf9c0f.md) | 230 | `result-track:ef1e54bc6c316180dbcf9c0f619e6b6a0941fb16870b1c944c0555af8b8d9ed1` |
| 35 | `theorem` | [subset_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/subset-smul-set-iff--4eee4b1774426b12766a11cb.md) | 238 | `result-track:4eee4b1774426b12766a11cbaac460d2be0fb034c45b557a78f4595b2b3335a7` |
| 36 | `theorem` | [smul_set_inter](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-inter--6ffe835874d059d7e64c6532.md) | 246 | `result-track:6ffe835874d059d7e64c65323470af0729a10716f12f1b22281eac9d10639efa` |
| 37 | `theorem` | [smul_set_iInter](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-iinter--a05d25ec02d8444734caf307.md) | 250 | `result-track:a05d25ec02d8444734caf3078eaf3fb5f99b523691ee8af65e981437092fd6f8` |
| 38 | `theorem` | [smul_set_sdiff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-sdiff--a55aaf07b536902d2081bfcd.md) | 255 | `result-track:a55aaf07b536902d2081bfcd5279f67dda119365acb68d664bd273875a42b93d` |
| 39 | `theorem` | [smul_set_symmDiff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-symmdiff--a5ad013f852a79030b723554.md) | 260 | `result-track:a5ad013f852a79030b7235541c28e14a98dd92d5cfcaa2cf2394b29f93a6b45a` |
| 40 | `theorem` | [smul_set_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-univ--05bb495b89daf449480fc0f1.md) | 264 | `result-track:05bb495b89daf449480fc0f12fd4dd788d79ce141c1a5e0b99547405295114f4` |
| 41 | `theorem` | [smul_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-univ--3c40e9d4c9766c28edf13579.md) | 268 | `result-track:3c40e9d4c9766c28edf1357954d49f25b970d898d42719841989c4d2487dc70f` |
| 42 | `theorem` | [smul_set_compl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-set-compl--51b4749f19337aa52fdedd00.md) | 273 | `result-track:51b4749f19337aa52fdedd004f902d6efcc3da4fdb2b421d321ee6c7f457933b` |
| 43 | `theorem` | [smul_inter_ne_empty_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-inter-ne-empty-iff--69f93a6ea52eb0a8455df94b.md) | 277 | `result-track:69f93a6ea52eb0a8455df94bb00ffd1750383e48a200df5b7303c5d7a8e66ccc` |
| 44 | `theorem` | [smul_inter_ne_empty_iff'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-inter-ne-empty-iff--b72655a78655553c1ba0277d.md) | 288 | `result-track:b72655a78655553c1ba0277d9f834a875c02a666a1a200a6f0442d1617500d1c` |
| 45 | `theorem` | [op_smul_inter_ne_empty_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/op-smul-inter-ne-empty-iff--a9a28456c1955507485c9e61.md) | 293 | `result-track:a9a28456c1955507485c9e617295d01ebd3e46c25b5445ec021444c4bcc3c0bf` |
| 46 | `theorem` | [iUnion_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/iunion-inv-smul--59540ef5a2bff39ae5f89f8f.md) | 305 | `result-track:59540ef5a2bff39ae5f89f8fd32e8b60ad19ba50849a3c466040ba0c57c4836e` |
| 47 | `theorem` | [iUnion_smul_eq_setOf_exists](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/iunion-smul-eq-setof-exists--899d9632f2d9447cf987d65c.md) | 309 | `result-track:899d9632f2d9447cf987d65c3cb4573eed215dcaf686fb059e287ce418b8dba0` |
| 48 | `lemma` | [inv_smul_set_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/inv-smul-set-distrib--01c3f2a5c6e4ba0a5086397e.md) | 313 | `result-track:01c3f2a5c6e4ba0a5086397e87bdf3e9960a3e33cc96bc914aea8faa37a053e1` |
| 49 | `lemma` | [inv_op_smul_set_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/inv-op-smul-set-distrib--fcefa9ced5b104e5b43e859c.md) | 317 | `result-track:fcefa9ced5b104e5b43e859cef36dc8c187325fa0fda06b3f33bec3d92175857` |
| 50 | `lemma` | [disjoint_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/disjoint-smul-set--6f2ef63c08b875463dd91e32.md) | 321 | `result-track:6f2ef63c08b875463dd91e32453765926863bcfcaee144da62a9569e3efd2882` |
| 51 | `lemma` | [disjoint_smul_set_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/disjoint-smul-set-left--ce6de5a78e16a858d78350d2.md) | 325 | `result-track:ce6de5a78e16a858d78350d21d2998e548c4a7512a26b0e1cf4f74c24f110b16` |
| 52 | `lemma` | [disjoint_smul_set_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/disjoint-smul-set-right--c6e35c713d783996b861c096.md) | 329 | `result-track:c6e35c713d783996b861c096d0114fa6cf322bdda22927a2b22169f7a97e1a12` |
| 53 | `lemma` | [exists_smul_inter_smul_subset_smul_inv_mul_inter_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/exists-smul-inter-smul-subset-smul-inv-mul-inter-inv-mul--f7c700e5375bcd734c3efdc8.md) | 341 | `result-track:f7c700e5375bcd734c3efdc865e9f508c3ff9f6246cd475847ac6aae1949dd66` |
| 54 | `lemma` | [mem_invOf_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/mem-invof-smul-set--4d52ba7fe50c882d90f6da66.md) | 356 | `result-track:4d52ba7fe50c882d90f6da6684df77ec106811cfc2715bb445989da9fb308f56` |
| 55 | `lemma` | [smul_graphOn](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-graphon--ce92cfe04a62acbb51f013e3.md) | 365 | `result-track:ce92cfe04a62acbb51f013e303360b0f51de92431b4cf88c6206fc7effeea521` |
| 56 | `lemma` | [smul_graphOn_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-graphon-univ--7bfcafedd464039efdc3c2c1.md) | 372 | `result-track:7bfcafedd464039efdc3c2c1ef33e60eab5f164d3cb0862af7938050255c1756` |
| 57 | `lemma` | [smul_div_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9dda5df265916139275e0e1647d89c6328c7039728fd033e27e81b06421561b0.lean/declarations/smul-div-smul-comm--3794ec6b2925eee69f31519c.md) | 380 | `result-track:3794ec6b2925eee69f31519cf0e48677c580389b262f66f0ee9b46102a5220e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
