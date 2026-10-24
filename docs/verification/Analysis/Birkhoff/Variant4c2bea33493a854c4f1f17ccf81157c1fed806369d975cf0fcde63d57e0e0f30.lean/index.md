# Verification target: GRWTSK.Analysis.Birkhoff.Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561572bf510695d78f78f2171d2551f3c8a15c37",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/index.md) · [Full source](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561572bf510695d78f78f2171d2551f3c8a15c37`.

Source path: `GRWTSK/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Extreme` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Hall.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DoublyStochastic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_perm_eq_zero_implies_eq_zero](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/declarations/exists-perm-eq-zero-implies-eq-zero--acacaa6c855d708b413c4cde.md) | 47 | `result-track:acacaa6c855d708b413c4cde047560f2a8d5e8bfe9d67f4db31ae72eaf588194` |
| 2 | `lemma` | [doublyStochastic_sum_perm_aux](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/declarations/doublystochastic-sum-perm-aux--ab9fc2973f393969f5a534c5.md) | 85 | `result-track:ab9fc2973f393969f5a534c5994ae8c509374b04ae330c3a1d0f93e03a44af3c` |
| 3 | `lemma` | [exists_eq_sum_perm_of_mem_doublyStochastic](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/declarations/exists-eq-sum-perm-of-mem-doublystochastic--86642665888d5cdec9382675.md) | 146 | `result-track:86642665888d5cdec938267596e2acd93b19b178d8d0619936b9adde6c38f1d1` |
| 4 | `theorem` | [doublyStochastic_eq_convexHull_permMatrix](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/declarations/doublystochastic-eq-convexhull-permmatrix--ad0cffaecfcfe2e95377ef04.md) | 164 | `result-track:ad0cffaecfcfe2e95377ef0401deef26e27d277f739c38f4d070ba1b0dd9fc25` |
| 5 | `theorem` | [extremePoints_doublyStochastic](../../../../mathematics/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/declarations/extremepoints-doublystochastic--ab4fbc39f1ca88c8c832378c.md) | 177 | `result-track:ab4fbc39f1ca88c8c832378c3d812405f11d3a5d24911b4b3cfce941fd1a3adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
