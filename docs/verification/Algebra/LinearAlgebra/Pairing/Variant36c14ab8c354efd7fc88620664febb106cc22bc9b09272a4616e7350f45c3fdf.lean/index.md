# Verification target: GRWTSK.Algebra.LinearAlgebra.Pairing.Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d87c0381443149509c36efc2e0b3274908237441",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d87c0381443149509c36efc2e0b3274908237441`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multilinearMapToDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/declarations/multilinearmaptodual--3cadf96d2aeaadf2994a3257.md) | 29 | `declaration-track:3cadf96d2aeaadf2994a325772999bcd1bf50fdd874bccc275f3f53d84728eb7` |
| 2 | `theorem` | [multilinearMapToDual_apply_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/declarations/multilinearmaptodual-apply-tprod--768a3684f99fb58a089f6736.md) | 56 | `result-track:768a3684f99fb58a089f6736356f4c3cce27b2ed9db9799c62d965af10bbc235` |
| 3 | `def` | [pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/declarations/pairingdual--797fae554ba8bb5f6879d9fe.md) | 61 | `declaration-track:797fae554ba8bb5f6879d9fe7370cba40d9dae2c542009c56d5d61ac3b7be79b` |
| 4 | `lemma` | [pairingDual_tprod_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/declarations/pairingdual-tprod-tprod--47ca2ecaaafca695646c1cbb.md) | 67 | `result-track:47ca2ecaaafca695646c1cbb797e5050e8801ff15de4a5b033ae80e8db224cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
