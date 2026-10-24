# Verification target: GRWTSK.Analysis.TestFunction.Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05710b3d14196d21bf7516ea4a21b409c4434e4c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunction/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05710b3d14196d21bf7516ea4a21b409c4434e4c`.

Source path: `GRWTSK/Analysis/TestFunction/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunction/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/primitiveweiltestfunction--0ec59e06422dc0f241e7314f.md) | 42 | `declaration-track:0ec59e06422dc0f241e7314fcb1c06c26f149ad6b9b7bffca1bc6e3c8cc1b968` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/instance--95b92a784e96cf8ce582bd51.md) | 52 | `declaration-track:95b92a784e96cf8ce582bd51b4622583b852719418de3fe321c972202d6a122d` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/coe-mk--932ceca776b7026e2379b051.md) | 56 | `result-track:932ceca776b7026e2379b051f64a8fd1afcd215ba5a0e2bc5ed4b4b5ec8ac910` |
| 4 | `theorem` | [continuous](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/continuous--42e799fb919bb7a6ceb48d0f.md) | 63 | `result-track:42e799fb919bb7a6ceb48d0fa18582d1c94f385cda9e219b20cd7e368edc972f` |
| 5 | `theorem` | [hasCompactSupport](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/hascompactsupport--b655d166a23d272ea3d0e0e7.md) | 67 | `result-track:b655d166a23d272ea3d0e0e7f6fc856b4fac042b7982448f7fbb9ea56eea2de4` |
| 6 | `theorem` | [integrable](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/integrable--a2e3f43ba3794d1c98c53539.md) | 72 | `result-track:a2e3f43ba3794d1c98c535395d72813a4f1d358dd7032619b35349c3acfff6ad` |
| 7 | `theorem` | [locallyIntegrable](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/locallyintegrable--6381c19fee983457619a9a24.md) | 76 | `result-track:6381c19fee983457619a9a244544ce62006de75184c97a17922f4c3920e0d671` |
| 8 | `def` | [star](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/star--fe65429f816c5406edcb5925.md) | 82 | `declaration-track:fe65429f816c5406edcb592577a5aed3a0a771f7133604ec2c112d62b8d98f3b` |
| 9 | `theorem` | [star_apply](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/star-apply--08027963c38f3c8eaaabc95f.md) | 103 | `result-track:08027963c38f3c8eaaabc95f81033ef835386fc3e42a8f3822e5cb4b8f77ef25` |
| 10 | `theorem` | [star_supportRadius](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/star-supportradius--fe8d6747c1ee7b393b423bac.md) | 108 | `result-track:fe8d6747c1ee7b393b423bac3f06121062e11995818016b310e246f7d537ee20` |
| 11 | `theorem` | [star_star_apply](../../../../mathematics/Analysis/TestFunctions/Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb.lean/declarations/star-star-apply--8c3c6e6eab02ab343c586c78.md) | 113 | `result-track:8c3c6e6eab02ab343c586c78cf1a3257303f4e1ae70c052097cbf162ef1839d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
