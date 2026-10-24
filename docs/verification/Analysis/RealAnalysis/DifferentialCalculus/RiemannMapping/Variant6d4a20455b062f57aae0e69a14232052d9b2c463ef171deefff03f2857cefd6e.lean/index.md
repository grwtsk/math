# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RiemannMapping.Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4d5aaf6c9e2cfc0b48aef512c9e8585d33c2ece",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4d5aaf6c9e2cfc0b48aef512c9e8585d33c2ece`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BranchLogRoot` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_injective_not_dense_image_deriv_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean/declarations/exists-injective-not-dense-image-deriv-ne-zero--ffd3aa03ee44725a50768894.md) | 59 | `result-track:ffd3aa03ee44725a507688942cde78a75fb5b73ad5589a16d2454fb57513e1ee` |
| 2 | `lemma` | [exists_mapsTo_unitBall_injOn_deriv_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant6d4a20455b062f57aae0e69a14232052d9b2c463ef171deefff03f2857cefd6e.lean/declarations/exists-mapsto-unitball-injon-deriv-ne-zero--e5a4438b0d544c3e6fa2ab7a.md) | 128 | `result-track:e5a4438b0d544c3e6fa2ab7a48fefb9f52f31c818561202be0d133e2dd2f26a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
