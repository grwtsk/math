# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Completion.Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe5e32527dee4abf4ebc1e448d6c067e3fbe6df9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe5e32527dee4abf4ebc1e448d6c067e3fbe6df9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Completion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isBigO_completion_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/declarations/isbigo-completion-left--f2b830cc8107bfbdf8dbc1b4.md) | 26 | `result-track:f2b830cc8107bfbdf8dbc1b4b17eff403ec2a1878e3841dac63884c30d6b578e` |
| 2 | `lemma` | [isBigO_completion_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/declarations/isbigo-completion-right--c3e292db88b149cae581c16b.md) | 30 | `result-track:c3e292db88b149cae581c16baa83c66c4a50faf7395fd527175fb2c6e4fc62e7` |
| 3 | `lemma` | [isTheta_completion_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/declarations/istheta-completion-left--f46fc5b3c6e65ac38ccbddfc.md) | 34 | `result-track:f46fc5b3c6e65ac38ccbddfc005e79b3bd7fc3055160fb289e1b80a2270bb600` |
| 4 | `lemma` | [isTheta_completion_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/declarations/istheta-completion-right--5a150aefd7f5080ae41803f7.md) | 38 | `result-track:5a150aefd7f5080ae41803f7469a6621e2c01e7e01194ddcdd8605de1e9cd6a6` |
| 5 | `lemma` | [isLittleO_completion_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/declarations/islittleo-completion-left--7350e48720c48f782dac10c5.md) | 42 | `result-track:7350e48720c48f782dac10c53caac9ed7f1b8b879db280f64d1e4f2e003d3806` |
| 6 | `lemma` | [isLittleO_completion_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean/declarations/islittleo-completion-right--caaba29ce8e44f3d8b2bf4f9.md) | 46 | `result-track:caaba29ce8e44f3d8b2bf4f9f604455b5084fd1ccbd502af634f73f5706cfc4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
