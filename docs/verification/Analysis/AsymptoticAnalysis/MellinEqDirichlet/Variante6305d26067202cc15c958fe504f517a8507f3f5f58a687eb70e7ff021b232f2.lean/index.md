# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MellinEqDirichlet.Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0099a1980ed75ec12f219317bec2527356b991b0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0099a1980ed75ec12f219317bec2527356b991b0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasSum_mellin](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/declarations/hassum-mellin--47eecdc729e3fe1a09080881.md) | 21 | `result-track:47eecdc729e3fe1a090808819650fa4e66160518cfcb15c494c16101ccfdfcc3` |
| 2 | `lemma` | [hasSum_mellin_pi_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/declarations/hassum-mellin-pi-mul--2c204a6f64714d5873d61a4b.md) | 65 | `result-track:2c204a6f64714d5873d61a4bdf9b9a37914a74e360ddd36994474b4ad4d68dad` |
| 3 | `lemma` | [hasSum_mellin_pi_mul₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/declarations/hassum-mellin-pi-mul--19cb917b637313ddb5ac0ab3.md) | 86 | `result-track:19cb917b637313ddb5ac0ab32bc124d65046557d817d080ace10078161c14fa2` |
| 4 | `lemma` | [hasSum_mellin_pi_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/declarations/hassum-mellin-pi-mul-sq--11e11cb35d2da353b1ee7847.md) | 113 | `result-track:11e11cb35d2da353b1ee7847b74f21292f0421c32e6e8ab4206bb280e50220a5` |
| 5 | `lemma` | [hasSum_mellin_pi_mul_sq'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/declarations/hassum-mellin-pi-mul-sq--7b1adeaac7605e3d6779abf5.md) | 129 | `result-track:7b1adeaac7605e3d6779abf535e5fef3e537c52d9726b451ff01a9c4d5328a55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
