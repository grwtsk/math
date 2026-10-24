# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetOptimization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd349bd05ddeeed7862c17c06c82c3b51c385809",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd349bd05ddeeed7862c17c06c82c3b51c385809`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Data](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/data--631f4ac55843755a718560cc.md) | 21 | `declaration-track:631f4ac55843755a718560cc704a65a569af12e3ce6abe5bf1ede8e8155255cb` |
| 2 | `def` | [p](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/p--c490ca98df65ce0200317c5d.md) | 33 | `declaration-track:c490ca98df65ce0200317c5dc193665208f216ec13055f1eeb0a0e3f0e445fb2` |
| 3 | `def` | [total](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/total--d3e9a429b30921746ff719f9.md) | 37 | `declaration-track:d3e9a429b30921746ff719f953f5d11f626a2d160279344d89e21518c3c40c01` |
| 4 | `def` | [envelope](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/envelope--f43d267fd1c5a1c11277875e.md) | 41 | `declaration-track:f43d267fd1c5a1c11277875eab18e7f172483acf418966fe24e3597f5ff628cd` |
| 5 | `theorem` | [even_part_le_envelope](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/even-part-le-envelope--ae593ede0bb8f11299ad6912.md) | 44 | `result-track:ae593ede0bb8f11299ad6912de5b297e699605d59723b361d5b3228ab2b2e7ff` |
| 6 | `theorem` | [third_part_le_envelope](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/third-part-le-envelope--70c13f85233101f7c89fc75e.md) | 48 | `result-track:70c13f85233101f7c89fc75e92e8ae5003b35b106bb8e38392b3bf4d8b3167e3` |
| 7 | `theorem` | [fifth_part_le_envelope](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/fifth-part-le-envelope--8fdbd4fc7188fe5f09ad5f54.md) | 52 | `result-track:8fdbd4fc7188fe5f09ad5f5409f40d51fa3a6727c56fc940bb78ba5ff004a823` |
| 8 | `structure` | [Feasible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/feasible--626c51363ebf395858d915ae.md) | 60 | `declaration-track:626c51363ebf395858d915aef2c8ea1d50180fa9ff6024a128c815e6408a2681` |
| 9 | `theorem` | [exponent_le_three_fifths](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/declarations/exponent-le-three-fifths--2fa8ae9234cffc3c0f7db3e7.md) | 153 | `result-track:2fa8ae9234cffc3c0f7db3e7d12cbdcc9e6090d208cb60e52452f5caec7ccabd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
