# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b395c077040beb70a6e82cc2dbce1b9428da257",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b395c077040beb70a6e82cc2dbce1b9428da257`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticCharFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun--6c141b3ddff10258cff1bdbd.md) | 49 | `declaration-track:6c141b3ddff10258cff1bdbde80773175967d0b5f72d1b5283cf7762df53d8bf` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun-eq-zero-iff--3ba0bac5ddfde6dd88159834.md) | 71 | `result-track:3ba0bac5ddfde6dd88159834ff8f9df7a454ce3e4d57657acee4c0e1d82c5890` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun-zero--ee943b4fda41ab801d743f5a.md) | 79 | `result-track:ee943b4fda41ab801d743f5acbb8bfa07017fa468d067d9c7922f74b1a7d639a` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun-one--3cae62c73ee0f70a780f90ea.md) | 83 | `result-track:3cae62c73ee0f70a780f90ea0264b0f3f9e7fd7c472ffc816150992efc9ebc4e` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun-eq-one-of-char-two--b8a75972540178fd8d03e834.md) | 87 | `result-track:b8a75972540178fd8d03e8346895bbd7755412e61426a86e0b83ad1a577551a8` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two--8e15c5a375e987702b92b085.md) | 94 | `result-track:8e15c5a375e987702b92b08560f4433c5869b83c0a1d13ec5bacf3f3b67ff012` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticcharfun-mul--b0418c61651585f6f7f2d058.md) | 100 | `result-track:b0418c61651585f6f7f2d058c9e9fa3ca310db1668d5ed0b25991a524921b15e` |
| 8 | `def` | [quadraticChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar--1ca09ac6247f7021b28ff01f.md) | 127 | `declaration-track:1ca09ac6247f7021b28ff01fa6bd49c77b82f1a9d7793ddd495c618e6e221fe2` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-eq-zero-iff--17d60beac9a9c082163e7fee.md) | 134 | `result-track:17d60beac9a9c082163e7fee6b89854e57021fe1ad5c2cde194b8e7dc138d40f` |
| 10 | `theorem` | [quadraticChar_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-zero--0ef6fa988b4bf6c30866c19d.md) | 137 | `result-track:0ef6fa988b4bf6c30866c19dc3d80dead808eb3517cbf73d546527f9e0f14fb9` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-one-iff-issquare--7fbc561df746047c202bf5d8.md) | 141 | `result-track:7fbc561df746047c202bf5d83933075b5fc23c88639649bc67e7e8ba4cb73e3a` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-sq-one--b61b553c9b2ff1d6baddbf03.md) | 147 | `result-track:b61b553c9b2ff1d6baddbf03b97fc57dd19a34a02dcef665e2b9e450cf2ec654` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-sq-one--5efe7dee1e84c28e7787c2f1.md) | 152 | `result-track:5efe7dee1e84c28e7787c2f19d1196c267f4975fc25a9e53610a20587d393697` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-dichotomy--0fe7f98157261157f6c1d8cd.md) | 156 | `result-track:0fe7f98157261157f6c1d8cd869df0c379b6cb1d9f63c6b6a158a845a7756c4a` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-eq-neg-one-iff-not-one--c7e05a4442928c2f185d9465.md) | 161 | `result-track:c7e05a4442928c2f185d9465066a1b2fc145b5d328e5156a8e998fcf81070c0e` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-neg-one-iff-not-issquare--314174b5a951c7a1af620b92.md) | 166 | `result-track:314174b5a951c7a1af620b92c19aa75a5157f97c995d0d84563961d7813fcefe` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-exists-neg-one--d4d1a0f060c884cd19db2ec1.md) | 172 | `result-track:d4d1a0f060c884cd19db2ec1a4cae22e6a921d7e81cc34a3a25d04f19c03124d` |
| 18 | `lemma` | [quadraticChar_exists_neg_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-exists-neg-one--356054468ba905505660bf39.md) | 176 | `result-track:356054468ba905505660bf3923c518a2df1f23638d3fd5b5b76c423968c3e08b` |
| 19 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-eq-one-of-char-two--851abbff9f1a1d51832ac176.md) | 182 | `result-track:851abbff9f1a1d51832ac17619341167ef915d14c659458776109309c71f9c66` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--38f1397ea6639b711dca3a77.md) | 188 | `result-track:38f1397ea6639b711dca3a7702c1e959a578c278c2b2da2041afccb613da65a0` |
| 21 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--9bf4c5664c14c8b5401a8c94.md) | 192 | `result-track:9bf4c5664c14c8b5401a8c94aad691c5f767246bdee9d34193ceecf08c52dff4` |
| 22 | `theorem` | [quadraticChar_isQuadratic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-isquadratic--0b7f372455bf02c9323b3df6.md) | 206 | `result-track:0b7f372455bf02c9323b3df69ed88cfb5cd9507b1b4590c2b86957987e3fd90f` |
| 23 | `theorem` | [quadraticChar_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-ne-one--aa1574d19576479c005acbd9.md) | 214 | `result-track:aa1574d19576479c005acbd9795507e3ace5e52c41852f57b04e45d0cb437180` |
| 24 | `theorem` | [quadraticChar_card_sqrts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-card-sqrts--cb054345d673e43c93804d33.md) | 221 | `result-track:cb054345d673e43c93804d331d09428c4a0e56fe3dd9a2cd398e7fbc28c12185` |
| 25 | `theorem` | [quadraticChar_sum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-sum-zero--3f0c9757ad6583c9b0c29fc5.md) | 246 | `result-track:3f0c9757ad6583c9b0c29fc5a1f776ae6eb12788011ae8bb6afed09a58bea063` |
| 26 | `theorem` | [quadraticChar_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/quadraticchar-neg-one--07a4b291df893eb14671e599.md) | 265 | `result-track:07a4b291df893eb14671e5997458450d25734bd4a0cbd41dd61b21832edda15c` |
| 27 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante855a057499cf73c7618fe248018d2b3adf1a8914803e10c76f27f5a333cb11a.lean/declarations/finitefield-issquare-neg-one-iff--727690a1ca3e0993d29d57c4.md) | 275 | `result-track:727690a1ca3e0993d29d57c40c069ef9ac8e4a0d92d84e45c04e1c146fe02448` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
