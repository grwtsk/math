# Verification target: GRWTSK.Analysis.Exponential.Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a09fb16e0ed98c585af831bb10e71648a41266c8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean/index.md) · [Full source](../../../../mathematics/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a09fb16e0ed98c585af831bb10e71648a41266c8`.

Source path: `GRWTSK/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Exponential` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selfAdjoint.expUnitary](../../../../mathematics/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean/declarations/selfadjoint-expunitary--3dc2c1ffc566e52afaf661eb.md) | 34 | `declaration-track:3dc2c1ffc566e52afaf661eb849212b32fb7d121f99ca8d39542bc39d50c631e` |
| 2 | `theorem` | [Commute.expUnitary_add](../../../../mathematics/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean/declarations/commute-expunitary-add--497a94350455bdb0d113f44c.md) | 41 | `result-track:497a94350455bdb0d113f44c5769258ac779f9fbdaf824901f61a383f1409318` |
| 3 | `theorem` | [Commute.expUnitary](../../../../mathematics/Analysis/Exponential/Variant969972d68de8a73fa19bea01b2a56b31fb072ae28306c3aaffe9d40eb9772cb1.lean/declarations/commute-expunitary--e240373a95098f1d1cd1204a.md) | 50 | `result-track:e240373a95098f1d1cd1204a85daf60effc2514e72484f6341906bb17525678a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
