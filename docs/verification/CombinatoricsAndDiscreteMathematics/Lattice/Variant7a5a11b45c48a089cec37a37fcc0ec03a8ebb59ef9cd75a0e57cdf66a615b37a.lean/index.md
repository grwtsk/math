# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26aa73dca43aed7fe5563d7ab4919d0679e9aa8a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26aa73dca43aed7fe5563d7ab4919d0679e9aa8a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteLimitCone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/finitelimitcone--bfdb932f09f55b172ae59ee3.md) | 27 | `declaration-track:bfdb932f09f55b172ae59ee3270a773752800c28870c217dd937d252c9f21e08` |
| 2 | `def` | [finiteColimitCocone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/finitecolimitcocone--0eb0287bd98e406120c122a4.md) | 37 | `declaration-track:0eb0287bd98e406120c122a420f039f1da637534ac51ff5bbfe54dea38c621f4` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/instance--0566c5b7a01368e6e07a2405.md) | 44 | `declaration-track:0566c5b7a01368e6e07a240571717df30eb76b58b23b031958cc4ca70c798766` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/instance--15c0a2657482436c9c2c69fb.md) | 50 | `declaration-track:15c0a2657482436c9c2c69fbe71f6fc99b5429725d1c79a4263233cfb5ffba25` |
| 5 | `theorem` | [finite_limit_eq_finset_univ_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/finite-limit-eq-finset-univ-inf--314981fbb5e04aa81108d374.md) | 58 | `result-track:314981fbb5e04aa81108d3741496e9a0fea3c0f8a4587aa91a870622f3cd86bb` |
| 6 | `theorem` | [finite_colimit_eq_finset_univ_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/finite-colimit-eq-finset-univ-sup--5a2758930f375bb6fa250c68.md) | 65 | `result-track:5a2758930f375bb6fa250c68979ff109b36346d328ca48dd7194e067cfbb88e0` |
| 7 | `theorem` | [finite_product_eq_finset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/finite-product-eq-finset-inf--6dc1f13df3b08ebbe24de00d.md) | 72 | `result-track:6dc1f13df3b08ebbe24de00ded3ad643a5828fb2207597a033c576e0fe140e96` |
| 8 | `theorem` | [finite_coproduct_eq_finset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/finite-coproduct-eq-finset-sup--0bd53148b7c6b7f5e4c48373.md) | 85 | `result-track:0bd53148b7c6b7f5e4c48373adda3ece86948e91363bb7bb00a8e6408cf2e7d0` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/instance--daae777893ec5034c3d8a75f.md) | 96 | `declaration-track:daae777893ec5034c3d8a75ff866256c05e7145bcb6107047f463674d11163c9` |
| 10 | `theorem` | [prod_eq_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/prod-eq-inf--aecf18533614325218fe7f0a.md) | 106 | `result-track:aecf18533614325218fe7f0a746878ee71a3b65323d24f7ecaa1c4919ba84c47` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/instance--379691c4c78c190cabe8c79c.md) | 115 | `declaration-track:379691c4c78c190cabe8c79c6b5c5f5aeb3a2fa4ebb556772d02c0baf0352ed2` |
| 12 | `theorem` | [coprod_eq_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/coprod-eq-sup--2cbcadfc8bec625513141bf3.md) | 125 | `result-track:2cbcadfc8bec625513141bf326cb888fa63b9c007e79a62c279bc731c6ad1c13` |
| 13 | `theorem` | [pullback_eq_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/pullback-eq-inf--750360b4f10f1eba9099bce0.md) | 137 | `result-track:750360b4f10f1eba9099bce043a61da02be470064b2efb75a4f9e0a901b0de42` |
| 14 | `theorem` | [pushout_eq_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/pushout-eq-sup--aa66ae458d6cc00ced4830f1.md) | 150 | `result-track:aa66ae458d6cc00ced4830f19918b479822c9f9bed807a346159f3330a160458` |
| 15 | `def` | [limitCone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/limitcone--377c9940643dde69f283ad79.md) | 166 | `declaration-track:377c9940643dde69f283ad79c9ddbf05d6834b49e3d143d864644d6cdbcc37f9` |
| 16 | `def` | [colimitCocone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/colimitcocone--87ebc86ad356cbb11cd33365.md) | 177 | `declaration-track:87ebc86ad356cbb11cd33365cf0d67162405cc698b01a235c080c773d4c40e3b` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/instance--57adb8e5d401d37fa1e5fe3d.md) | 186 | `declaration-track:57adb8e5d401d37fa1e5fe3d59a31187247f8e5cb531b0a22a3c1d5f154f2e11` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/instance--d9eb080bf2a2425e231f118a.md) | 190 | `declaration-track:d9eb080bf2a2425e231f118a47102f226319f0304dec5bda3c8d943bed2cb665` |
| 19 | `theorem` | [limit_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/limit-eq-iinf--52a5969a85bb4cce679db9b6.md) | 195 | `result-track:52a5969a85bb4cce679db9b624309285eccabb7dd45b18ef17841ea1ebcbaac9` |
| 20 | `theorem` | [colimit_eq_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/declarations/colimit-eq-isup--cef4602947a838ad95a2e897.md) | 200 | `result-track:cef4602947a838ad95a2e8973e167b718947cb06a5dc314d3ed687df99856b48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
