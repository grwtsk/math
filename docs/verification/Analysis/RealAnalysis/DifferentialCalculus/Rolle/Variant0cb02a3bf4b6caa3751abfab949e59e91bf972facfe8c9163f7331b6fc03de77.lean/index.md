# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Rolle.Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a0386107fb1f64456c9ee5319863c4b5d63bf60",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a0386107fb1f64456c9ee5319863c4b5d63bf60`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Rolle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean/declarations/exists-hasderivat-eq-zero--904d486ba73ddf50cc13c8e1.md) | 56 | `result-track:904d486ba73ddf50cc13c8e139da2f7a3d0c1e2766a8c15e9de91bcc8da287e6` |
| 2 | `theorem` | [exists_deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean/declarations/exists-deriv-eq-zero--732a68ca8b3680a1d7e07e5d.md) | 62 | `result-track:732a68ca8b3680a1d7e07e5df84f346fffe31ee45053c7bf79eeb2e2ae3db57f` |
| 3 | `theorem` | [exists_hasDerivAt_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean/declarations/exists-hasderivat-eq-zero--0989c6a9c3958f9abe2e2039.md) | 70 | `result-track:0989c6a9c3958f9abe2e203960ad935d4f47960aba880ab9a8ac94dfb7ea752d` |
| 4 | `theorem` | [exists_deriv_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Variant0cb02a3bf4b6caa3751abfab949e59e91bf972facfe8c9163f7331b6fc03de77.lean/declarations/exists-deriv-eq-zero--adedf9933cf5200a8b40ac53.md) | 81 | `result-track:adedf9933cf5200a8b40ac530e4f12fdd9379f87fb51b7f18d646d43c43b36fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
