# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428210c6a35520593eacf984cf3efea9b1003ada",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428210c6a35520593eacf984cf3efea9b1003ada`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_decode₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean/declarations/isup-decode--8ffb0eafab173eef718e792e.md) | 37 | `result-track:8ffb0eafab173eef718e792eb68bf8df4f26de126ba51a54c9112e326e4653d9` |
| 2 | `theorem` | [iUnion_decode₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean/declarations/iunion-decode--08d99be2ca8a0b0cc7a5dd30.md) | 43 | `result-track:08d99be2ca8a0b0cc7a5dd30e78834efc1dbdc8c73f21e315aaa7dcf192f34e9` |
| 3 | `theorem` | [iUnion_decode₂_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean/declarations/iunion-decode-cases--006282b77c18465bc1ecd233.md) | 49 | `result-track:006282b77c18465bc1ecd233a6b9bcb5dff8d1f28a709c520ba8443fee0ec833` |
| 4 | `theorem` | [iUnion_decode₂_disjoint_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant53e5ff503c3c694e5ed75fcc3f67274fe02b7d4044b9e48774f563e1cbeea9d1.lean/declarations/iunion-decode-disjoint-on--26051533c068b4cda08568e7.md) | 60 | `result-track:26051533c068b4cda08568e75d845f66e8511a1fa3f99b88e1d4dbd43fb410b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
