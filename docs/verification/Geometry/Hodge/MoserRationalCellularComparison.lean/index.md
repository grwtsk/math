# Verification target: GRWTSK.Geometry.Hodge.MoserRationalCellularComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd09627ce38d24a11fe6d0b766a93da76ef0bef5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/MoserRationalCellularComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd09627ce38d24a11fe6d0b766a93da76ef0bef5`.

Source path: `GRWTSK/Geometry/Hodge/MoserRationalCellularComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/MoserRationalCellularComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.MoserMatrixHodge`](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RationalCellClass](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/rationalcellclass--f87eea7814fbcc970093ebac.md) | 11 | `declaration-track:f87eea7814fbcc970093ebac71155243e282416d9674f85f2eeaae5ce1b162c4` |
| 2 | `def` | [rationalHodgeData](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/rationalhodgedata--63c73904ffac96dfab73b6b5.md) | 14 | `declaration-track:63c73904ffac96dfab73b6b5729d6e80d5364b467232c4f42df83467074afe97` |
| 3 | `theorem` | [rationalHodgeData_surjective](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/rationalhodgedata-surjective--42b1df58109e555ea640c1cf.md) | 19 | `result-track:42b1df58109e555ea640c1cfed50c9ff80f88f3bd52f4dff442455151be43a29` |
| 4 | `def` | [sourceTheorem](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/sourcetheorem--69d58fd2748616a75d958f50.md) | 24 | `declaration-track:69d58fd2748616a75d958f5092e8ada2fed04c027f74c6f0e6d5213a7b2a5d6f` |
| 5 | `def` | [comparison](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/comparison--36869c1004122aaa7af14c95.md) | 36 | `declaration-track:36869c1004122aaa7af14c95ea6f6625579aa9b2b43a4a29e50e2772984c8352` |
| 6 | `def` | [toRealCochain](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/torealcochain--2126c8357073e7de56b40890.md) | 43 | `declaration-track:2126c8357073e7de56b408904d95d6e46015c543aff111f26df8b778ef9fa7d1` |
| 7 | `theorem` | [toRealCochain_harmonic](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/torealcochain-harmonic--62c83eaefe790534c48a68d5.md) | 47 | `result-track:62c83eaefe790534c48a68d55ccb59853c59442643d0e4d296b5c20fb5aa57c7` |
| 8 | `theorem` | [exists_cycle_and_real_harmonic](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/exists-cycle-and-real-harmonic--3de28aecb2497f473086af04.md) | 55 | `result-track:3de28aecb2497f473086af04417f28974569faa0c64d044abe24c1d8f18aaff1` |
| 9 | `theorem` | [real_harmonic_iff_constant](../../../../mathematics/Geometry/Hodge/MoserRationalCellularComparison.lean/declarations/real-harmonic-iff-constant--acb7d494cab041fd36fcddad.md) | 63 | `result-track:acb7d494cab041fd36fcddad1b349f0b2f61e4ef76b28b5b57201b807cb2e70d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
