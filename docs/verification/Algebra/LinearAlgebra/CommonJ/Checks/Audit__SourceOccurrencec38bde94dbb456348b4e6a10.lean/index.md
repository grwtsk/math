# Verification target: GRWTSK.LinearAlgebra.CommonJ.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4258ccf87c2066dcdc4eb850121bf6a61d530aea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/CommonJ/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4258ccf87c2066dcdc4eb850121bf6a61d530aea`.

Source path: `GRWTSK/LinearAlgebra/CommonJ/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/CommonJ/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.CommonJ`](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/declarations/example--4b0197204ec0f2ee8260b202.md) | 9 | `declaration-track:4b0197204ec0f2ee8260b202b23bf6d7a587263acfab6b06511613c93f9bffef` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/declarations/example--5d59978d91e4e221f9bce412.md) | 11 | `declaration-track:5d59978d91e4e221f9bce41289df7f0b88fcf1a08420bc256504892e296edfc2` |
| 3 | `theorem` | [commuting_units_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/declarations/commuting-units-consumer--d8a5f40a7f5db6423b78c758.md) | 16 | `result-track:d8a5f40a7f5db6423b78c75826ed1c7a0ba66bb3c2fd2b5bdc54071d8b89622a` |
| 4 | `theorem` | [rational_obstruction_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/declarations/rational-obstruction-consumer--46c160a202a6f7fb02249367.md) | 21 | `result-track:46c160a202a6f7fb02249367ae29ff17a5ea7634848e5fc06ef7cf1c44f0562c` |
| 5 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrencec38bde94dbb456348b4e6a10.lean/declarations/elab--16e729387bb3dc1e44864e37.md) | 30 | `declaration-track:16e729387bb3dc1e44864e370a50eb7b744e94f27665acc524430ebc1b5ab18a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
