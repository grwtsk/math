# Verification target: GRWTSK.Algebra.LinearAlgebra.CommonJ.Checks.SignAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d64f035459d5eb1dc3da7ab3ab38e6cd754f99a0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence78bbe8832994d335fcc66a80.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence78bbe8832994d335fcc66a80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d64f035459d5eb1dc3da7ab3ab38e6cd754f99a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.CommonJ`](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generic_sign_loop_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence78bbe8832994d335fcc66a80.lean/declarations/generic-sign-loop-consumer--01457e80877b7cd379238e55.md) | 8 | `result-track:01457e80877b7cd379238e55567f187ce5bc2238fc7d5e6e3830bf2a87d6871d` |
| 2 | `theorem` | [rational_reverse_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence78bbe8832994d335fcc66a80.lean/declarations/rational-reverse-consumer--669344a6b8bdcdf975f30d6f.md) | 14 | `result-track:669344a6b8bdcdf975f30d6f1c0b76119566cae9e8562b83dd76a2b4193345ca` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence78bbe8832994d335fcc66a80.lean/declarations/example--37d9ba87f363e21542266a61.md) | 18 | `declaration-track:37d9ba87f363e21542266a61c4ec7b4ce6782943974398e4b68ac6d23089632e` |
| 4 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence78bbe8832994d335fcc66a80.lean/declarations/elab--86a9dc9ed738b9f87ebcf206.md) | 24 | `declaration-track:86a9dc9ed738b9f87ebcf206a538bb0bcd1d44eb1ff3264761415f0eb3bc5e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
