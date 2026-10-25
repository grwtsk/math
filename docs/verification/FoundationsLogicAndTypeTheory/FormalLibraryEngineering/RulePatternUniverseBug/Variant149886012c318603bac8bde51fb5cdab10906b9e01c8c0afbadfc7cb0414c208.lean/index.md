# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePatternUniverseBug.Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86d1e3d5da8bfddbf36eabd138bfcd35e1671442",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86d1e3d5da8bfddbf36eabd138bfcd35e1671442`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Frontend.Attribute` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Frontend.Saturate` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [len](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean/declarations/len--bea4d3f8fe4c6c9bcd19ee48.md) | 27 | `declaration-track:bea4d3f8fe4c6c9bcd19ee48812b77b1c0911256d4f6a3e80288a24343eb7c90` |
| 2 | `theorem` | [len_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean/declarations/len-pos--dce273326559cf7fd22e22cb.md) | 33 | `result-track:dce273326559cf7fd22e22cbf260316f72254be7ad506f1afc603a21ea53c3a4` |
| 3 | `def` | [indexOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean/declarations/indexopt--bcd2e7c3d89062042d8608ca.md) | 37 | `declaration-track:bcd2e7c3d89062042d8608ca84e8beaacc1cacbf03a28e7243b1f3f594411c82` |
| 4 | `theorem` | [indexOpt_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant149886012c318603bac8bde51fb5cdab10906b9e01c8c0afbadfc7cb0414c208.lean/declarations/indexopt-bounds--23da2fa96aacd2a07e0b4780.md) | 42 | `result-track:23da2fa96aacd2a07e0b478079c0b5acaaf774cce92fbc4c241e3597635bf3cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
