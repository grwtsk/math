# Verification target: GRWTSK.Analysis.Convolution.FiniteTranslateIndependence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "128afcfc7125f3aff8951de1be140c29840663bf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `128afcfc7125f3aff8951de1be140c29840663bf`.

Source path: `GRWTSK/Analysis/Convolution/FiniteTranslateIndependence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/FiniteTranslateIndependence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isolate_rightmost_translate](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/declarations/isolate-rightmost-translate--0da1663bdd4f24a633d4c8f7.md) | 36 | `result-track:0da1663bdd4f24a633d4c8f7c8ce4764cc729c1861e1562adf2aa3e6f0c89778` |
| 2 | `theorem` | [finite_translate_combination_ne_zero](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/declarations/finite-translate-combination-ne-zero--8b1d4276bdc913bc871b264c.md) | 67 | `result-track:8b1d4276bdc913bc871b264cc8d2d2f82157bdb7eaa0fe34f22dc36429f2d815` |
| 3 | `theorem` | [finite_translate_combination_eq_zero_iff](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/declarations/finite-translate-combination-eq-zero-iff--2834e507824643ec2817fe1a.md) | 100 | `result-track:2834e507824643ec2817fe1a5ea3b873883738ebd18c6086506f7f1dcbd34d6d` |
| 4 | `theorem` | [finite_translates_linearIndependent](../../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/declarations/finite-translates-linearindependent--5e460ee20a89f2b19c8906d5.md) | 119 | `result-track:5e460ee20a89f2b19c8906d5947f43bf14ed24ab68db077e6cd0c90f9e0c40cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
