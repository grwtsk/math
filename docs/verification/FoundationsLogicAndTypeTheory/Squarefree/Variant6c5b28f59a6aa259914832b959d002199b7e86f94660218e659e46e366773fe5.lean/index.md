# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Squarefree.Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7244fe857e511161daccc80a7d17cd308f51e0b2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7244fe857e511161daccc80a7d17cd308f51e0b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.FactorizationRebuild` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SquarefreeByFactorization](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean/declarations/squarefreebyfactorization--8f70c09fa75f8f42e13a7156.md) | 16 | `declaration-track:8f70c09fa75f8f42e13a7156ac2b7084de8582023b3213aa7338bf07ce1d8e2c` |
| 2 | `theorem` | [squarefree_iff_factorization_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5.lean/declarations/squarefree-iff-factorization-le-one--01557cc5d301297300610938.md) | 23 | `result-track:01557cc5d301297300610938628d06d0dc5229ae487c6f4002f47db4aed4f3f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
