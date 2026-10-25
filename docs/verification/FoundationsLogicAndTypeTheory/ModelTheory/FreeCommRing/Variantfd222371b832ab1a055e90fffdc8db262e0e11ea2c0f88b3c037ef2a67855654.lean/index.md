# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FreeCommRing.Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea7888ce6a2c95ff293b790d0ee9e2101d3b3637",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea7888ce6a2c95ff293b790d0ee9e2101d3b3637`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Algebra.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_term_realize_eq_freeCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean/declarations/exists-term-realize-eq-freecommring--0b0428caf4779047f6f60946.md) | 32 | `result-track:0b0428caf4779047f6f60946780819cc713e192fc4d9b1a5394358925b8351a0` |
| 2 | `def` | [termOfFreeCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean/declarations/termoffreecommring--92af854a16ce92e8a89ed605.md) | 46 | `declaration-track:92af854a16ce92e8a89ed605d03fa6c2ae48640da1be0ccc87c83aa4d0a44bbf` |
| 3 | `theorem` | [realize_termOfFreeCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654.lean/declarations/realize-termoffreecommring--7476301ef4fae37fa7676043.md) | 52 | `result-track:7476301ef4fae37fa767604346ebe3cd1dde46ee3a0947ebeda458e278c3f76b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
