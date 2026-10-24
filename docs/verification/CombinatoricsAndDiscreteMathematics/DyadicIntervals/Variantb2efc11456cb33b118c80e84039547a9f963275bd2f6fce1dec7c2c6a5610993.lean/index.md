# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DyadicIntervals.Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23c38e300400bf64cf8e7d8c9f25c9461096d06",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23c38e300400bf64cf8e7d8c9f25c9461096d06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TypeIIDyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/typeiidyadicinterval--4303a43cc9c63152cfccbe42.md) | 36 | `declaration-track:4303a43cc9c63152cfccbe42ee6cf2f90fe5cc1bd979d077913e089f8a608267` |
| 2 | `def` | [level](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/level--ea2ee835adf6d8446a773242.md) | 43 | `declaration-track:ea2ee835adf6d8446a77324267757d3ecf43d2f043371312d572bca803c9c53e` |
| 3 | `def` | [block](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/block--a3ec6d0297151bf8f51e46ce.md) | 47 | `declaration-track:a3ec6d0297151bf8f51e46cee79e467444e6f2d70e5adb9ceeb46aa8671fb9a4` |
| 4 | `def` | [width](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/width--8cca4584159bac8eeb375a70.md) | 51 | `declaration-track:8cca4584159bac8eeb375a70f60f42f80f27a5a68b333dfa19b831c3541bbd5f` |
| 5 | `def` | [lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/lower--179ffaf815eba1d1a84a8d82.md) | 55 | `declaration-track:179ffaf815eba1d1a84a8d8206cafdb38baa7b3b8d9af6c2fb4e6f7ac9f70ec3` |
| 6 | `def` | [upperExclusive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/upperexclusive--130bdb92bd0588389bfe753c.md) | 59 | `declaration-track:130bdb92bd0588389bfe753c1f31d2932ac819201d633de2a73282b696559450` |
| 7 | `def` | [upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/upper--b8dd0ee6ed640ec5a0e96ffa.md) | 63 | `declaration-track:b8dd0ee6ed640ec5a0e96ffac5d6da409406a77c7123499c9bf14b2fb02b3ee7` |
| 8 | `def` | [carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/carrier--acd5849a0087c79bdfa895d6.md) | 68 | `declaration-track:acd5849a0087c79bdfa895d6bf5cff55d7becf4c173413ec00334cc7c5257b90` |
| 9 | `theorem` | [width_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/width-pos--728deaa0db0524f66025d151.md) | 72 | `result-track:728deaa0db0524f66025d151b09ce09a2c311aba92eac17632a1f5b8576f93d3` |
| 10 | `theorem` | [lower_add_width](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/lower-add-width--e6d501b0d184948adcf4c16d.md) | 77 | `result-track:e6d501b0d184948adcf4c16dce81e1d479e79f8cccc518edca815d38111978e4` |
| 11 | `theorem` | [upper_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/upper-add-one--ba5b8252b227292af4431686.md) | 83 | `result-track:ba5b8252b227292af443168648485b181320836645e89c595b0aa44e3346f2d4` |
| 12 | `theorem` | [lower_le_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/lower-le-upper--12aab7991443ee658cf63a72.md) | 91 | `result-track:12aab7991443ee658cf63a72c977b83481ac061a60b11a9b33c958b5b2a7d92c` |
| 13 | `theorem` | [upper_le_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/upper-le-scale--3e752b6b26f1f839f9d44a60.md) | 99 | `result-track:3e752b6b26f1f839f9d44a60a2b5accd132a515398c33c8028f458d8ef127da8` |
| 14 | `theorem` | [mem_carrier_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/mem-carrier-iff--efc94be4740d9dbe8b85f7e3.md) | 106 | `result-track:efc94be4740d9dbe8b85f7e353bfd076d88a836c2813fce8573c8cd626011c61` |
| 15 | `theorem` | [eq_of_lower_eq_and_upper_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/eq-of-lower-eq-and-upper-eq--64081a2313302fc7867e3374.md) | 115 | `result-track:64081a2313302fc7867e337433ffcb4e54ae832def377a13230f58e610d5785e` |
| 16 | `def` | [typeIIDyadicIntervals](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/typeiidyadicintervals--ca59372a11a91b5c5010e2d1.md) | 144 | `declaration-track:ca59372a11a91b5c5010e2d18f9679c285931566edb7c59053225d8d59780c47` |
| 17 | `theorem` | [mem_typeIIDyadicIntervals](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/mem-typeiidyadicintervals--e2100c843c28983d7774c3b0.md) | 148 | `result-track:e2100c843c28983d7774c3b0a26565451b044d11bcb9eaf01c962f9c82cd922e` |
| 18 | `def` | [productCutoffBeforeMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/productcutoffbeforematrix--b47206b9637d0aedf9bd0668.md) | 156 | `declaration-track:b47206b9637d0aedf9bd0668a1a35f138c8987f9dd9e2a6bc847ca1d4e361227` |
| 19 | `def` | [productDyadicIntervalMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/productdyadicintervalmatrix--b5a30c42c5f5a5d7000daa23.md) | 164 | `declaration-track:b5a30c42c5f5a5d7000daa23c80670fc9465fb82c4e9b8dc989ea76005b5ad47` |
| 20 | `theorem` | [productDyadicIntervalMatrix_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/productdyadicintervalmatrix-apply--59ae26920e026c36589affbe.md) | 171 | `result-track:59ae26920e026c36589affbe6d1f68311b7fa70640911c0b4171fe39bf5d502d` |
| 21 | `theorem` | [productDyadicIntervalMatrix_eq_sum_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/productdyadicintervalmatrix-eq-sum-fibers--a9c477499fde1999c0073aa6.md) | 200 | `result-track:a9c477499fde1999c0073aa6bf2e3981f67975df443cbba2b37037fb91dd0057` |
| 22 | `theorem` | [bilinearMatrixPairing_dyadicInterval_eq_endpoint_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/bilinearmatrixpairing-dyadicinterval-eq-endpoint-sub--8a5f5b7449f4e246a54fc5bb.md) | 230 | `result-track:8a5f5b7449f4e246a54fc5bbaa585cefee75130723f8e77853f5c1d125e6a654` |
| 23 | `theorem` | [bilinearMatrixPairing_dyadicInterval_eq_sum_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantb2efc11456cb33b118c80e84039547a9f963275bd2f6fce1dec7c2c6a5610993.lean/declarations/bilinearmatrixpairing-dyadicinterval-eq-sum-fibers--54c89641a673f3518c74ba3b.md) | 247 | `result-track:54c89641a673f3518c74ba3b488a40be349c1da21a60ddc4e8df06077e3a9fab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
