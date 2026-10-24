# Verification target: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "582cf78db42710cc7fb00f71710776754b2769ab",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence4eb486f2e969731a59455a37.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence4eb486f2e969731a59455a37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `582cf78db42710cc7fb00f71710776754b2769ab`.

Source path: `GRWTSK/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrence1b935086502b7f96acb46a5b.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_recurrence](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence4eb486f2e969731a59455a37.lean/declarations/use-recurrence--826264e395502a76c6dfac2e.md) | 5 | `result-track:826264e395502a76c6dfac2e7fc04a0708388504f3822059a5db20e97189e135` |
| 2 | `theorem` | [use_determinant](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence4eb486f2e969731a59455a37.lean/declarations/use-determinant--0ee1ce1eb167729e71ff40b7.md) | 7 | `result-track:0ee1ce1eb167729e71ff40b7a380d413da4adb644635e16b06dd09cef0b89b39` |
| 3 | `theorem` | [use_inequality](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence4eb486f2e969731a59455a37.lean/declarations/use-inequality--03d37b20a83671e9f47ab2f4.md) | 8 | `result-track:03d37b20a83671e9f47ab2f4bbdf5ec46aed1118d19c7fd26c9faff0ba0d5200` |
| 4 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence4eb486f2e969731a59455a37.lean/declarations/elab--5d5b8971ca6856c37831a843.md) | 10 | `declaration-track:5d5b8971ca6856c37831a843ae6f354441f529c23cb6a147a4f2749da2511059` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
