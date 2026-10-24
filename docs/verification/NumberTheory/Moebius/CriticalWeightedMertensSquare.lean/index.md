# Verification target: GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecb7464bfe5798bbd49c0ecd60d1fb6f02d8865e`.

Source path: `GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare`](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalEndpointGap_le_inv_sqrt_mul_succ](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/declarations/criticalendpointgap-le-inv-sqrt-mul-succ--cfc63bdf27a8983650756fe4.md) | 26 | `result-track:cfc63bdf27a8983650756fe400c8658d5106dd7a791be8f3e438053dbf29c788` |
| 2 | `theorem` | [criticalEndpointGap_sq_le_inv_mul_succ_sq](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/declarations/criticalendpointgap-sq-le-inv-mul-succ-sq--1a4b3ff6210b9ea871292643.md) | 62 | `result-track:1a4b3ff6210b9ea871292643371a3766d69f0108b0bef0188fbf723de82158ff` |
| 3 | `def` | [CriticalWeightedMertensSquareSummable](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/declarations/criticalweightedmertenssquaresummable--4d4d3dea61ddb694afc58ca9.md) | 80 | `declaration-track:4d4d3dea61ddb694afc58ca9a77b32e21c0a78aa5022e50c70b9ec4cc493c6e7` |
| 4 | `theorem` | [criticalMertensIncrementTerm_le_weightedSquare](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/declarations/criticalmertensincrementterm-le-weightedsquare--46464a3b1317dd07350256c2.md) | 87 | `result-track:46464a3b1317dd07350256c2889589b5c04bd3e3faccfb35b7ee690651f61b20` |
| 5 | `theorem` | [incrementMeanSquare_of_weightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/declarations/incrementmeansquare-of-weightedmertenssquare--db3ad9c658f3df6d828e4fca.md) | 129 | `result-track:db3ad9c658f3df6d828e4fca465ca2d6ab7c1261f8a15403f99e0bc53ad4d930` |
| 6 | `theorem` | [criticalBoundary_of_weightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/declarations/criticalboundary-of-weightedmertenssquare--57f82629f6dac202d4b13670.md) | 145 | `result-track:57f82629f6dac202d4b13670b091393ed549980027fd6ec09c75a9108ace5040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
