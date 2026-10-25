# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CryptographicReduction.Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4c1284184d45fcfecc5de5d520977dd55f102bd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4c1284184d45fcfecc5de5d520977dd55f102bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.AdversaryInvariant` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OracleToConcreteReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/declarations/oracletoconcretereduction--a9769e8026b83942c6079800.md) | 20 | `declaration-track:a9769e8026b83942c60798009f9c24eb4ebd238130d657769d389e9919cb9d46` |
| 2 | `structure` | [QueryToWorkTranslation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/declarations/querytoworktranslation--caf773965ae99a35045b41c1.md) | 38 | `declaration-track:caf773965ae99a35045b41c1672851657cfa87961c27fdc033db70d1ab1459f7` |
| 3 | `structure` | [ConcreteHardnessCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/declarations/concretehardnesscertificate--115d9d1b357f97b83f889a6b.md) | 51 | `declaration-track:115d9d1b357f97b83f889a6bdd25bae497efa61fe8985955c9eed16e8102cf56` |
| 4 | `theorem` | [work_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/declarations/work-lower-bound--0a69eba2e2fa04b4f5a85cf7.md) | 79 | `result-track:0a69eba2e2fa04b4f5a85cf775f70646f1ef49a3ae978ef2caea3902cdda696f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
