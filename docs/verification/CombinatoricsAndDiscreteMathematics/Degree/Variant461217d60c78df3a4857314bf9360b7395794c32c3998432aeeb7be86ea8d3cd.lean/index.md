# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Degree.Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f43553cd5baadcf7d390fb8c624d22a831a5c58",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f43553cd5baadcf7d390fb8c624d22a831a5c58`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_support_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/sup-support-add-le--9d4f4f19502dd8acf9d5d3f2.md) | 95 | `result-track:9d4f4f19502dd8acf9d5d3f2ab84a631cadb179144a1969f70cbb3a2fc2941e0` |
| 2 | `theorem` | [le_inf_support_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-inf-support-add--5b75dbe062843e5f11be79d2.md) | 99 | `result-track:5b75dbe062843e5f11be79d2c00404cbeb7121e355ff0783044ad702341dcffc` |
| 3 | `theorem` | [sup_support_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/sup-support-mul-le--2eda94edd7577bbace6dcf0e.md) | 111 | `result-track:2eda94edd7577bbace6dcf0ec7295102117b989c95f7d8030df3d1058ebd1fae` |
| 4 | `theorem` | [le_inf_support_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-inf-support-mul--0e8288f334e967f96fdfc583.md) | 120 | `result-track:0e8288f334e967f96fdfc5830927fed4e7d1e582b1a8b419900c41a91e8613a4` |
| 5 | `theorem` | [sup_support_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/sup-support-list-prod-le--6e9b5b66b40a8cad12f1a3b0.md) | 137 | `result-track:6e9b5b66b40a8cad12f1a3b0e6ad462df5b64bea72ee6d927aafb6d1f4a1a09f` |
| 6 | `theorem` | [le_inf_support_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-inf-support-list-prod--7f744254d0af5f7bb069da59.md) | 150 | `result-track:7f744254d0af5f7bb069da5905211e4347d2ec69c6eaba28e7386638dfa1df96` |
| 7 | `theorem` | [sup_support_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/sup-support-pow-le--baa04d3855d97f09a6a0bb68.md) | 161 | `result-track:baa04d3855d97f09a6a0bb6866a01350e86868a5e33e992d03f6d8378a3f221e` |
| 8 | `theorem` | [le_inf_support_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-inf-support-pow--507444ea1243ead52241c573.md) | 168 | `result-track:507444ea1243ead52241c5739f506660c5d7c4128e84baa2639be7b360104660` |
| 9 | `theorem` | [sup_support_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/sup-support-multiset-prod-le--ec24f31bece20f2535e63fd2.md) | 187 | `result-track:ec24f31bece20f2535e63fd27cde0efbcace65282497997efdf021d946d25bd0` |
| 10 | `theorem` | [le_inf_support_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-inf-support-multiset-prod--a025da0762ebbda36b058cbd.md) | 195 | `result-track:a025da0762ebbda36b058cbd1bb925f4d30740222591bf20912a920a8206a02d` |
| 11 | `theorem` | [sup_support_finset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/sup-support-finset-prod-le--923744e30e34fbfa266be020.md) | 205 | `result-track:923744e30e34fbfa266be020b824670c2c69f5b324b3d8cdce16f2482177d9e8` |
| 12 | `theorem` | [le_inf_support_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-inf-support-finset-prod--02b1a92601383589d368d766.md) | 211 | `result-track:02b1a92601383589d368d766136ed9b491971028f648108004dfd099b47ac4fa` |
| 13 | `def` | [supDegree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/supdegree--ee31c09a240391aa212a411e.md) | 244 | `declaration-track:ee31c09a240391aa212a411ebba6a06660c0603b9090ca59dc30be8cc471e629` |
| 14 | `theorem` | [supDegree_add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/supdegree-add-le--db3a376ee2cb639aa9f6ed64.md) | 247 | `result-track:db3a376ee2cb639aa9f6ed64c404057d310d73e7273e866ecd69329df940b4c0` |
| 15 | `theorem` | [supDegree_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/supdegree-mul-le--3238d9ee04b784edf28c9f2c.md) | 253 | `result-track:3238d9ee04b784edf28c9f2c91e78871770887a1a9af52d11f7cfe5193b8f729` |
| 16 | `def` | [infDegree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/infdegree--c6af3de9b1aeddb0cd6730b8.md) | 271 | `declaration-track:c6af3de9b1aeddb0cd6730b844f76dfdf6eaea0a04a0068cddf4a8732ef60070` |
| 17 | `theorem` | [le_infDegree_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-infdegree-add--a551192779c36bb747874594.md) | 274 | `result-track:a551192779c36bb747874594d41e08a45318f2d5ec446034f1aa399bb0171e14` |
| 18 | `theorem` | [le_infDegree_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Degree/Variant461217d60c78df3a4857314bf9360b7395794c32c3998432aeeb7be86ea8d3cd.lean/declarations/le-infdegree-mul--d568c8f2476785c36b3326ff.md) | 280 | `result-track:d568c8f2476785c36b3326ff8e63e8371d1b3ad101b71b284014dfe5aae2dd3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
