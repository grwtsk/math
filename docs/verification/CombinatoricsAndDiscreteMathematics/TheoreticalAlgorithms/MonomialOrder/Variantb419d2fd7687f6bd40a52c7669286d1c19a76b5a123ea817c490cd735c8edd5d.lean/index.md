# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MonomialOrder.Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69576f8a84e2339e058992f0783492651a98a7e4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69576f8a84e2339e058992f0783492651a98a7e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonomialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/monomialorder--73275de12810ae3074512445.md) | 57 | `declaration-track:73275de12810ae3074512445f3e92b9da3485d70750c33001be08cbc57b89053` |
| 2 | `lemma` | [le_add_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/le-add-right--e5b9fbd040ef8479b3f04e54.md) | 79 | `result-track:e5b9fbd040ef8479b3f04e54307be6e3a9bbef1f5677d290a32b67bfc4bd433d` |
| 3 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/orderbot--748667b2edfb1b17a7871eae.md) | 84 | `declaration-track:748667b2edfb1b17a7871eae4b1d8e427aa1be0a6997e317cbb2383bb6a3ce99` |
| 4 | `theorem` | [bot_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/bot-eq-zero--683703593fd3607584b0d833.md) | 91 | `result-track:683703593fd3607584b0d83322c3348a957514c3093a259bd7d84b38779d55fb` |
| 5 | `theorem` | [eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/eq-zero-iff--9c60f3f6924c1d22178e4e7f.md) | 93 | `result-track:9c60f3f6924c1d22178e4e7f680a414074806584240afd1cf08c9f1db9ef55a1` |
| 6 | `lemma` | [toSyn_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/tosyn-strictmono--431ef38a7ed0c9fb24bac341.md) | 95 | `result-track:431ef38a7ed0c9fb24bac341e845f79b6333a86dce8531181a15a267113656a5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/instance--f302375bcde08b0d0b7286c7.md) | 115 | `declaration-track:f302375bcde08b0d0b7286c77ab228475f3f7b1b2c02e58da54d24c005ff1358` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/example--eb1c86ee2a96f9f822ab3749.md) | 122 | `declaration-track:eb1c86ee2a96f9f822ab3749666b8bb081c152362d958f78a827b5e28fcf5d40` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/example--ed303edaec41cb302a4f0392.md) | 126 | `declaration-track:ed303edaec41cb302a4f0392182b4f2f0329ac43a429f8d604043c5bdbffff7b` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/example--2fcfb19f6bbffbb7bbbbe437.md) | 130 | `declaration-track:2fcfb19f6bbffbb7bbbbe437a84c6919b0023b845142b85347ed66e75e016014` |
| 11 | `def` | [MonomialOrder.lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/monomialorder-lex--068a206c2df79888b89ddb57.md) | 136 | `declaration-track:068a206c2df79888b89ddb57589894722126d1433f8ae3fc5efb01716d1495cb` |
| 12 | `theorem` | [MonomialOrder.lex_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/monomialorder-lex-le-iff--e66e5e942021c0641688e577.md) | 144 | `result-track:e66e5e942021c0641688e577104ea7812c69ca3ba9ada53eacd9c72cc61db912` |
| 13 | `theorem` | [MonomialOrder.lex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/monomialorder-lex-lt-iff--40965a97dce685e7feeac4fb.md) | 147 | `result-track:40965a97dce685e7feeac4fb32c3023d0a1dcff9ca7ad85229f1aaa206357efe` |
| 14 | `theorem` | [MonomialOrder.lex_lt_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/monomialorder-lex-lt-iff-of-unique--6c357b0795baa3b8ad398c2b.md) | 150 | `result-track:6c357b0795baa3b8ad398c2bbc4f08c805bb870095e3c27db7906c2ffa22ed41` |
| 15 | `theorem` | [MonomialOrder.lex_le_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantb419d2fd7687f6bd40a52c7669286d1c19a76b5a123ea817c490cd735c8edd5d.lean/declarations/monomialorder-lex-le-iff-of-unique--7dd0707b1658960d31555b79.md) | 154 | `result-track:7dd0707b1658960d31555b792f9bc120a05ab57c7190df99655b54ef3d8dbccb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
