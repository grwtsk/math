# Verification target: GRWTSK.Algebra.InjSurj.Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b1ce239b2768990c2389f60295593e6863f65e",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean/index.md) · [Full source](../../../../mathematics/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b1ce239b2768990c2389f60295593e6863f65e`.

Source path: `GRWTSK/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOrderedRing](../../../../mathematics/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean/declarations/isorderedring--7c2092b1ad8e2e5131d638c5.md) | 31 | `result-track:7c2092b1ad8e2e5131d638c500f85f7b1238315fdd8631380f70dd8f5106a010` |
| 2 | `lemma` | [isStrictOrderedRing](../../../../mathematics/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean/declarations/isstrictorderedring--7f5afd049c502e438699bd81.md) | 48 | `result-track:7f5afd049c502e438699bd818aaf6cefe9fe71f369c660354711f1396e4f8887` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
