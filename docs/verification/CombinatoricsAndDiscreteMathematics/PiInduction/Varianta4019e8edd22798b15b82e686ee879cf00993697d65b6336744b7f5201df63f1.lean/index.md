# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PiInduction.Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d59320137728479d061291c1518342f3048ef7c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d59320137728479d061291c1518342f3048ef7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction_on_pi_of_choice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean/declarations/induction-on-pi-of-choice--5d4f2570d8cd584910655745.md) | 36 | `result-track:5d4f2570d8cd584910655745833fe67f2d1f539b03e662c2d148a4a3ada7efb0` |
| 2 | `theorem` | [induction_on_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean/declarations/induction-on-pi--2e278168f04c9eb9e7d6de07.md) | 70 | `result-track:2e278168f04c9eb9e7d6de07e4a1db77a9657e4ff1beb322d1f841270d5e1395` |
| 3 | `theorem` | [induction_on_pi_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean/declarations/induction-on-pi-max--ee4d1e833a4c9597af59e0c2.md) | 83 | `result-track:ee4d1e833a4c9597af59e0c244ea1fe71e937531499571a8849fdea79c4ceba8` |
| 4 | `theorem` | [induction_on_pi_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Varianta4019e8edd22798b15b82e686ee879cf00993697d65b6336744b7f5201df63f1.lean/declarations/induction-on-pi-min--9cd0c01faeab2bbe30e9ea60.md) | 99 | `result-track:9cd0c01faeab2bbe30e9ea60ce4371e9e72b9f29be2ec109ec678d037cb24a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
