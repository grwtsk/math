# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.DeclarativeBooleanMatrices

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "749a3750d21cf464601b879e1fcb15448d46c189",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `749a3750d21cf464601b879e1fcb15448d46c189`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrix](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/bitmatrix--c51b5db64f7dcb2b2447ba9e.md) | 51 | `declaration-track:c51b5db64f7dcb2b2447ba9e47b2b06a20bfebabeefe358a64fda486161ee6b1` |
| 2 | `def` | [map](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/map--5341804b4cd54d93986ae419.md) | 60 | `declaration-track:5341804b4cd54d93986ae4194251cba77e984d5426accd8d9bb164bdd620af8b` |
| 3 | `def` | [zipWith](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/zipwith--b146cca5c85f4cc75c53f9dc.md) | 65 | `declaration-track:b146cca5c85f4cc75c53f9dcd8df7ecc8ef2fdf5e1277ff9a9040a61e2af02aa` |
| 4 | `def` | [and](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/and--61ff37547950c1db3bddf5ea.md) | 73 | `declaration-track:61ff37547950c1db3bddf5ea706528a40fd214400a79e894bcb48e1e88fc25c7` |
| 5 | `def` | [or](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/or--34cc91a1938583c4185c8762.md) | 78 | `declaration-track:34cc91a1938583c4185c8762059d41aa727c22dfdaf3609220b305725544c48f` |
| 6 | `def` | [xor](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/xor--93f26024e106e979ab8c8ad7.md) | 83 | `declaration-track:93f26024e106e979ab8c8ad7a61f434a4bb765c4b0695404721b2991b19b9f33` |
| 7 | `def` | [not](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/not--231d7c19ab159323b12d4c9d.md) | 88 | `declaration-track:231d7c19ab159323b12d4c9d6dca76f9a96ab09f5742b17acf4175bf5f19cec2` |
| 8 | `theorem` | [map_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/map-apply--36d98240150fee326aa72b95.md) | 92 | `result-track:36d98240150fee326aa72b95116d340bf6a0afa22ed31d34fe83c4fbb46e5fca` |
| 9 | `theorem` | [zipWith_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/zipwith-apply--a08af6cd36b98bd65fca6dc2.md) | 101 | `result-track:a08af6cd36b98bd65fca6dc273a16ad3c09886f4533e26a0de81658fd19c61b5` |
| 10 | `theorem` | [and_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/and-apply--30850f70ebf059003d17176b.md) | 110 | `result-track:30850f70ebf059003d17176bbd0ca9ed5155d98bb81d14e6e1b3d35e43c849cf` |
| 11 | `theorem` | [or_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/or-apply--e8e3eb498b5d2cf9938b8991.md) | 118 | `result-track:e8e3eb498b5d2cf9938b899161bf7b5778cebd474f2a7da24b60fd562831fad4` |
| 12 | `theorem` | [xor_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/xor-apply--3383c4155d47a2a422441e71.md) | 126 | `result-track:3383c4155d47a2a422441e710f7e2641d04f11e067d9af40f82666156ce50cc2` |
| 13 | `theorem` | [not_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/not-apply--3fc2840954bc55924ac22863.md) | 134 | `result-track:3fc2840954bc55924ac22863e9e19eb7eda5e5b3d8fdb32de8d45e2900b4ae1c` |
| 14 | `theorem` | [ext](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/ext--efec1f32671e0fa3ba25be4e.md) | 143 | `result-track:efec1f32671e0fa3ba25be4e3ff0639d59938503cd3c5bd27707044984b1094a` |
| 15 | `theorem` | [and_comm](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/and-comm--eb79b01adda740511cc840f9.md) | 150 | `result-track:eb79b01adda740511cc840f975de1b1441eded459ba7f2d6084cb2e9fc220ea7` |
| 16 | `theorem` | [and_assoc](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/and-assoc--d4800854a5061a271cec9e7b.md) | 158 | `result-track:d4800854a5061a271cec9e7b187bcb26ebcfe8b8d8c3b66c418965b7df7ec054` |
| 17 | `theorem` | [or_comm](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/or-comm--76e4428ad6d1534f44a41cdb.md) | 167 | `result-track:76e4428ad6d1534f44a41cdbcf8165955d8359094070845b1cea2c0345ebddba` |
| 18 | `theorem` | [xor_comm](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/xor-comm--fe4a0b23493eeb881f7cdc80.md) | 175 | `result-track:fe4a0b23493eeb881f7cdc80d906460c9a4585d1bff734422711e5c0b3953aec` |
| 19 | `theorem` | [not_not](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/declarations/not-not--df07f972362fbb0699515791.md) | 183 | `result-track:df07f972362fbb069951579147259b3091e5c0cd1239a20d69658ef7007cbadc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
