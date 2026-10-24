# Verification target: GRWTSK.Algebra.LinearAlgebra.Subgroup.Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79fde5f0e0409d3422eeafdee3584bbf8c6754ec",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79fde5f0e0409d3422eeafdee3584bbf8c6754ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Submonoid.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean/declarations/mul--a963a4622568ac8df9de1162.md) | 24 | `declaration-track:a963a4622568ac8df9de11626c310643d769c335e4a04d6d656ad9402c4f5dd0` |
| 2 | `lemma` | [mul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean/declarations/mul-toaddsubmonoid--95376d304e1ad149a555e0db.md) | 33 | `result-track:95376d304e1ad149a555e0db6c8ce017fdc062cac26f84dfc8f5d501e437bf36` |
| 3 | `lemma` | [zero_smul](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693.lean/declarations/zero-smul--228e4fb1fb10d1494f2a6201.md) | 41 | `result-track:228e4fb1fb10d1494f2a62018008ad3778f36f1ab01148d3ad2b367d05e9055f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
