# Verification target: GRWTSK.Combinatorics.Enumerative.BoundedWitnesses

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b18d9f86157bbf327ee485b05a1e748e29a0e48",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Enumerative/BoundedWitnesses.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b18d9f86157bbf327ee485b05a1e748e29a0e48`.

Source path: `GRWTSK/Combinatorics/Enumerative/BoundedWitnesses.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Enumerative/BoundedWitnesses.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Range` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/count--f2d1a7f6ca8250a18fe0a1b0.md) | 21 | `declaration-track:f2d1a7f6ca8250a18fe0a1b08565a6aa6cf4dc552c6d36c4d03ed861520af152` |
| 2 | `theorem` | [count_pos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/count-pos-iff--bccc0eb36982151d05ca1495.md) | 25 | `result-track:bccc0eb36982151d05ca1495e89bb0f110d1ae3faa20f8b3e4676d6627fd92d7` |
| 3 | `theorem` | [count_mono_cutoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/count-mono-cutoff--417a9469a9f43f92bf111a3e.md) | 37 | `result-track:417a9469a9f43f92bf111a3e87638c97db2454b4a531f3f86b090f81ffa2bfca` |
| 4 | `theorem` | [count_mono_predicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/count-mono-predicate--9b5ceb59240a5ecb3eb3b517.md) | 48 | `result-track:9b5ceb59240a5ecb3eb3b517fcf6d71ee9363bff972a0e7c6ca98808bd873b80` |
| 5 | `theorem` | [count_congr_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/count-congr-on--6415b7f127019100633c026d.md) | 57 | `result-track:6415b7f127019100633c026dae1cf63a366a391713fe960b1c5a10b014fa29b1` |
| 6 | `def` | [tailCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/tailcount--305cdd59152385eb0cb114fa.md) | 74 | `declaration-track:305cdd59152385eb0cb114fa1e6bf7f7711f76a4aaf759e2cc14e56011a10798` |
| 7 | `theorem` | [tailCount_pos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/tailcount-pos-iff--11271f330cfe414c3db2e6f0.md) | 78 | `result-track:11271f330cfe414c3db2e6f002a1d7933c46e5cac7f345aeef2f124bcef745d2` |
| 8 | `def` | [UnboundedWitnesses](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/unboundedwitnesses--17013c580a0bc28c0a32f4c0.md) | 88 | `declaration-track:17013c580a0bc28c0a32f4c099fbc91440c623f2f7d7ed3c5c79ed80922fae3d` |
| 9 | `theorem` | [unbounded_iff_positive_tailCounts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/BoundedWitnesses.lean/declarations/unbounded-iff-positive-tailcounts--7a1cfdb74c63a8749dcaf799.md) | 92 | `result-track:7a1cfdb74c63a8749dcaf7993dd52e407458957a231af81b1aadc4dae6192ac8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
