# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b400e2c9a01418331e2f78679f427d9a8ca1ddf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b400e2c9a01418331e2f78679f427d9a8ca1ddf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Theta` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isTheta_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/istheta-ofreal--9610fcff2ada931b05943e13.md) | 19 | `result-track:9610fcff2ada931b05943e13febe8ace32621d74dcebf54ada60373202fa53ec` |
| 2 | `theorem` | [isLittleO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/islittleo-ofreal-left--2dabd7d1b58f97c1fadd804a.md) | 23 | `result-track:2dabd7d1b58f97c1fadd804a68cabcd8cc6ed6467f21e57c813c928396160d28` |
| 3 | `theorem` | [isLittleO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/islittleo-ofreal-right--9576979a6a40fe7490c31d05.md) | 27 | `result-track:9576979a6a40fe7490c31d0581cbe45c7bd95136e1fde58bca8ae4a2165cbefa` |
| 4 | `theorem` | [isBigO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/isbigo-ofreal-left--6feac7e7fc748fe0a15b8161.md) | 31 | `result-track:6feac7e7fc748fe0a15b81615b7cae42022c0c46f38ff662d1900b4b2c66b555` |
| 5 | `theorem` | [isBigO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/isbigo-ofreal-right--e60a02b57ef68b79f1fef07a.md) | 35 | `result-track:e60a02b57ef68b79f1fef07a35eb12077c733a032d411caab71516e583bd199c` |
| 6 | `theorem` | [isTheta_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/istheta-ofreal-left--5ff9ef928ac4c194d3d99521.md) | 39 | `result-track:5ff9ef928ac4c194d3d995215f6161136d59b9164c909839b4d10665a7241e44` |
| 7 | `theorem` | [isTheta_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/istheta-ofreal-right--74f8c9b0b346b8732b85fa80.md) | 43 | `result-track:74f8c9b0b346b8732b85fa804d0f06ed4dfefd6801d2d6f9b8d6e2c6d08944df` |
| 8 | `lemma` | [isBigO_comp_ofReal_nhds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/isbigo-comp-ofreal-nhds--63327dd860dab0e007594569.md) | 48 | `result-track:63327dd860dab0e007594569c98776758baeb73a57987cd63dbec2f7133b704a` |
| 9 | `lemma` | [isBigO_comp_ofReal_nhds_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9d9e95f53ca5770e211c49f3cd74cbe3d93db713cf22ffeacf194f96bda1b205.lean/declarations/isbigo-comp-ofreal-nhds-ne--79d8d65b76d1ac6d7f407728.md) | 52 | `result-track:79d8d65b76d1ac6d7f4077286c6a19953f315705d3dacee0dd16dbaabfab957e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
