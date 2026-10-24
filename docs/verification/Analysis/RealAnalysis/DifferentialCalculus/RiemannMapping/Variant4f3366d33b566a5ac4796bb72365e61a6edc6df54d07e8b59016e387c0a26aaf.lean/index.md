# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RiemannMapping.Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64ea944d1c88edb19272d44d1805ed958d27f7a0",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64ea944d1c88edb19272d44d1805ed958d27f7a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BranchLogRoot` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_injective_not_dense_image_deriv_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean/declarations/exists-injective-not-dense-image-deriv-ne-zero--d7dfe82e712e2908ed9801e3.md) | 51 | `result-track:d7dfe82e712e2908ed9801e362cd3f10060482bf9b4f52c43b9284123088bf37` |
| 2 | `lemma` | [exists_mapsTo_unitBall_injOn_deriv_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RiemannMapping/Variant4f3366d33b566a5ac4796bb72365e61a6edc6df54d07e8b59016e387c0a26aaf.lean/declarations/exists-mapsto-unitball-injon-deriv-ne-zero--718a5ec7c4bad88d97d36132.md) | 120 | `result-track:718a5ec7c4bad88d97d3613240c54e51ba637263e570fa09d9d27e1736a7a1fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
