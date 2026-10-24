# Verification target: GRWTSK.Algebra.IntermediateField.Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6016d298478c6c8a8283aa3cf74acabd3707d9bf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6016d298478c6c8a8283aa3cf74acabd3707d9bf`.

Source path: `GRWTSK/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [charP](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/charp--8e1d6eeb70c391d54fbac890.md) | 25 | `declaration-track:8e1d6eeb70c391d54fbac8908a9a53e6554c7bd25032d32c6ac99f67fd703f23` |
| 2 | `instance` | [expChar](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/expchar--88efb772ce37f78b3d6dce72.md) | 27 | `declaration-track:88efb772ce37f78b3d6dce729981a977dc7a902e70c8113b6ccfce3c94e93186` |
| 3 | `instance` | [charZero](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/charzero--78e5ffb25a33eb09becf6966.md) | 35 | `declaration-track:78e5ffb25a33eb09becf696683d19cda88322c5df90c30536c46c9a4563116cc` |
| 4 | `instance` | [charP](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/charp--0153c65096db3974e24529ef.md) | 38 | `declaration-track:0153c65096db3974e24529ef0029f1197c0c0f5fa057999a8022bb5cc8c5482e` |
| 5 | `instance` | [expChar](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/expchar--933d95a8b2cef622520cd0e7.md) | 41 | `declaration-track:933d95a8b2cef622520cd0e772c9e6b22716d2f853ac053912a3a36dfadbfe34` |
| 6 | `instance` | [charP'](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/charp--297e1676399ca2a3f832e4ba.md) | 44 | `declaration-track:297e1676399ca2a3f832e4ba5454c7dbd6c8459ed541d53721f760e3144a1fb1` |
| 7 | `instance` | [expChar'](../../../../mathematics/Algebra/IntermediateField/Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc.lean/declarations/expchar--46579b06378ee5a9bd2a3b51.md) | 46 | `declaration-track:46579b06378ee5a9bd2a3b515bfaba250e5c0dbeb855cb91a34c4d14ecfbc158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
