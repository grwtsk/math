# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HarrisKleitman.Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74cfad14250468621fcf4f12bf95157af3ab0d7e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74cfad14250468621fcf4f12bf95157af3ab0d7e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLowerSet.nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/islowerset-nonmembersubfamily--36758939971eb7a646b17c83.md) | 34 | `result-track:36758939971eb7a646b17c83cbc92ef6770a066443445a844e98c5eecb37ee49` |
| 2 | `theorem` | [IsLowerSet.memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/islowerset-membersubfamily--35ea4a8d0b28b8788dd219b6.md) | 39 | `result-track:35ea4a8d0b28b8788dd219b673c7f9e795cb1de2af8b4fcdc1b294b1ac2b5239` |
| 3 | `theorem` | [IsLowerSet.memberSubfamily_subset_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/islowerset-membersubfamily-subset-nonmembersubfamily--d2867d434b75e24fac29f675.md) | 45 | `result-track:d2867d434b75e24fac29f67527d1bd07f45cb6e4b26fc5764cafde6e0ca389f8` |
| 4 | `theorem` | [IsLowerSet.le_card_inter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/islowerset-le-card-inter-finset--e990f61dda24f5e41c457c0f.md) | 51 | `result-track:e990f61dda24f5e41c457c0f34afddbbf55109838fd89be72d024cefb65fae93` |
| 5 | `theorem` | [IsLowerSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/islowerset-le-card-inter-finset--53d0002f8ac3272e326ac633.md) | 94 | `result-track:53d0002f8ac3272e326ac633634d32d4e8a7981de8882dcf2b29e237b7dd30be` |
| 6 | `theorem` | [IsUpperSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/isupperset-card-inter-le-finset--f47fba83867060ab3a57fe66.md) | 99 | `result-track:f47fba83867060ab3a57fe6666c3ccbe5a046e5affe453e3c0d8c8c97e732f1b` |
| 7 | `theorem` | [IsLowerSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/islowerset-card-inter-le-finset--721163e9a68560eae9ed4cf2.md) | 109 | `result-track:721163e9a68560eae9ed4cf2511521e0b4017f2a85f25f1a7276254afa742689` |
| 8 | `theorem` | [IsUpperSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantcc7ece7599a24a1aaec7250a3a2b85949d1e02554b1943d3b37785d7001f382d.lean/declarations/isupperset-le-card-inter-finset--a76f95dc9675c1d776f796d0.md) | 116 | `result-track:a76f95dc9675c1d776f796d038b430bfa4948eff3e8792c20bbb2d0b0dccb0af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
