# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16fba5685bb013b96e547e6cec7f81bad10039e8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16fba5685bb013b96e547e6cec7f81bad10039e8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeUniverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/finiteprimeuniverse--208784f9718af839df78205b.md) | 26 | `declaration-track:208784f9718af839df78205bb9b74035a8f815a4376466dc89ea4423ad5a3420` |
| 2 | `structure` | [PrimeUniverseEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/primeuniverseembedding--51605945ac316f39fa0a5ae1.md) | 40 | `declaration-track:51605945ac316f39fa0a5ae1a7301332d8ef8b3dd71c185a97f4609fa41a70d4` |
| 3 | `structure` | [PrimeInsertionEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/primeinsertionedge--06e1a9e05b17a9d97a1c06b5.md) | 49 | `declaration-track:06e1a9e05b17a9d97a1c06b59f1aa7853de50fa756ef57d2784bcda5741b6627` |
| 4 | `def` | [PrimeInsertionEdge.target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/primeinsertionedge-target--dedfea0127e6b38406c5f148.md) | 56 | `declaration-track:dedfea0127e6b38406c5f148481f648e96b769471c9fc7442ca2eb08075b94fd` |
| 5 | `theorem` | [PrimeInsertionEdge.source_ssubset_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/primeinsertionedge-source-ssubset-target--a4ee17c860129c194c404e76.md) | 62 | `result-track:a4ee17c860129c194c404e7645e626820a291f26240f6e5bf08896f09a218cc1` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/instance--e1b76874235b887beed6e6f5.md) | 75 | `declaration-track:e1b76874235b887beed6e6f564f5c251ff62c32a46d57fe004d66923e0869808` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/instance--0a557b4fb2dcc955ff304b5b.md) | 98 | `declaration-track:0a557b4fb2dcc955ff304b5bd4cdd3b42d758d818679b9ea6309b5c02c5ff9c0` |
| 8 | `theorem` | [finitePrimeUniverse_node_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/finiteprimeuniverse-node-count--071cbf5a24eebc1a707af371.md) | 103 | `result-track:071cbf5a24eebc1a707af371f4ee17ebe7201ab7d78fe6ffe0e25f6d866a814c` |
| 9 | `structure` | [PrimeCutCardinalityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0.lean/declarations/primecutcardinalitycertificate--838ccc99dc294f73f7c74fbd.md) | 109 | `declaration-track:838ccc99dc294f73f7c74fbd66345f5d7c65fce6934d5af8aae019139aed7437` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
