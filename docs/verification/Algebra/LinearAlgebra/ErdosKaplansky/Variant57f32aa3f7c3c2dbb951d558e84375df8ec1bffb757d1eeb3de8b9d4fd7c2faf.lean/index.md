# Verification target: GRWTSK.Algebra.LinearAlgebra.ErdosKaplansky.Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8f0c42dc1fbeade6ff2bd4283b6622fb2f2054d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8f0c42dc1fbeade6ff2bd4283b6622fb2f2054d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Subfield` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_aleph0_card_le_rank_fun_nat](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/max-aleph0-card-le-rank-fun-nat--5295a6175b4e4df319d8d9b3.md) | 37 | `result-track:5295a6175b4e4df319d8d9b319bcb353d9ebee3012148861b6c5063a19187ccf` |
| 2 | `theorem` | [rank_fun_infinite](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/rank-fun-infinite--5a8d612a5199bdb1b1ead976.md) | 86 | `result-track:5a8d612a5199bdb1b1ead976f528348b499fdc223142af45512384fc83602c5d` |
| 3 | `theorem` | [rank_dual_eq_card_dual_of_aleph0_le_rank'](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/rank-dual-eq-card-dual-of-aleph0-le-rank--1ef0a20b37ce8d659d414d2d.md) | 102 | `result-track:1ef0a20b37ce8d659d414d2d910f13344148223e013291dbd7380fffafa7fa5e` |
| 4 | `theorem` | [rank_dual_eq_card_dual_of_aleph0_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/rank-dual-eq-card-dual-of-aleph0-le-rank--f9df9850a260c210e9eca1f6.md) | 112 | `result-track:f9df9850a260c210e9eca1f6e9987b85b42e5e479c981aecef98297725e2cad9` |
| 5 | `theorem` | [lift_rank_lt_rank_dual'](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/lift-rank-lt-rank-dual--6441de00cedd7e234c7bf884.md) | 120 | `result-track:6441de00cedd7e234c7bf884dba41967d967a4c0b6ff6eb8bebd9ce2a315c9a9` |
| 6 | `theorem` | [lift_rank_lt_rank_dual](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/lift-rank-lt-rank-dual--41bc65078d974f105d45be4c.md) | 130 | `result-track:41bc65078d974f105d45be4c0a47bdade294999af8ec1bc4f03d4b604ecb0123` |
| 7 | `theorem` | [rank_lt_rank_dual'](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/rank-lt-rank-dual--0e556a7972719c1010bc253a.md) | 136 | `result-track:0e556a7972719c1010bc253aa1b2c3358bd664f382b21d9b3a8e0111d7f595a8` |
| 8 | `theorem` | [rank_lt_rank_dual](../../../../../mathematics/Algebra/LinearAlgebra/ErdosKaplansky/Variant57f32aa3f7c3c2dbb951d558e84375df8ec1bffb757d1eeb3de8b9d4fd7c2faf.lean/declarations/rank-lt-rank-dual--a0ba48c3ed0a8e29944586ac.md) | 140 | `result-track:a0ba48c3ed0a8e29944586ac6836b92be16a88b5855b8f2eab0347de29f17993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
