# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Choose.Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d937359db4045baa0e5ddeba664fb8db6aa1cd7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d937359db4045baa0e5ddeba664fb8db6aa1cd7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isEquivalent_descFactorial](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean/declarations/isequivalent-descfactorial--8c25fe80427acf61d667a67e.md) | 26 | `result-track:8c25fe80427acf61d667a67e5893bfe695edfbb195a3b9cf2f1ec4c8b904fa7a` |
| 2 | `theorem` | [isEquivalent_choose](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean/declarations/isequivalent-choose--8e64b8eff769ee19338074ae.md) | 39 | `result-track:8e64b8eff769ee19338074ae8d9e423f4a107213a2fa0a1ab7129c5790555855` |
| 3 | `theorem` | [isTheta_choose](../../../../../mathematics/Analysis/AsymptoticAnalysis/Choose/Variantb1fe62538472062fbd0e2ba80d7ac67a4edd2f6234216b1254193593827aaf54.lean/declarations/istheta-choose--cce53ee2b8c83a4b6983fb21.md) | 48 | `result-track:cce53ee2b8c83a4b6983fb2179942110524f63295681275caa75ffaa62992912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
