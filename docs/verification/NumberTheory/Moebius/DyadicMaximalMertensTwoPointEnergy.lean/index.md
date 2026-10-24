# Verification target: GRWTSK.NumberTheory.Moebius.DyadicMaximalMertensTwoPointEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03ab1bb293e395f77da651848424439dbc345f34",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03ab1bb293e395f77da651848424439dbc345f34`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicQuadraticMertensTwoPointPrefix`](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Order.PartialSups` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointPrefixMax](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/mertenstwopointprefixmax--e2708ace13caeacd3f9d7fcf.md) | 37 | `declaration-track:e2708ace13caeacd3f9d7fcfddf00a6bb8b87b0ddbf4a0fa8c753477fd34341f` |
| 2 | `def` | [mertensTwoPointMaximalQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/mertenstwopointmaximalquadraticenergy--dc694be18fb8ae4036feb70b.md) | 43 | `declaration-track:dc694be18fb8ae4036feb70bb8197ada7a386a0b72ba96f3fb7f8b0cb278474b` |
| 3 | `def` | [DyadicMertensTwoPointMaximalEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/dyadicmertenstwopointmaximalenergy--0ddf3eed1777e9d95e94cf91.md) | 48 | `declaration-track:0ddf3eed1777e9d95e94cf91265487b4a6262925d2f48f84d61f29f197007dd8` |
| 4 | `def` | [SubpolynomialDyadicMaximalMertensTwoPointEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy--9209eb5f9c8f1f953dfef8b9.md) | 54 | `declaration-track:9209eb5f9c8f1f953dfef8b96c86fcee611e3e9d679c8512d6bbefb9dbb2bc58` |
| 5 | `theorem` | [abs_mertensTwoPointPrefix_le_max](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/abs-mertenstwopointprefix-le-max--65ae560e9147fe38ed999ae1.md) | 61 | `result-track:65ae560e9147fe38ed999ae1ae8c32a4ea2a97bc8099c9579ce4bbbc48e22722` |
| 6 | `theorem` | [mertensTwoPointPrefixMax_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/mertenstwopointprefixmax-nonneg--74010adeb8c7aba9b171220d.md) | 70 | `result-track:74010adeb8c7aba9b171220dbb712acf26136eb6e6eb808034688ff8e8f54b14` |
| 7 | `theorem` | [mertensTwoPointShiftEnvelope_iff_prefixMax_le](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/mertenstwopointshiftenvelope-iff-prefixmax-le--ebc6a269bbe72f4c248969d1.md) | 79 | `result-track:ebc6a269bbe72f4c248969d14f34132bc5696f4691d0987774a8914d39873d0d` |
| 8 | `theorem` | [dyadicMertensTwoPointQuadraticEnvelope_of_maximalEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/dyadicmertenstwopointquadraticenvelope-of-maximalenergy--789a0503df5cc2d0631f441a.md) | 95 | `result-track:789a0503df5cc2d0631f441aa51c1cd2c4b7b8aff7a5277e85f0c0428c728934` |
| 9 | `theorem` | [dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/dyadicmertenstwopointmaximalenergy-of-quadraticenvelope--3ce548ff310387a5754d77de.md) | 107 | `result-track:3ce548ff310387a5754d77de7dd77b512e65f43f0632d3b103a41bdf43802479` |
| 10 | `theorem` | [dyadicMertensTwoPointMaximalEnergy_iff_quadraticEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/dyadicmertenstwopointmaximalenergy-iff-quadraticenvelope--2547af213db3d9c5b0d1f179.md) | 130 | `result-track:2547af213db3d9c5b0d1f179f3552c4b62561dffb4a4488be96b2c5d6df5b2dc` |
| 11 | `theorem` | [subpolynomialDyadicQuadraticMertensTwoPointPrefix_of_maximalEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/subpolynomialdyadicquadraticmertenstwopointprefix-of-maximalenergy--1dc9aa93c1887bbb23bbb298.md) | 138 | `result-track:1dc9aa93c1887bbb23bbb2982d6a39103a83a511971a3bbf114d6321ebd35edc` |
| 12 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_quadratic](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-quadratic--3f3da059d604b7208453b954.md) | 149 | `result-track:3f3da059d604b7208453b954692f44d2dffa33f9a9b3e7917f5c9c027aae0fc2` |
| 13 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_iff_quadratic](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy-iff-quadratic--f42d97f8df9bd75c5dd54969.md) | 159 | `result-track:f42d97f8df9bd75c5dd54969983c5717040abcd795d797999e7759f7a46e9300` |
| 14 | `theorem` | [subpolynomialDyadicMertensShiftPacket_of_maximalTwoPointEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/subpolynomialdyadicmertensshiftpacket-of-maximaltwopointenergy--77b64b4a0a3905fd0d0435a3.md) | 166 | `result-track:77b64b4a0a3905fd0d0435a387c07d31c41f177c018f0107372d9a0c2f5c7aa2` |
| 15 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/declarations/riemannhypothesis-of-subpolynomialdyadicmaximalmertenstwopointenergy--1d8504949aeb6a79449280ad.md) | 173 | `result-track:1d8504949aeb6a79449280ad37f590b2126e38b260bce750fc06e7b8e56e2b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
