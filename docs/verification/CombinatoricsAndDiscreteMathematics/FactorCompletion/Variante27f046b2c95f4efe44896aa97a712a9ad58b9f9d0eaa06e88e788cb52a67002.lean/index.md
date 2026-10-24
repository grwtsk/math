# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FactorCompletion.Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90c7aa5f19b5fe7dbc82044798da9295d26732b2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90c7aa5f19b5fe7dbc82044798da9295d26732b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.FactorState` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonicalExactExtraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/canonicalexactextraction--7ec4e064d05215d46fd22ad3.md) | 19 | `result-track:7ec4e064d05215d46fd22ad3c3d35e5af8b523652fe57408b7bea6740206870d` |
| 2 | `inductive` | [ExtractionPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/extractionpath--ab56cb68d7b51ef25540f5e3.md) | 29 | `declaration-track:ab56cb68d7b51ef25540f5e3ff0e4799f9b18550be283542ebb0373d958723ba` |
| 3 | `def` | [identityRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/identityrefinement--47b43cc45e8d55a38225efe6.md) | 36 | `declaration-track:47b43cc45e8d55a38225efe609107d681abc383c8cef5abfc9dfd1dfd1e4b258` |
| 4 | `theorem` | [ExtractionPath.refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/extractionpath-refines--ea20c97191a373fe03d8aff7.md) | 44 | `result-track:ea20c97191a373fe03d8aff75871bd4cb8ac9bd45cc81e8e1162f83a3ea69d89` |
| 5 | `theorem` | [ExtractionPath.preserves_exclusions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/extractionpath-preserves-exclusions--ef5daf9214d496b0dcc4d54a.md) | 53 | `result-track:ef5daf9214d496b0dcc4d54a3b3df60de2b03ceb1c3391e9f2308d4606259520` |
| 6 | `theorem` | [nonterminal_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/nonterminal-step--a87d95f5f10d6c9fa90bd04a.md) | 59 | `result-track:a87d95f5f10d6c9fa90bd04a149f719d7425bf5fa20da1cdbf9a87e3ba09ebf6` |
| 7 | `theorem` | [finite_terminal_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/finite-terminal-completion--2bb200206d4b792e7275b1c2.md) | 69 | `result-track:2bb200206d4b792e7275b1c29299ea38ce32635531283d359e87a19a5e8c829a` |
| 8 | `theorem` | [finite_complete_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/declarations/finite-complete-factorization--789d573ae3adc3e8bada8b1b.md) | 92 | `result-track:789d573ae3adc3e8bada8b1b9b886b6f1fa286d2b846e200b94c96ddb1274ae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
