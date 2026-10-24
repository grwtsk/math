# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.NonemptyFinLinOrdCat.Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c639169de7cb6be76ef2fa1507d6b195451cdbe",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c639169de7cb6be76ef2fa1507d6b195451cdbe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.LinOrdCat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/nonemptyfinlinord--4489eeb160d3b3f2585ce41e.md) | 39 | `declaration-track:4489eeb160d3b3f2585ce41e91550718c8a1d18703a11b0028fcc239ad9df5cd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--4b2d71e0bb7ef26a166f4593.md) | 45 | `declaration-track:4b2d71e0bb7ef26a166f45934e959d249923344d4f72c71c9105d238a54e8215` |
| 3 | `instance` | [PUnit.nonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/punit-nonemptyfinlinord--bd0e91e627e58efa4d22d643.md) | 50 | `declaration-track:bd0e91e627e58efa4d22d643d70588bf7b518a93a9d47779ec6375dfc90722bc` |
| 4 | `instance` | [Fin.nonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/fin-nonemptyfinlinord--6de4abb244a51be2fa144cfa.md) | 53 | `declaration-track:6de4abb244a51be2fa144cfa1d5decc2a90c5b84287c6cbf2db41369ac12a514` |
| 5 | `instance` | [ULift.nonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/ulift-nonemptyfinlinord--c84e9ee55b83d10f6cbe81cb.md) | 56 | `declaration-track:c84e9ee55b83d10f6cbe81cba8c9698e482350b594d3552ddccb47de2a6c38ff` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--72939feadbcb9b11c8f23932.md) | 61 | `declaration-track:72939feadbcb9b11c8f2393257cc3300bd60eced9168531cd2dc03d71eec2aac` |
| 7 | `def` | [NonemptyFinLinOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/nonemptyfinlinordcat--fb43f66f914840920092b30b.md) | 65 | `declaration-track:fb43f66f914840920092b30b4bec7d1d428aa6aefe016b0a6acb4011f991f372` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--5832355768acab5b9463ae1f.md) | 72 | `declaration-track:5832355768acab5b9463ae1f542ae96b2f3562290d1f54010721b9c56ee803e4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--36bd9284693f998077714e93.md) | 78 | `declaration-track:36bd9284693f998077714e935285ff3b9d3e254c57703a52829c1778c1a9c334` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--ed0ceb27bb4538456d380dc6.md) | 81 | `declaration-track:ed0ceb27bb4538456d380dc684d8443cb54a2903b937d0624b5b8a00f4785bd8` |
| 11 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/of--8fc424cd071ca353ecd30443.md) | 85 | `declaration-track:8fc424cd071ca353ecd3044322060450d1fb97baa93fe7cf2cfce28ad44f1e06` |
| 12 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/coe-of--985cda7d2ecefa35c0798031.md) | 91 | `result-track:985cda7d2ecefa35c0798031d2f9d35c797408e2145179736757dfbfd48f6ea9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--52216fcb668e1c3f749ef86e.md) | 96 | `declaration-track:52216fcb668e1c3f749ef86ee70d61a6ac000b392efeb8dec03522d942519e5c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--723e1e085c13d2dbdc9f541a.md) | 99 | `declaration-track:723e1e085c13d2dbdc9f541ab6c7718decb2747fee2256c01ef23e7666a3fa8a` |
| 15 | `instance` | [hasForgetToLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/hasforgettolinord--85af47818ceb444dcc4c9c96.md) | 102 | `declaration-track:85af47818ceb444dcc4c9c96aa6335eaece505eb29bd3ab4aa63348f18c3f717` |
| 16 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/hasforgettofinpartord--860a3015e1628b1a23362081.md) | 107 | `declaration-track:860a3015e1628b1a23362081528103f40870ae2ce3d22c065a24102e2e46b9ba` |
| 17 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/iso-mk--e41db6fdc19b03a12f86e2ce.md) | 117 | `declaration-track:e41db6fdc19b03a12f86e2ce855628c83be962e28be5c109b2b789c6ea9da3fc` |
| 18 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/dual--3714c0448de26058317555a6.md) | 131 | `declaration-track:3714c0448de26058317555a6bc6f881a327aa4359b8b7e18ed704cd818cccc36` |
| 19 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/dualequiv--7546abde3273df6525164275.md) | 139 | `declaration-track:7546abde3273df65251642752b7c4b37e2ca5dd6b5b860a60bd9830cb0f2aac9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--f5a26f32fb37f1ee10a77e3a.md) | 148 | `declaration-track:f5a26f32fb37f1ee10a77e3afa560d3a928927b72e7f249ae80d2ee6523bb1bb` |
| 21 | `theorem` | [mono_iff_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/mono-iff-injective--3b428b608b819cc75fa0e924.md) | 155 | `result-track:3b428b608b819cc75fa0e924a26d3109899f9e5a558568c7a524b77da3b40eb0` |
| 22 | `lemma` | [forget_map_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/forget-map-apply--04036a73ef7c9f054777807f.md) | 173 | `result-track:04036a73ef7c9f054777807f8fe915b5c5bf161057351a149dba6a0e4fce9f74` |
| 23 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/epi-iff-surjective--3363386f4462b6d657f2ed31.md) | 176 | `result-track:3363386f4462b6d657f2ed31c0b3c0bd9a564c6509ab3d73041762e3cff1d13f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--db17981e558639faffcf66e8.md) | 218 | `declaration-track:db17981e558639faffcf66e88bf638f8f0cc6a35ea552d33447ca261f4e28428` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/instance--3bb94c27c881b1848097b2a6.md) | 242 | `declaration-track:3bb94c27c881b1848097b2a64f20fd19e9a54f46825e0368ff2754bfea16a416` |
| 26 | `theorem` | [nonemptyFinLinOrdCat_dual_comp_forget_to_linOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/nonemptyfinlinordcat-dual-comp-forget-to-linordcat--d4da4366c5d4947d40d696a2.md) | 258 | `result-track:d4da4366c5d4947d40d696a2f183308bbe121a3cf6a649fb5bf7653093c6c29b` |
| 27 | `def` | [nonemptyFinLinOrdDualCompForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/declarations/nonemptyfinlinorddualcompforgettofinpartord--b39f665b008456fb37922438.md) | 266 | `declaration-track:b39f665b008456fb37922438b3c6210e0183574aae8c3aa95669d6dfdd6e2aec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
