# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ceb3bfd918da3c9dec91df8b7b7902b2be2cb23",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ceb3bfd918da3c9dec91df8b7b7902b2be2cb23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulLeftMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean/declarations/instmulleftmono--05f64af23fe2fc2570b82e94.md) | 31 | `declaration-track:05f64af23fe2fc2570b82e94176a6ab5888a5e31f9f69d6b5167d9a4de3a321d` |
| 2 | `instance` | [instMulRightMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean/declarations/instmulrightmono--1afaed36d61131f1c27f4143.md) | 36 | `declaration-track:1afaed36d61131f1c27f414378c1756541666f5f36a0e775c889654453bf2ac5` |
| 3 | `lemma` | [coe_mabs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean/declarations/coe-mabs--f195e4891720642a4671b52d.md) | 43 | `result-track:f195e4891720642a4671b52db0b900799e32cb51f9d8fa2d821ba9978e4cb670` |
| 4 | `lemma` | [mabs_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551.lean/declarations/mabs-apply--72f888c35420715867706af6.md) | 46 | `result-track:72f888c35420715867706af65c7f6d1f79d12136340b5fa3e2184f2fba16f63d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
