# Verification target: GRWTSK.Algebra.RankOne.Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbb07cda3d0004546ca5d0e71a8e57c1808f018b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/index.md) · [Full source](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbb07cda3d0004546ca5d0e71a8e57c1808f018b`.

Source path: `GRWTSK/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RankOne](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/rankone--cb571956f7cf9d4903d2933f.md) | 35 | `declaration-track:cb571956f7cf9d4903d2933f4c18d442c8319793b0c6f23d773647282808bbe9` |
| 2 | `lemma` | [strictMono](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/strictmono--8b09957fd73a9c43d0890657.md) | 45 | `result-track:8b09957fd73a9c43d08906573400abdbc0dd53996420e15875db1cef9d17c93a` |
| 3 | `lemma` | [nontrivial](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/nontrivial--02bfee0c604627ee8ecebcd3.md) | 47 | `result-track:02bfee0c604627ee8ecebcd38844bb8aba70fba8bd4e1c55b6d6b9504e6a452b` |
| 4 | `theorem` | [zero_of_hom_zero](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/zero-of-hom-zero--ee461f9ddde586878f931241.md) | 51 | `result-track:ee461f9ddde586878f931241bb488da8e23ab1bfaf35d18c9e110639a7b6681f` |
| 5 | `theorem` | [hom_eq_zero_iff](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/hom-eq-zero-iff--d6e1632b1de5e0f2ea0d8006.md) | 59 | `result-track:d6e1632b1de5e0f2ea0d8006b6b5154262363e9e8c5e503e6880b951b2299c97` |
| 6 | `def` | [unit](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/unit--d033bd0faaa43276ed122944.md) | 63 | `declaration-track:d033bd0faaa43276ed122944db2f85213122c61b78f258aaecda2d3bf57369ae` |
| 7 | `theorem` | [unit_ne_one](../../../../mathematics/Algebra/RankOne/Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7.lean/declarations/unit-ne-one--6658e53477b386b973459794.md) | 67 | `result-track:6658e53477b386b973459794db22230f59262f2a988d9db864e8f6ac551ced36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
