# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FiniteHeatNewmanNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf0cf64e26ec937027464f65fb1564f02a1b0186",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf0cf64e26ec937027464f65fb1564f02a1b0186`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteHeatRecovery`](../../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareFrequencies](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/squarefrequencies--7dc269821c87cffad548da94.md) | 43 | `declaration-track:7dc269821c87cffad548da9409863a3240e554918d54819699b8cad353359f6f` |
| 2 | `theorem` | [squareFrequencies_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/squarefrequencies-nonneg--b525aabe9adfb4bfee742645.md) | 46 | `result-track:b525aabe9adfb4bfee74264556d5b2504e263d4f93e687d9168300bc9a8830bc` |
| 3 | `def` | [newmanFiniteCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newmanfinitecoefficients--bb612b32f5ef4c5f62d1f0bb.md) | 52 | `declaration-track:bb612b32f5ef4c5f62d1f0bba2c3a6f9cd6ea8b72ddb7aed6a9d086e2d7e641c` |
| 4 | `theorem` | [newman_negative_time_eq_forward_heat](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newman-negative-time-eq-forward-heat--65d73d10671d5fc7e9083db0.md) | 58 | `result-track:65d73d10671d5fc7e9083db0cb53b8014db3450442b6611c4f307cfbd1652c18` |
| 5 | `theorem` | [newman_positive_time_eq_inverse_heat](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newman-positive-time-eq-inverse-heat--aae2c8a0d52cd5cb43e159ed.md) | 71 | `result-track:aae2c8a0d52cd5cb43e159ed6fef160900e6340f93624d4c1d16429a1eeeeb43` |
| 6 | `theorem` | [newman_zero_time](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newman-zero-time--8f4c5d18ea17caf53a370b5e.md) | 78 | `result-track:8f4c5d18ea17caf53a370b5e9d1af3af1bb3b5ca304ca5782852b2d3dd68868c` |
| 7 | `theorem` | [recover_newman_negative_time](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/recover-newman-negative-time--8276bf82a20b645ea255de48.md) | 86 | `result-track:8276bf82a20b645ea255de48835cd0f7b26afa2592f508893b4fc943da718be8` |
| 8 | `theorem` | [newman_negative_time_squareEnergy_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newman-negative-time-squareenergy-le--c30231be42d9242a182cb887.md) | 96 | `result-track:c30231be42d9242a182cb8878379cfd3d323393c9d20a72f14e6353e0f2a5215` |
| 9 | `def` | [zetaOrdinateOfNewman](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/zetaordinateofnewman--f50fe2d473f275f3645cf607.md) | 107 | `declaration-track:f50fe2d473f275f3645cf6071cd81c4362efd2a0b3dc9bac496a12c633321cc2` |
| 10 | `def` | [newmanVariableOfZetaOrdinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newmanvariableofzetaordinate--c34e453b1333ef2a71109c75.md) | 109 | `declaration-track:c34e453b1333ef2a71109c7513676f1dd672f4388b010c7ebe7b19c3243fab3b` |
| 11 | `theorem` | [ordinate_of_newman_of_ordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/ordinate-of-newman-of-ordinate--5b3dfc059ac38c0db518275f.md) | 111 | `result-track:5b3dfc059ac38c0db518275f6c8bcda159534dde3a690d23af905b0415f904b7` |
| 12 | `theorem` | [newman_of_ordinate_of_newman](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newman-of-ordinate-of-newman--9e7b476fc2709efae6f78acd.md) | 116 | `result-track:9e7b476fc2709efae6f78acd1654e970374e91dca851cf935d92b49bd9e4fe53` |
| 13 | `theorem` | [threeQuarter_height_newman_variable](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/threequarter-height-newman-variable--2ffbb3b11582d9f6d2096d0f.md) | 123 | `result-track:2ffbb3b11582d9f6d2096d0fc84bb09d51fdd27b1445b34e8a5885520127c285` |
| 14 | `theorem` | [newman_height_threeHalves_is_zeta_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/declarations/newman-height-threehalves-is-zeta-threequarters--bd452258c46c2fd01bf9468c.md) | 127 | `result-track:bd452258c46c2fd01bf9468ccd2b7b2dc4ae9021b0fe0b5562f012fe286e0730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
