# Verification target: GRWTSK.Algebra.RingTheory.Integral.Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca71edd787020be566ed691b4164158fbc3f4008",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca71edd787020be566ed691b4164158fbc3f4008`.

Source path: `GRWTSK/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_of_integral](../../../../../mathematics/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/declarations/mem-of-integral--4372fb4ec2af52f29b62972d.md) | 38 | `result-track:4372fb4ec2af52f29b62972d3959aca0bf48da3bedf7a0266fa2ebfec3d91138` |
| 2 | `theorem` | [integralClosure](../../../../../mathematics/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/declarations/integralclosure--aa7c331ae48298004f8197af.md) | 51 | `result-track:aa7c331ae48298004f8197afdf5b91d9e6c27eb5cf19114877e132bfe1c9c2e0` |
| 3 | `theorem` | [integrallyClosed](../../../../../mathematics/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/declarations/integrallyclosed--4295964c4b0d9419329d934c.md) | 66 | `result-track:4295964c4b0d9419329d934c04ffab9bf2155d87c96f54d993d9564dda89aca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
