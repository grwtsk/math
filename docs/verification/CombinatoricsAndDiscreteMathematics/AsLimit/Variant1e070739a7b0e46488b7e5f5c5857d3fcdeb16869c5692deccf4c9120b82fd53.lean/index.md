# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AsLimit.Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82df2d7476d43958007282a2fb46e7947fae27bf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82df2d7476d43958007282a2fb46e7947fae27bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeDiagram](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/fintypediagram--9aa282eb1664f0854ca59051.md) | 45 | `declaration-track:9aa282eb1664f0854ca5905145fb315e12f1a5115d8a27ec760d14a7ded55d8c` |
| 2 | `abbrev` | [diagram](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/diagram--c935e37695aa5e560b488d2f.md) | 55 | `declaration-track:c935e37695aa5e560b488d2fb52a43fbbabda62b0a0e83cd59fdb7b5296e31bb` |
| 3 | `def` | [asLimitCone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/aslimitcone--95a389eb0409cc48379c74cf.md) | 61 | `declaration-track:95a389eb0409cc48379c74cfd32d52f14fe1299f5222635d1df1630076bb6177` |
| 4 | `instance` | [isIso_asLimitCone_lift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/isiso-aslimitcone-lift--bea6ac05304ecdb6fe70ff42.md) | 67 | `declaration-track:bea6ac05304ecdb6fe70ff42de8dfb54e78d97892c2b97049ec278dcab33fce6` |
| 5 | `def` | [isoAsLimitConeLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/isoaslimitconelift--cd95cf8de07b0ba695c15c00.md) | 90 | `declaration-track:cd95cf8de07b0ba695c15c0003a4201b31930d3fe56f7d8632aaa15757900743` |
| 6 | `def` | [asLimitConeIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/aslimitconeiso--fdb4ea6922968f3be1a28729.md) | 98 | `declaration-track:fdb4ea6922968f3be1a28729dc36db65f9c98b90fdfc4ac4a95ed0cd2cc06eab` |
| 7 | `def` | [asLimit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/aslimit--649ffe20c16eb1a6a42f4ffd.md) | 104 | `declaration-track:649ffe20c16eb1a6a42f4ffd1c01af2c4dc2ac909256af0628c137745352dcaf` |
| 8 | `def` | [lim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AsLimit/Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53.lean/declarations/lim--13e249568bc1a061aa387f4c.md) | 110 | `declaration-track:13e249568bc1a061aa387f4c34226642441457793e5d330afe1a79553e2038dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
