# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Hasse.Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b51ad2f9fad4dc9b42202bc85b084e2b27ab7d6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b51ad2f9fad4dc9b42202bc85b084e2b27ab7d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Relation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hasse--3cb62ce3b968ccfc0e3d152b.md) | 36 | `declaration-track:3cb62ce3b968ccfc0e3d152b8f7298f8619f238d328653974fd139e162c23e17` |
| 2 | `theorem` | [hasse_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hasse-adj--e7cb7c0d141863cc727a3ec7.md) | 44 | `result-track:e7cb7c0d141863cc727a3ec7e5a99347f9bc305ef9f4f697e7c440d058b819b3` |
| 3 | `def` | [hasseDualIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hassedualiso--542c845e5b25a3847bce51a4.md) | 48 | `declaration-track:542c845e5b25a3847bce51a48a720a23fff1ecdbc5f2754cc0f45bb21a1993a0` |
| 4 | `theorem` | [hasseDualIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hassedualiso-apply--ac941454ab860fb5486fda10.md) | 52 | `result-track:ac941454ab860fb5486fda1099fe14bd1581200698baa24da99a95ba6658da09` |
| 5 | `theorem` | [hasseDualIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hassedualiso-symm-apply--1ffa06714e6bfcab5fb50c04.md) | 56 | `result-track:1ffa06714e6bfcab5fb50c04dc4aaff38f8d2756a16a7be9717e2c4eae7a9575` |
| 6 | `theorem` | [hasse_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hasse-prod--af55fc5ffeb43861c9e88192.md) | 66 | `result-track:af55fc5ffeb43861c9e881923d5da483b8ca5ace3bb36572d8af476060c45071` |
| 7 | `theorem` | [hasse_preconnected_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hasse-preconnected-of-succ--0a4b6fa96dd4f91bdcd55419.md) | 77 | `result-track:0a4b6fa96dd4f91bdcd554192ef06f0a40efa1830a13957d0b70a783229c5c42` |
| 8 | `theorem` | [hasse_preconnected_of_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/hasse-preconnected-of-pred--205a17cc0d4f701901c4dd50.md) | 84 | `result-track:205a17cc0d4f701901c4dd50ef8fdc96b844e5568ac04099e86c148693ac5a5f` |
| 9 | `def` | [pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/pathgraph--12c9c1ff5a3d8d92cd2d4fca.md) | 94 | `declaration-track:12c9c1ff5a3d8d92cd2d4fca74ce5359ff56b0593925df625ff9b022eed378a8` |
| 10 | `theorem` | [pathGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/pathgraph-adj--737823fbeaa6cd95c9132d2b.md) | 97 | `result-track:737823fbeaa6cd95c9132d2b8748cc7ee3f58d14292ea03d18cdcacc8bb2b5c5` |
| 11 | `theorem` | [pathGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/pathgraph-preconnected--476644de398430d981707e73.md) | 102 | `result-track:476644de398430d981707e73a9b4a0b33fb60939151a03f0593c81fe56aba02b` |
| 12 | `theorem` | [pathGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/pathgraph-connected--28d3b7b01c9c6806dff038cb.md) | 105 | `result-track:28d3b7b01c9c6806dff038cb561630cfc2f702e456e405708849034c016697a9` |
| 13 | `theorem` | [pathGraph_two_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Varianteaae5ccac6d87629d939e499d352463837880f94ec294fd6c2e4503d0ef2088b.lean/declarations/pathgraph-two-eq-top--0c43e637a8f8b596afa5aa9d.md) | 108 | `result-track:0c43e637a8f8b596afa5aa9d9d946146966a62b33bef46a15fe8f4d84c1e54cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
