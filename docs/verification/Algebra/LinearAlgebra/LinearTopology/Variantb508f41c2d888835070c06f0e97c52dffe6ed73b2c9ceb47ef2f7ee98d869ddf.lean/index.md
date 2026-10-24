# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearTopology.Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46fe3ff27f6c53df60f629ba70f1861e1ce679db",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46fe3ff27f6c53df60f629ba70f1861e1ce679db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.PiTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.LinearTopology` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/basis--d1a733b0bf90b7fb76c93fbe.md) | 49 | `declaration-track:d1a733b0bf90b7fb76c93fbe3c6ad675554892085d6275ba2a7c59e96e17adfb` |
| 2 | `theorem` | [mem_basis_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/mem-basis-iff--bde065970d2a96af9574d1db.md) | 72 | `result-track:bde065970d2a96af9574d1db6a1a2666fef382acdffc0e718ffbfa86c0f47385` |
| 3 | `theorem` | [basis_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/basis-le--5e4434f9b2639fe417f5111c.md) | 78 | `result-track:5e4434f9b2639fe417f5111cc51c2465d2d4f5efc7d8978043ec854e62c479b9` |
| 4 | `theorem` | [basis_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/basis-le-iff--358a33718f55e8322e0bc6b6.md) | 83 | `result-track:358a33718f55e8322e0bc6b6d9f84191b98a45cd45d437989c581a5bb42e069f` |
| 5 | `lemma` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/hasbasis-nhds-zero--0001932f1ffe1f25d008f7d7.md) | 113 | `result-track:0001932f1ffe1f25d008f7d72f4618b4886e0b291ea122f916242020b26c2124` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/instance--161960c8ae3f707185e2c07a.md) | 130 | `declaration-track:161960c8ae3f707185e2c07aa83b927fd147c6ba8eb03c1908815f5bf83c03d5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/instance--4e6230a50aaec8d3ad3ad531.md) | 136 | `declaration-track:4e6230a50aaec8d3ad3ad531111645181673a561ae44a1ced36d8eb34756449f` |
| 8 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/istopologicallynilpotent-of-constantcoeff--9ffca72ce4232aeca91d31b8.md) | 140 | `result-track:9ffca72ce4232aeca91d31b8a56b8b9a08e0baeacc3d2893a8dd259665e172c3` |
| 9 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variantb508f41c2d888835070c06f0e97c52dffe6ed73b2c9ceb47ef2f7ee98d869ddf.lean/declarations/istopologicallynilpotent-iff-constantcoeff--7f2525e56fcf2490ff9c3164.md) | 159 | `result-track:7f2525e56fcf2490ff9c3164f0521fc4232e2b64604cae30b3d0d6a29506d692` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
