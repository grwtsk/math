# Verification target: GRWTSK.Algebra.GroupTheory.Embedding.Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "899ccdd58e0bd217617853d3c53c7f3ffdc76eca",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `899ccdd58e0bd217617853d3c53c7f3ffdc76eca`.

Source path: `GRWTSK/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Embedding.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeftEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean/declarations/mulleftembedding--73eaee2a44ac96b18d55339f.md) | 24 | `declaration-track:73eaee2a44ac96b18d55339ff177f5a19e8bb3c204132ba2080256c20647783c` |
| 2 | `def` | [mulRightEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean/declarations/mulrightembedding--bbf0e553039924b12e82548f.md) | 33 | `declaration-track:bbf0e553039924b12e82548fda060b92df638ab60252037d56280a8803412ea0` |
| 3 | `theorem` | [mulLeftEmbedding_eq_mulRightEmbedding](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de.lean/declarations/mulleftembedding-eq-mulrightembedding--c96c4c59ed446163fda1bda0.md) | 38 | `result-track:c96c4c59ed446163fda1bda0e8b0acc26b9558bc19475e9dd7bf8d9a6feb3439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
