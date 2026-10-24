# Verification target: GRWTSK.Algebra.Finiteness.Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `984d576665a5a281ef0cd1e61755a2adc0891932`.

Source path: `GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_isLocalizedModule](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/of-islocalizedmodule--3c31058f4dc4d8e7e3af2201.md) | 41 | `result-track:3c31058f4dc4d8e7e3af22014e8ef7e03d34882f6a0450e26c9b1de9700bb8ca` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/instance--2c5768221dd2ca8c1833dc35.md) | 60 | `declaration-track:2c5768221dd2ca8c1833dc35a895c173eb75d21f99dee96cc1b6a1c048eb8b84` |
| 3 | `theorem` | [of_localizationSpan_finite'](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/of-localizationspan-finite--f87af6c676ec7e6f5e7ffd26.md) | 76 | `result-track:f87af6c676ec7e6f5e7ffd269f3d932483230cce15e941c91af8747c6cdd5b58` |
| 4 | `theorem` | [of_localizationSpan'](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/of-localizationspan--2c9c5d76f11e586d069cc8c5.md) | 112 | `result-track:2c9c5d76f11e586d069cc8c5ec375a713cdf0bec7c59b0ff2f037df2959ece60` |
| 5 | `theorem` | [of_localizationSpan_finite](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/of-localizationspan-finite--ae7ae2c0930cb40c60dd442f.md) | 135 | `result-track:ae7ae2c0930cb40c60dd442f91679e4b05e1b4be49e50a830eb2af7606044879` |
| 6 | `theorem` | [of_localizationSpan](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/of-localizationspan--69911377212c780f24fdcbf4.md) | 145 | `result-track:69911377212c780f24fdcbf416180dd0edff12d1d1df3adc98a972eebc280cca` |
| 7 | `lemma` | [fg_of_localizationSpan](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/fg-of-localizationspan--a395ec36885d2cc3e07ce1f8.md) | 164 | `result-track:a395ec36885d2cc3e07ce1f8e4cf06fd5b288e87a6af783656c21a1a20fb456e` |
| 8 | `lemma` | [RingHom.ker_fg_of_localizationSpan](../../../../mathematics/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/declarations/ringhom-ker-fg-of-localizationspan--0b2aa2b1b423d537ba89a86c.md) | 179 | `result-track:0b2aa2b1b423d537ba89a86ca31988a3a28540f2be01f99d0dc51f71b7c1d3f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
