# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Quotient.Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17fc224bbbaf92347a4c55af1b23a75bc9d2c41",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17fc224bbbaf92347a4c55af1b23a75bc9d2c41`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quotient.finChoiceAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/declarations/quotient-finchoiceaux--ac8060a1987da983a76ad14e.md) | 36 | `declaration-track:ac8060a1987da983a76ad14e18a3b912bfea93756692ea66826b38ff9a18386c` |
| 2 | `theorem` | [Quotient.finChoiceAux_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/declarations/quotient-finchoiceaux-eq--18c875d117ac6a0e43c45465.md) | 52 | `result-track:18c875d117ac6a0e43c4546502656464cabccdba9b085feba5a8f0ba5630aedd` |
| 3 | `def` | [Quotient.finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/declarations/quotient-finchoice--0c956d7265d647cbd086d3c1.md) | 67 | `declaration-track:0c956d7265d647cbd086d3c112c62b0f68fa733d30d5c547dc4262948e0b9ff5` |
| 4 | `theorem` | [Quotient.finChoice_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/declarations/quotient-finchoice-eq--6c5147f72bd77a1224f57ed0.md) | 85 | `result-track:6c5147f72bd77a1224f57ed00a4d2ea1a1f6c80e71c93430783f51a162e1ddbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
