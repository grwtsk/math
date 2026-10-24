# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Newton.Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [newtonStepTM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonsteptm--4fe810a43e51f6a51523781e.md) | 62 | `declaration-track:4fe810a43e51f6a51523781ec0754fc39202df7d862d554cae503f99c3d798b1` |
| 2 | `def` | [newtonStepSimple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonstepsimple--57ddf0764b0843220caaaa88.md) | 98 | `declaration-track:57ddf0764b0843220caaaa8872a32c510ec929e93f0243f460194376629db077` |
| 3 | `def` | [newtonStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonstep--4b526873827f7e0d4f86e30f.md) | 122 | `declaration-track:4b526873827f7e0d4f86e30f987aea02bb35004d29fac297c0a93dcbc2b8c92a` |
| 4 | `def` | [newtonIntervalGo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonintervalgo--688d549797ba84ff4e578bf7.md) | 130 | `declaration-track:688d549797ba84ff4e578bf77d295d6726b3fe9a4b50cd4369c52947cf1e5d5a` |
| 5 | `def` | [newtonIntervalTM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonintervaltm--768bf73ae3a4333297dc56dc.md) | 178 | `declaration-track:768bf73ae3a4333297dc56dc817fb7790645e9284c66ae1a168ee8921b9439eb` |
| 6 | `def` | [newtonInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtoninterval--675647ffee9afdc68c8a982d.md) | 184 | `declaration-track:675647ffee9afdc68c8a982dc031a866d5fe5fa7d750c9c0112542ab7d67b62f` |
| 7 | `theorem` | [deriv_in_derivInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/deriv-in-derivinterval--93778b46a024992c491b8fc9.md) | 193 | `result-track:93778b46a024992c491b8fc9ab985078f3adb3a1363c20ae316f3e1e0313e8d0` |
| 8 | `theorem` | [mvt_for_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/mvt-for-eval--f0fbca6826f58ecdb38ce2c3.md) | 200 | `result-track:f0fbca6826f58ecdb38ce2c34277ca7618f5267482d40f8442b8a3aa8a0c3173` |
| 9 | `theorem` | [between_mem_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/between-mem-interval--1060fd1c59cd76defbe7944e.md) | 246 | `result-track:1060fd1c59cd76defbe7944e60c94e0fce873ce53419713d3a803e082e7dddb6` |
| 10 | `theorem` | [newton_operator_preserves_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newton-operator-preserves-root--919b96884d30e886a19c77c6.md) | 262 | `result-track:919b96884d30e886a19c77c6a07e58524a1aee3832630e1adc4c9e23c593e4f0` |
| 11 | `theorem` | [newton_preserves_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newton-preserves-root--07df0c88e182a03f8611d525.md) | 378 | `result-track:07df0c88e182a03f8611d52507cef6ae7b3770ffebab48a77a7a3dd92799a87c` |
| 12 | `theorem` | [newton_step_at_most_one_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newton-step-at-most-one-root--36f1bab2309da9b6dd0774c2.md) | 525 | `result-track:36f1bab2309da9b6dd0774c2de13ee2a6277fc18f6915436b0f733c62f47fb0c` |
| 13 | `structure` | [NewtonContractionData](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtoncontractiondata--8f651ee768329bd4fff6ec38.md) | 612 | `declaration-track:8f651ee768329bd4fff6ec3830548f84dad361483bb07af37895392b72058302` |
| 14 | `lemma` | [contraction_newton_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/contraction-newton-bounds--b19e51948e1fc6ac6368a952.md) | 626 | `result-track:b19e51948e1fc6ac6368a95276becf5934b26a81f594fc7c91958b839870c982` |
| 15 | `lemma` | [newtonStepSimple_extract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonstepsimple-extract--0e1ac4796b6472a212057546.md) | 654 | `result-track:0e1ac4796b6472a21205754659bf81d897bd8c3b8bb514dfe908adbf91461e5d` |
| 16 | `lemma` | [newtonStepTM_structure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonsteptm-structure--ca25194d3321874654d493a7.md) | 691 | `result-track:ca25194d3321874654d493a72abcafe710d7f44552d5fe062fc6a55242028af3` |
| 17 | `lemma` | [newtonStepTM_fc_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/declarations/newtonsteptm-fc-correct--6d89b4d28fd225c553d773fa.md) | 741 | `result-track:6d89b4d28fd225c553d773fafd39672f2b4109d8d214a4ff1284b45f31ce164c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
