# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ProdStdSimplex.Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bea4ec59295cc1a946de44d07dcfc20b287a138",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bea4ec59295cc1a946de44d07dcfc20b287a138`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.InsertNth` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv--de39d83011063962df5c02a6.md) | 44 | `declaration-track:de39d83011063962df5c02a6c74c7a14c4cb102e26caddbf7fa3d1d33946effe` |
| 2 | `lemma` | [objEquiv_apply_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv-apply-symm-apply--8a07d7814ce346c8aab83e47.md) | 57 | `result-track:8a07d7814ce346c8aab83e4781438e4b7659bccb37e8412e5eef04e8cc6eab04` |
| 3 | `lemma` | [objEquiv_apply_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv-apply-fst--a55a8b9e3cf7ef047af357be.md) | 61 | `result-track:a55a8b9e3cf7ef047af357be100e098c885b419538e591144b75b3ab516feb22` |
| 4 | `lemma` | [objEquiv_apply_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv-apply-snd--75db54111e9e6b0e85566174.md) | 65 | `result-track:75db54111e9e6b0e8556617434f335165faddaa2974282b4334af5a5eac49003` |
| 5 | `lemma` | [objEquiv_naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv-naturality--2ec17c7bcdf28899aaf23a1d.md) | 68 | `result-track:2ec17c7bcdf28899aaf23a1dc1eb00679d463a9647e7bce768d4ded7d83720b1` |
| 6 | `lemma` | [objEquiv_map_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv-map-apply--7dfea1dcdf3a9b7de136ec0b.md) | 73 | `result-track:7dfea1dcdf3a9b7de136ec0bc5b6a106207ec453a80edc49522480aaa5846cf9` |
| 7 | `lemma` | [objEquiv_δ_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/objequiv-apply--fa6b9b6d54421f99ce2b3f21.md) | 78 | `result-track:fa6b9b6d54421f99ce2b3f211f17baefdaa40fad79ee0272d2486cd857aac6c1` |
| 8 | `def` | [isoNerve](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/isonerve--aa8830543ffcb7de4de1ca56.md) | 85 | `declaration-track:aa8830543ffcb7de4de1ca5614380b6cb3bfbe8b92a672d36a43bbef87d091e0` |
| 9 | `lemma` | [nonDegenerate_iff_injective_objEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/nondegenerate-iff-injective-objequiv--cdef2e45167712df5df062ca.md) | 90 | `result-track:cdef2e45167712df5df062cab120317ca585eb7cae8e6ab4d5343402c70ccf86` |
| 10 | `lemma` | [nonDegenerate_iff_strictMono_objEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/nondegenerate-iff-strictmono-objequiv--8bf2aab7988b386ce6d9980f.md) | 97 | `result-track:8bf2aab7988b386ce6d9980fff50148bd3618bce1dbcd6db1651c71cffdd44e4` |
| 11 | `lemma` | [isoNerve_hom_app_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/isonerve-hom-app-obj--45a2e1cccc53a7c900889e7f.md) | 103 | `result-track:45a2e1cccc53a7c900889e7fe0b740765cc293bba51bd06a01c8526295a991c4` |
| 12 | `lemma` | [range_isoNerve_hom_app_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/range-isonerve-hom-app-obj--3a5013afc56b47db6f54f441.md) | 106 | `result-track:3a5013afc56b47db6f54f44109964fb22872d281f90ead2607856bd5b8594bf5` |
| 13 | `lemma` | [ofSimplex_le_ofSimplex_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/ofsimplex-le-ofsimplex-iff--ac17f487acc8a52ad3c20f02.md) | 112 | `result-track:ac17f487acc8a52ad3c20f02f6b4029f78227600be76a2c7607817cc48a2b325` |
| 14 | `def` | [orderHomOfSimplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/orderhomofsimplex--7fd65547a94dc3132bfe4057.md) | 125 | `declaration-track:7fd65547a94dc3132bfe4057ac05328ee2f7317f90ffc0149b34224d828294a1` |
| 15 | `lemma` | [strictMono_orderHomOfSimplex_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/strictmono-orderhomofsimplex-iff--105a6ac7b2dca416ac84c529.md) | 136 | `result-track:105a6ac7b2dca416ac84c529a05661050a3ad2e50e5bad58b84fba9b37062305` |
| 16 | `lemma` | [strictMono_orderHomOfSimplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/strictmono-orderhomofsimplex--7e9344b471e7ad47e93a1b32.md) | 147 | `result-track:7e9344b471e7ad47e93a1b3268fb851f291eb00efe320b0fd3934f673933504d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/instance--ab7c623623e91a47e4799de4.md) | 152 | `declaration-track:ab7c623623e91a47e4799de463fe4bdac187bcee6c42817bf58d123adf386dee` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/instance--12bbd677f7cc014fe49caca4.md) | 164 | `declaration-track:12bbd677f7cc014fe49caca4af4f3bd5788783648a1b0491cb9f01882ec8d84b` |
| 19 | `lemma` | [le_orderHomOfSimplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/le-orderhomofsimplex--b369668a82613eb05572075b.md) | 167 | `result-track:b369668a82613eb05572075b2fda43c6dfefc42d92ca2c5d26a000601e3cdc2d` |
| 20 | `lemma` | [nonDegenerate_max_dim_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/nondegenerate-max-dim-iff--e758048eb71166390d87fe50.md) | 174 | `result-track:e758048eb71166390d87fe507ee258f7a925982c83c9ee37b294ea3f0e49769b` |
| 21 | `lemma` | [nonDegenerate_ext₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/nondegenerate-ext--07c2b4789acb6bc8dbfe3858.md) | 186 | `result-track:07c2b4789acb6bc8dbfe3858962f0f71207cdd8d7e6d2191e02a2689c34ea313` |
| 22 | `lemma` | [nonDegenerate_ext₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/nondegenerate-ext--d07560ce1a6ecdbad008feb1.md) | 199 | `result-track:d07560ce1a6ecdbad008feb180847672460da2203c81d14303153f15f104e65f` |
| 23 | `lemma` | [exists_nonDegenerate_max_dim_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/exists-nondegenerate-max-dim-aux--c536963280895cd2781a9cb0.md) | 204 | `result-track:c536963280895cd2781a9cb0926b8aba0374bbe643bbd8c429da1b71c0dda325` |
| 24 | `lemma` | [exists_nonDegenerate_max_dim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/exists-nondegenerate-max-dim--994613b07fc380437ed38883.md) | 243 | `result-track:994613b07fc380437ed38883610951dff11d761796c35abdc871a257b8206111` |
| 25 | `lemma` | [subcomplex_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/declarations/subcomplex-eq-top-iff--fc6d399094c0bc0e4de67a88.md) | 259 | `result-track:fc6d399094c0bc0e4de67a88171b8a8972e2be1503d034dd56269a69faeb89a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
