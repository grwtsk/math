# Verification target: GRWTSK.Analysis.Complex.ClosedDiskCauchy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f044d4628afdb613bec1ea2eab642f9c7920db",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ClosedDiskCauchy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f044d4628afdb613bec1ea2eab642f9c7920db`.

Source path: `GRWTSK/Analysis/Complex/ClosedDiskCauchy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ClosedDiskCauchy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Liouville` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [diffContOnCl_ball](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/declarations/diffcontoncl-ball--3796db532921c93c10ce8513.md) | 24 | `result-track:3796db532921c93c10ce85137fbd1719d16fa978a09b0f29dc09455edf8a0cbe` |
| 2 | `theorem` | [translated_disk_subset](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/declarations/translated-disk-subset--50d379b5f08c37c64c50c84a.md) | 32 | `result-track:50d379b5f08c37c64c50c84a073c667485991f55fd0901ed2963064e07305255` |
| 3 | `theorem` | [norm_iteratedDeriv_le_on_inner](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/declarations/norm-iteratedderiv-le-on-inner--1c2a99f048236efafa0f0210.md) | 39 | `result-track:1c2a99f048236efafa0f021088b0cd78795490a347d1e397436a79215b642504` |
| 4 | `theorem` | [norm_secondDeriv_le_on_inner](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/declarations/norm-secondderiv-le-on-inner--d95635750a25a61eb956ca93.md) | 52 | `result-track:d95635750a25a61eb956ca936b328bd52b43ef679f5b3268d7d55e1ab2276a89` |
| 5 | `theorem` | [derivative_error_at_center](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/declarations/derivative-error-at-center--4367d6b9ddb7dfdcf462fcf5.md) | 61 | `result-track:4367d6b9ddb7dfdcf462fcf5e43480ef40134b08190f463f2ed1e1e4203523d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
