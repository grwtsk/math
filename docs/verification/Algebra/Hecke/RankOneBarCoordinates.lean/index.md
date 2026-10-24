# Verification target: GRWTSK.Algebra.Hecke.RankOneBarCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58dac61a28644df3cf2717934e55800843562911",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58dac61a28644df3cf2717934e55800843562911`.

Source path: `GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/RankOneBarCoordinates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Hecke.RankOneNormalizedBasis`](../../../../mathematics/Algebra/Hecke/RankOneNormalizedBasis.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rankOneCoordinateMul](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/declarations/rankonecoordinatemul--7a6a7697573d7d934fd69b70.md) | 10 | `declaration-track:7a6a7697573d7d934fd69b70479a84e6505cb37cf97b3f48ddc19709e5093d18` |
| 2 | `def` | [rankOneBarCoordinates](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/declarations/rankonebarcoordinates--bd433c518cd413e35edd559c.md) | 15 | `declaration-track:bd433c518cd413e35edd559c3931534ad273b9dd843b4830b349457011e6c5ab` |
| 3 | `theorem` | [rankOne_bar_generators](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/declarations/rankone-bar-generators--810a35beb0bd69f31f2ad3da.md) | 19 | `result-track:810a35beb0bd69f31f2ad3da70dd26ea5e4819fc355d659b1a3c2bd4e92f0e24` |
| 4 | `theorem` | [rankOne_bar_involutive](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/declarations/rankone-bar-involutive--a4dd8e396ec456afa86c1e1e.md) | 25 | `result-track:a4dd8e396ec456afa86c1e1e515c499a993cd2d376ff323e05093533c7b53aec` |
| 5 | `theorem` | [rankOne_bar_mul](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/declarations/rankone-bar-mul--a212b09af26baacd8af5b8a2.md) | 36 | `result-track:a212b09af26baacd8af5b8a2b74f698a74e3bb528eb055b6db84fb13bd5f4573` |
| 6 | `theorem` | [rankOne_bar_normalized_fixed](../../../../mathematics/Algebra/Hecke/RankOneBarCoordinates.lean/declarations/rankone-bar-normalized-fixed--5fae54eefc52cd955c3447b2.md) | 46 | `result-track:5fae54eefc52cd955c3447b2d2e451d6cebe9970d56c4bbbc6f2b16fe1cf7349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
