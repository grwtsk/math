# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Choose.Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24c5b7e04cff82ca8e2300e64da8a8d9e2f07996",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24c5b7e04cff82ca8e2300e64da8a8d9e2f07996`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isEquivalent_descFactorial](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/declarations/isequivalent-descfactorial--aea78ab799194c0262b8ca58.md) | 34 | `result-track:aea78ab799194c0262b8ca58add2150775cc7ca549385131416e7069b2d94116` |
| 2 | `theorem` | [isEquivalent_choose](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/declarations/isequivalent-choose--4338ae5cb3df8911420d0582.md) | 47 | `result-track:4338ae5cb3df8911420d0582588398d217e3441c1e0daa9163209c6d0ba29664` |
| 3 | `theorem` | [isTheta_choose](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/declarations/istheta-choose--d8bf68d218325a01494466bf.md) | 56 | `result-track:d8bf68d218325a01494466bf0102d35bbef8871e4bd7de83f75c5a7883e385e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
