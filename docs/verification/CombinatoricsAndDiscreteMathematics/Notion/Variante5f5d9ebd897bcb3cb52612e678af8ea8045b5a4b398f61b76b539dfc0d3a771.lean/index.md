# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Notion.Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ObservationPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/observationpolicy--a28b22c121c6e6082d54a3be.md) | 23 | `declaration-track:a28b22c121c6e6082d54a3bed39e68d3e1e2bf4447313a04eebe75cadf854e40` |
| 2 | `def` | [ObservationallyEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/observationallyequivalent--91fc14ac9c163a5b877000b2.md) | 30 | `declaration-track:91fc14ac9c163a5b877000b20a890d7c60e5d130d905443fc177669df430cfbc` |
| 3 | `def` | [notionSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/notionsetoid--8e18b501627f82dc26924bb0.md) | 35 | `declaration-track:8e18b501627f82dc26924bb07b61c7737b99e36e2954d60351dc8a6f27394982` |
| 4 | `def` | [notionQuotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/notionquotient--8b6b577e2f5149c39d1ee1eb.md) | 42 | `declaration-track:8b6b577e2f5149c39d1ee1eb6958ee879ea1ddf75c1f0e5c3b71a19536fab41d` |
| 5 | `theorem` | [observationallyEquivalent_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/observationallyequivalent-of-budget-le--6fa786dfe9b9d205866ae2bb.md) | 47 | `result-track:6fa786dfe9b9d205866ae2bb35ac72ac0bc7234b6b6a6b5e39047c5265341473` |
| 6 | `structure` | [FiniteNotion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion--333f36cdeb78cfd2bfa3fac2.md) | 54 | `declaration-track:333f36cdeb78cfd2bfa3fac259ca8317d9b77432f5397f4b6d01033840200fb8` |
| 7 | `def` | [FiniteNotion.Equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion-equivalent--16fa5142c3f52847c9ee86d2.md) | 63 | `declaration-track:16fa5142c3f52847c9ee86d226cbcfc2c58f4592394b931938a2f0a963b1be05` |
| 8 | `def` | [FiniteNotion.setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion-setoid--bd5f977976b036527be77b2a.md) | 69 | `declaration-track:bd5f977976b036527be77b2ab19ecd854cdcbb8963e6da2d8d1e700a1f9141a1` |
| 9 | `def` | [FiniteNotion.compare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion-compare--67dc70949f7fd6a70d1de6f7.md) | 76 | `declaration-track:67dc70949f7fd6a70d1de6f7d52df69f414755ef6577715ce9ada137dc75d040` |
| 10 | `theorem` | [FiniteNotion.compare_eq_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion-compare-eq-true--c5ecf08e48cc81f8534b7533.md) | 82 | `result-track:c5ecf08e48cc81f8534b7533e951cd0f768de41b18671b848074c7f403eb41d8` |
| 11 | `theorem` | [FiniteNotion.equivalent_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion-equivalent-of-budget-le--ca6cd8e4af65d9e5aa86c613.md) | 89 | `result-track:ca6cd8e4af65d9e5aa86c6134be88db1dece3f063132deef8878ef4fd35fd352` |
| 12 | `theorem` | [FiniteNotion.equivalent_of_semantic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/declarations/finitenotion-equivalent-of-semantic--bc23443de6693d71c9402303.md) | 96 | `result-track:bc23443de6693d71c9402303cfd1638dc35fdb9b4b8c28ac2350680b54c791cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
