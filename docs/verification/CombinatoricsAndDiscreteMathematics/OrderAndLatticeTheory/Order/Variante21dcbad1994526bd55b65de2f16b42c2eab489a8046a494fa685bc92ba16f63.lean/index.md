# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2828d42cd89887c7573be17332a6ec18c996def7",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2828d42cd89887c7573be17332a6ec18c996def7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/nonneg--9840c5ba404a8435e276917a.md) | 34 | `declaration-track:9840c5ba404a8435e276917a0cbdd016ea76c4121d7140f655e45fc90ca5a24e` |
| 2 | `theorem` | [divInt_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/divint-nonneg--f934c4cc049178ec547f4b5b.md) | 39 | `result-track:f934c4cc049178ec547f4b5bb47c016de7c30157fa4d414c04f9fa4623419d3e` |
| 3 | `theorem` | [nonneg_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/nonneg-add--92f1cbe3fdcde8be04fabdf9.md) | 53 | `result-track:92f1cbe3fdcde8be04fabdf98f27453b1a9f707861c6c08406c8407f94421080` |
| 4 | `theorem` | [nonneg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/nonneg-mul--3df0de51a8d0421ed7765ae0.md) | 64 | `result-track:3df0de51a8d0421ed7765ae0eb89c5bfb11d9b516b563cc779691bf01541983a` |
| 5 | `theorem` | [nonneg_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/nonneg-antisymm--9f93e089441e5bc24eb78358.md) | 74 | `result-track:9f93e089441e5bc24eb783588b4572dec1a449153abac1734312536f7e7add61` |
| 6 | `theorem` | [nonneg_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/nonneg-total--edb286780bce0b49f0c7d32a.md) | 82 | `result-track:edb286780bce0b49f0c7d32ab170da97d9d5f3abb1a7bc414ec7cd7c585d146d` |
| 7 | `instance` | [decidableNonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/decidablenonneg--265db2e0aed53d815192d960.md) | 86 | `declaration-track:265db2e0aed53d815192d9608f44695f2736a6f311f212968e70b46d96a63aeb` |
| 8 | `def` | [le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le--6cdf321791d65d3e2f85397c.md) | 94 | `declaration-track:6cdf321791d65d3e2f85397c39c38c24f18e734cb6c969344dfbc49f2665bace` |
| 9 | `def` | [numDenCasesOn''.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/numdencaseson--fd74402f1416d4d98d4f227b.md) | 101 | `declaration-track:fd74402f1416d4d98d4f227b67658403c7293e6d9474db62d02f3673b53a42c3` |
| 10 | `theorem` | [le_iff_Nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-iff-nonneg--8192168afcaaa2b9a0c1b7e8.md) | 109 | `result-track:8192168afcaaa2b9a0c1b7e87ac4ebb40a4caf77d1df3162ec8829fcd2dc3b04` |
| 11 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-def--be80568df66e5b943b4ec2ae.md) | 150 | `result-track:be80568df66e5b943b4ec2ae716447210207e190851505448f5bc1f679e68f1f` |
| 12 | `theorem` | [le_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-refl--d285e3254fbc4dd563c1dc31.md) | 158 | `result-track:d285e3254fbc4dd563c1dc31da49c30237b7b59dbd986648702ed67aa7d18f20` |
| 13 | `theorem` | [le_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-total--6d4ad8b39563e69686a78be4.md) | 165 | `result-track:6d4ad8b39563e69686a78be4b4577aca16fd0ef7c73e5f63d380f80cecd6181a` |
| 14 | `theorem` | [le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-antisymm--7dedfff64cc4eeb0a307657f.md) | 171 | `result-track:7dedfff64cc4eeb0a307657f03499035bf124e904be8213e581dbfc8e7e7642c` |
| 15 | `theorem` | [le_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-trans--1fb878bfb1942caebf63c4b1.md) | 179 | `result-track:1fb878bfb1942caebf63c4b1a8a07aef2b8de4753ce45a28620c959e511f61b5` |
| 16 | `theorem` | [not_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/not-le--48982ab32633768d6d5982a7.md) | 189 | `result-track:48982ab32633768d6d5982a7b96dcb5e797bdafe43dd7fe9fd25b9549e5859e9` |
| 17 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/linearorder--d801ad6a958fd0d28413cb1e.md) | 191 | `declaration-track:d801ad6a958fd0d28413cb1eb0c3b1a954b908581289307510c3fe016236f6e4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--f0e3dff7a5f903e6f63295a5.md) | 201 | `declaration-track:f0e3dff7a5f903e6f63295a5abef8795469f9080fa23c91dcf97cb490eb515eb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--112ba6084f9176e7a121c1a6.md) | 203 | `declaration-track:112ba6084f9176e7a121c1a68512bc8a12d15e5b5bd52330bc96527cef11f4d5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--2edfdec7119e6e29425072ff.md) | 205 | `declaration-track:2edfdec7119e6e29425072ff9dfe021b84c1928c950c49bc30a4c10894519603` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--14ad599f8a648bcc5c226c43.md) | 207 | `declaration-track:14ad599f8a648bcc5c226c4357bb2f656fc0bf19ac1394d8380de7ffa9636ba4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--8838f42ec5d848840302f219.md) | 209 | `declaration-track:8838f42ec5d848840302f219fa697fff5d35521486a86277a9a3984b87df85eb` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--1e3c74e7bc6a88ad1cb33a8d.md) | 211 | `declaration-track:1e3c74e7bc6a88ad1cb33a8d2d57f43a665202569723bd50584032e39e614282` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--63e72f49dba981c2e017e954.md) | 213 | `declaration-track:63e72f49dba981c2e017e954e90891a2bd35d369929aa95b0bf6ea8037ee28a0` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--c5a0ec1348cfecc6a68def5c.md) | 215 | `declaration-track:c5a0ec1348cfecc6a68def5cf9c0b17d6eb59dfb49dbf28769fa7c8cb0ed934a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--c8293e194555997501f99fd3.md) | 217 | `declaration-track:c8293e194555997501f99fd3ce0c9dcfac9b49cae4bc4c253e375c98e6b4729a` |
| 27 | `theorem` | [le_def'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/le-def--2a2dcf2d644f3c92d7d6c2b1.md) | 219 | `result-track:2a2dcf2d644f3c92d7d6c2b14223a6587f36c1688673417b4e1cbbb113021f71` |
| 28 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/lt-def--b35e862edda35edf5341e020.md) | 225 | `result-track:b35e862edda35edf5341e020c268a9cfdfdf1798269f3cb49d869ee8ab14d33c` |
| 29 | `theorem` | [nonneg_iff_zero_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/nonneg-iff-zero-le--445d57ba8c64723cb844da6a.md) | 235 | `result-track:445d57ba8c64723cb844da6a577771754210ad6efdc0985c0274df4ebe3e620b` |
| 30 | `theorem` | [num_nonneg_iff_zero_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/num-nonneg-iff-zero-le--ec07a3b919cd86c902b87c07.md) | 241 | `result-track:ec07a3b919cd86c902b87c075c3792e2baf04500550ada4ec24b8137c3cb74f7` |
| 31 | `theorem` | [add_le_add_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/add-le-add-left--7864a4cb341ecaf862a00f5b.md) | 245 | `result-track:7864a4cb341ecaf862a00f5b7927fd5257cbdcd761f5a231070fa8d5fcf830d0` |
| 32 | `theorem` | [mul_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/mul-nonneg--7b7c46dce1442dcd11f20229.md) | 249 | `result-track:7b7c46dce1442dcd11f20229edadb713c38d3420860f080b981d82a3bde4094d` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--8b7b449e1e608d8df5f8a207.md) | 253 | `declaration-track:8b7b449e1e608d8df5f8a207864e3d19c724ce4fd4dba1946d7cc7471d385432` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--ab26bf18f4844aad84283ff0.md) | 262 | `declaration-track:ab26bf18f4844aad84283ff0d559c71b3d645922b5fd542d876fdf3543e4ee75` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--f154e983cfe7bc62f9a4f156.md) | 264 | `declaration-track:f154e983cfe7bc62f9a4f156a42a259e73544e62f93b5791aa672e6e2196690e` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--14a7c5b8351d90593fc50977.md) | 266 | `declaration-track:14a7c5b8351d90593fc5097730e6191705fabc6edc7b8fadc3dd8bf264cbfc07` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--6f0d0882bb006f55354af45f.md) | 268 | `declaration-track:6f0d0882bb006f55354af45f0e8ea0f26cf2aa1966be5c28b2afc5731f30bbed` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--a97ee69bfc4306fc3fd9e93c.md) | 270 | `declaration-track:a97ee69bfc4306fc3fd9e93c8666f890fe3a3d35ccda098db5d8adfe4d8fb761` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--f2ceac3f0bf768a46ebf9643.md) | 272 | `declaration-track:f2ceac3f0bf768a46ebf964341a5f16b6818112e5fcc045a9aa9822cd5fe572a` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--e3580ab25e043cd690a0ebb4.md) | 274 | `declaration-track:e3580ab25e043cd690a0ebb4b233c1fcde3b37389581cf53b4b76a59fd3cf635` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--1c3f294ed14be7be2c50f4f9.md) | 276 | `declaration-track:1c3f294ed14be7be2c50f4f9d718d7fb6c64c3ecc10b845500b57095604e5475` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/instance--43516b3035132cb45d26cb59.md) | 278 | `declaration-track:43516b3035132cb45d26cb59216f1c651508216c12bfd704862755aa560d055c` |
| 43 | `theorem` | [num_pos_iff_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/num-pos-iff-pos--150d1c28a8a4a4c58b832df8.md) | 280 | `result-track:150d1c28a8a4a4c58b832df8fe07d557748943d60d88a35f3f22ba6b15de34b3` |
| 44 | `theorem` | [div_lt_div_iff_mul_lt_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/div-lt-div-iff-mul-lt-mul--9037413ecdc6d08a479bcacb.md) | 285 | `result-track:9037413ecdc6d08a479bcacb700344655ba8539a99ae5f2ad047842ba7b2793d` |
| 45 | `theorem` | [lt_one_iff_num_lt_denom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/lt-one-iff-num-lt-denom--51e0a36114f1ac080611907a.md) | 294 | `result-track:51e0a36114f1ac080611907a3d1cdfb429b3feee064ef567ebaf88d0bb1a7823` |
| 46 | `theorem` | [abs_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/declarations/abs-def--e19ac98cd7e9000808a3d353.md) | 297 | `result-track:e19ac98cd7e9000808a3d3539e95a2e58b7f922219e1b1314d424d37778161af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
