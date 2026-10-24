# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ChevalleyComplexity.Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7201a976ef3fafeb2a26776aa5bdd22d7d398675",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7201a976ef3fafeb2a26776aa5bdd22d7d398675`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SuccPred.WithBot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.CoeffMem` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.WellFounded` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.ConstructibleSet` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Polynomial` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DegreeType](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degreetype--be24e2fe16302e584ea8b1c1.md) | 86 | `declaration-track:be24e2fe16302e584ea8b1c1bf2ade574ee4cf7323ab60c36be9584f9ea9217b` |
| 2 | `structure` | [InductionObj](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/inductionobj--650115fa585f328e7f693b1d.md) | 92 | `declaration-track:650115fa585f328e7f693b1d0195cb798c87b761a6d4ada089bcf5883b7c4abc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/instance--c4fb3dfdd7f30cca529ef6a3.md) | 98 | `declaration-track:c4fb3dfdd7f30cca529ef6a3b1922dd2b1abf1b645545cfb6079ed48dcd6312b` |
| 4 | `def` | [coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/coeffsubmodule--3f4bd84932b39ddc7e19d9fd.md) | 106 | `declaration-track:3f4bd84932b39ddc7e19d9fd8053ec77fe473baa499bed860aa61c8e82091349` |
| 5 | `lemma` | [coeffSubmodule_mapRingHom_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/coeffsubmodule-mapringhom-comp--f0dcd9d03dc45a3fb922c6ad.md) | 109 | `result-track:f0dcd9d03dc45a3fb922c6ad93d985f3846169876ce4d50ac5907460c745ed38` |
| 6 | `lemma` | [coeff_mem_coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/coeff-mem-coeffsubmodule--ffa6705b02172d373c85d861.md) | 117 | `result-track:ffa6705b02172d373c85d8618b91c9bd07bf738a6e1b2c17364fc84946cf7d60` |
| 7 | `lemma` | [one_mem_coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/one-mem-coeffsubmodule--eea506e0b1815c1753838118.md) | 121 | `result-track:eea506e0b1815c175383811831267658ccc1c4f9118f1a381d2e053203270c8c` |
| 8 | `lemma` | [one_le_coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/one-le-coeffsubmodule--1729aa90a1389deccea7b2a3.md) | 123 | `result-track:1729aa90a1389deccea7b2a35bfdbb2b4f9390567ae07d30cf0700940d98cdf9` |
| 9 | `def` | [degree](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degree--3c6d517c3576429a84353afa.md) | 130 | `declaration-track:3c6d517c3576429a84353afafbb3278273b4558ea2bbed866c8cf00f9aff55b5` |
| 10 | `lemma` | [ofLex_degree_fst](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/oflex-degree-fst--9229d5917e75e1ca5d2719b4.md) | 133 | `result-track:9229d5917e75e1ca5d2719b431fbcaa7eb25b87c440b59cee011b7ef8c3d7fdc` |
| 11 | `lemma` | [ofLex_degree_snd](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/oflex-degree-snd--30906d5f20756cdb4c4b5dde.md) | 135 | `result-track:30906d5f20756cdb4c4b5dde8c0a7052965a934b0a5a420ad31ac5fb982efcfa` |
| 12 | `def` | [degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound--484fb5cd3dd544f1e8dbcfab.md) | 142 | `declaration-track:484fb5cd3dd544f1e8dbcfab83cd535e442fcdaa0838d90302f089c6d11aa976` |
| 13 | `def` | [powBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/powbound--8aae5f53032feecfbec933e2.md) | 148 | `declaration-track:8aae5f53032feecfbec933e2cbd42ebaaec6d836d57883f7e9ec79684ba64b14` |
| 14 | `lemma` | [powBound_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/powbound-ne-zero--84a88b9651e41c2afa9fe50f.md) | 150 | `result-track:84a88b9651e41c2afa9fe50fa1335b932cbf07a853f189b974f48cc5e5976598` |
| 15 | `def` | [Statement](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/statement--549cc65dab1facbe8e8ba06e.md) | 155 | `declaration-track:549cc65dab1facbe8e8ba06e6f3931c1437f63cd57a2f0cc78adf3b91f7200aa` |
| 16 | `lemma` | [induction_structure](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/induction-structure--d6972f708d925e538698c42d.md) | 178 | `result-track:d6972f708d925e538698c42dd4440dfb5250e16f150483302fef5fd30a6bca99` |
| 17 | `lemma` | [induction_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/induction-aux--7d3694a9ad96f20bc000add5.md) | 278 | `result-track:7d3694a9ad96f20bc000add5c82ccd8bfa97129f89014796a8237eb0be3a8876` |
| 18 | `lemma` | [statement](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/statement--7d2a0762e24fa06e5b38ece9.md) | 430 | `result-track:7d2a0762e24fa06e5b38ece920303b7533ed62882303ac1a124571fe803766bc` |
| 19 | `lemma` | [chevalley_polynomialC](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/chevalley-polynomialc--b3ced85dc644f5f29a9b7566.md) | 557 | `result-track:b3ced85dc644f5f29a9b7566f7b638642610cef8d5042f2dd6587d8454028211` |
| 20 | `def` | [numBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/numbound--ff40a61ea8fc09a079f808b7.md) | 591 | `declaration-track:ff40a61ea8fc09a079f808b7dc103aba01a5168011b854171214649a95cc8d77` |
| 21 | `def` | [degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound--4910ca10c1babdaa1f06029c.md) | 597 | `declaration-track:4910ca10c1babdaa1f06029cd4017f67fd6656a954fbce80d6c8acbe168643f2` |
| 22 | `lemma` | [degBound_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound-zero--0532a808e385127ed437db7d.md) | 603 | `result-track:0532a808e385127ed437db7ddeeb79206906c55ffd0cca4da0fec12a0ce92ec5` |
| 23 | `lemma` | [numBound_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/numbound-zero--9b9c7e5ce82458e162e70869.md) | 604 | `result-track:9b9c7e5ce82458e162e70869015c0a3af07c2857e62834befeacaea07d6a1b12` |
| 24 | `lemma` | [degBound_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound-succ--553d273b786474f29e524bb1.md) | 607 | `result-track:553d273b786474f29e524bb1d7969df91ad8a396603963e532c86f740496a0ab` |
| 25 | `lemma` | [numBound_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/numbound-succ--95152e9c6d0b1638079d7875.md) | 612 | `result-track:95152e9c6d0b1638079d78756cb24d79e2bff3d4e9f95a3724442045628c8445` |
| 26 | `lemma` | [degBound_casesOn_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound-caseson-succ--57fcfee3fce6fdcb127bfd00.md) | 618 | `result-track:57fcfee3fce6fdcb127bfd0069653111122d111728d450ac11dbc22f348f4ef5` |
| 27 | `lemma` | [numBound_casesOn_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/numbound-caseson-succ--d66cdcccd2725bc9a1b59e38.md) | 627 | `result-track:d66cdcccd2725bc9a1b59e380dabdbaf2c0e3ecf4f7c8accf4a7d32c91075b13` |
| 28 | `lemma` | [degBound_le_degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound-le-degbound--30bff69d70cc94f906bbef5e.md) | 642 | `result-track:30bff69d70cc94f906bbef5e2fbbbf6d83c886bc25a6a0f05bacecdb4f818cdc` |
| 29 | `lemma` | [numBound_mono](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/numbound-mono--9fdf5ff8214689a1df1dcc12.md) | 650 | `result-track:9fdf5ff8214689a1df1dcc126b4727fc458bcb812eeb3643e5b5ca9f58dd1122` |
| 30 | `lemma` | [degBound_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound-pos--d92b29646f4e58998e31a38e.md) | 662 | `result-track:d92b29646f4e58998e31a38e50fefab35187ec10034de87a7439032a4f78bd1d` |
| 31 | `lemma` | [chevalley_mvPolynomialC](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/chevalley-mvpolynomialc--e7346dd8a78ae85a28e77336.md) | 670 | `result-track:e7346dd8a78ae85a28e77336175bdedd16c3ef188d20ce8057b1e9ca2a668b27` |
| 32 | `def` | [numBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/numbound--51d68633829402f5118d9803.md) | 783 | `declaration-track:51d68633829402f5118d98037d38652bd5b0aec23c6a415a5073564b1107a3b3` |
| 33 | `def` | [degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/degbound--8d47ece925b9b797f4c4bb72.md) | 788 | `declaration-track:8d47ece925b9b797f4c4bb72224f1418be5bdc2b6e8139447d69ab41e7db6fe5` |
| 34 | `lemma` | [chevalley_mvPolynomial_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/declarations/chevalley-mvpolynomial-mvpolynomial--cf313cbcdd34373ebe4a177c.md) | 803 | `result-track:cf313cbcdd34373ebe4a177ce9678ad2b568a9192577c0dbc819a56b91a5475f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
