# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extrema.Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7251e406a78734c4590711d74a4dacbcfd2aa8f2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7251e406a78734c4590711d74a4dacbcfd2aa8f2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalExtr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/declarations/isminon-of-islocalminon-of-convexon-icc--164eccf84ac09be9ab1044d8.md) | 30 | `result-track:164eccf84ac09be9ab1044d86d23931578ab39bb798cafcd975f1f401fae7185` |
| 2 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/declarations/isminon-of-islocalminon-of-convexon--9a28ca303b5da8558c3faa04.md) | 53 | `result-track:9a28ca303b5da8558c3faa049d442bf8d13bc1fb6709773db5d84dc8ceee6a54` |
| 3 | `theorem` | [IsMaxOn.of_isLocalMaxOn_of_concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/declarations/ismaxon-of-islocalmaxon-of-concaveon--b656760068e73e7b1c7e5040.md) | 72 | `result-track:b656760068e73e7b1c7e504068e0d8b96a6f48b8ca3ac1edfe419a98790bb893` |
| 4 | `theorem` | [IsMinOn.of_isLocalMin_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/declarations/isminon-of-islocalmin-of-convex-univ--fdbd0067c76028a6cd8cb3ea.md) | 78 | `result-track:fdbd0067c76028a6cd8cb3eaff138f1f05a041a708b0435aa13fbee7574656d1` |
| 5 | `theorem` | [IsMaxOn.of_isLocalMax_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant32c14ce938aa7db54e577104448e36bf6c797a9fc503ee78e7223ed05d6e8842.lean/declarations/ismaxon-of-islocalmax-of-convex-univ--32c922d6336097abaa6b117a.md) | 84 | `result-track:32c922d6336097abaa6b117aac1baf2135b47c9924fa6b06128a2cfa28f366eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
