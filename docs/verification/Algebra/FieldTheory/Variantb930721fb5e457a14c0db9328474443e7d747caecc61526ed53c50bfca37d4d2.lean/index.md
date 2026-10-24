# Verification target: GRWTSK.Algebra.Field.Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cd03861e25bef7c415da69f3a8f0a16fd1f41fe",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cd03861e25bef7c415da69f3a8f0a16fd1f41fe`.

Source path: `GRWTSK/Algebra/Field/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Splits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly](../../../../mathematics/Algebra/FieldTheory/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean/declarations/algequiv-adjoinsingletonequivadjoinrootminpoly--2ad2f5cb6086ebfca080ec7e.md) | 35 | `declaration-track:2ad2f5cb6086ebfca080ec7edffaf6484de0e0b630f4290ae3cb55cfb18d358e` |
| 2 | `theorem` | [lift_of_splits](../../../../mathematics/Algebra/FieldTheory/Variantb930721fb5e457a14c0db9328474443e7d747caecc61526ed53c50bfca37d4d2.lean/declarations/lift-of-splits--ec8c2b39446bdd75a3c89312.md) | 63 | `result-track:ec8c2b39446bdd75a3c89312656ea999454c7596edd96f63a3fb6a15fcc27d80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
