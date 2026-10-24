# Verification target: GRWTSK.Analysis.MeasureTheory.AddChar.Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "557246eefad904604d2b3baa9f31964464144075",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `557246eefad904604d2b3baa9f31964464144075`.

Source path: `GRWTSK/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.AddChar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean/declarations/instmeasurablespace--92b74d681334df10754c7adc.md) | 32 | `declaration-track:92b74d681334df10754c7adcb33a68627c878418b26e9cc01842b726c39af3f1` |
| 2 | `instance` | [instDiscreteMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df.lean/declarations/instdiscretemeasurablespace--f39b5bf631fc3c7d0cda4e53.md) | 36 | `declaration-track:f39b5bf631fc3c7d0cda4e53ca8d06aa43a0c45a0fa489c63336859976833b39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
