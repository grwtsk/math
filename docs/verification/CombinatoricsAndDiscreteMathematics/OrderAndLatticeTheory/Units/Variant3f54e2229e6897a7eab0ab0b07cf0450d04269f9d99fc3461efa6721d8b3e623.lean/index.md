# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Units.Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "977fcbb9693d2a41e173ccf610b2bd0361063643",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `977fcbb9693d2a41e173ccf610b2bd0361063643`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/instance--ea3aa504d3edfb5e966bb620.md) | 27 | `declaration-track:ea3aa504d3edfb5e966bb6200b09dae41d2224d813458c2015ce6f5b483658e5` |
| 2 | `theorem` | [val_le_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/val-le-val--81eb1bd55dedde2170615232.md) | 31 | `result-track:81eb1bd55dedde2170615232cd1a42b1048c8453a3281246b2d17c693d46fe24` |
| 3 | `theorem` | [val_lt_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/val-lt-val--e79a8def993197e1eaa5e0cc.md) | 35 | `result-track:e79a8def993197e1eaa5e0cc234a650e5a23a0a1e921d38f854318ebcea9fbb1` |
| 4 | `instance` | [instPartialOrderUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/instpartialorderunits--d7743b2f460d656906cfc74f.md) | 39 | `declaration-track:d7743b2f460d656906cfc74f55276a97edeb2ca97c520bc526e42a37ac40b275` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/instance--7e0ec57118ede3cb3417f669.md) | 43 | `declaration-track:7e0ec57118ede3cb3417f66965b82a8fc0fb01e2b2b25154e35afe38748eb271` |
| 6 | `def` | [orderEmbeddingVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/orderembeddingval--85b79b5d536e4be191614ae4.md) | 49 | `declaration-track:85b79b5d536e4be191614ae445f1214b35b007512602681227272d23e22a1d08` |
| 7 | `theorem` | [max_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/max-val--a47aa9b96459fbb7f8d7ffc5.md) | 53 | `result-track:a47aa9b96459fbb7f8d7ffc5feb4cdfc381576fffc213c556b630c8fc3054b18` |
| 8 | `theorem` | [min_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Units/Variant3f54e2229e6897a7eab0ab0b07cf0450d04269f9d99fc3461efa6721d8b3e623.lean/declarations/min-val--937ca946a6a75c786e2f7fd9.md) | 57 | `result-track:937ca946a6a75c786e2f7fd966c0da2ae8dedf8e4af792d641040cdf1c62b56d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
