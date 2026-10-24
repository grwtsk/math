# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BestFirst.Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ffcdd3560dab52ad97ddc5614e4a76755e56c5b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ffcdd3560dab52ad97ddc5614e4a76755e56c5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MLList.BestFirst` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Point](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/declarations/point--5ec1590eae7d87b5229b90ba.md) | 20 | `declaration-track:5ec1590eae7d87b5229b90ba2a0a40449828d1c3f53970b4d300a669551751d2` |
| 2 | `def` | [wall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/declarations/wall--38b0a1a0d32d984c56f38798.md) | 23 | `declaration-track:38b0a1a0d32d984c56f38798c463b843916fe64c892d46d06eb7924bd6da8552` |
| 3 | `def` | [nbhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/declarations/nbhd--4eb447883a29143af5d327a0.md) | 26 | `declaration-track:4eb447883a29143af5d327a0a0ea27c262d0e7aa7a12fd813c941178bc46ebb3` |
| 4 | `def` | [emb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/declarations/emb--d4105d85d0e41464b22bba22.md) | 30 | `declaration-track:d4105d85d0e41464b22bba221c7e160006a653e2cfb9dd0816c5064d40e9118a` |
| 5 | `lemma` | [emb_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/declarations/emb-injective--37a7f4845afd384432f5c787.md) | 33 | `result-track:37a7f4845afd384432f5c7877ac780507f2bcb8e6102bdc83b0860aacdc5c012` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/declarations/instance--704b0ebf43ae527a9befc69f.md) | 36 | `declaration-track:704b0ebf43ae527a9befc69f1f64c6a383b19621b7763cdaa3398d1ed8e4635c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
