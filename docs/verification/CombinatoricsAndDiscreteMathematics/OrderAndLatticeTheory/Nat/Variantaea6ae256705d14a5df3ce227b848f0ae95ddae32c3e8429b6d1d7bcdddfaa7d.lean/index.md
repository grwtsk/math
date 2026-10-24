# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Nat.Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cff543489216aa50695bd4fafd5fbea31d5a1edf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cff543489216aa50695bd4fafd5fbea31d5a1edf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/declarations/instorderbot--3041eaf27a21266c5be5b4d8.md) | 24 | `declaration-track:3041eaf27a21266c5be5b4d8b803fde7401f578a6507dbf7a64687ce771147c7` |
| 2 | `instance` | [instNoMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/declarations/instnomaxorder--464535233270ae371a4815bb.md) | 28 | `declaration-track:464535233270ae371a4815bb6007b84e103af56a6fe738fe2bb6a993b3a48c76` |
| 3 | `lemma` | [bot_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/declarations/bot-eq-zero--8a5dda37bc1168e2ed80ff5f.md) | 33 | `result-track:8a5dda37bc1168e2ed80ff5f64c87ee9965579b4a2198190a861a0290caac32f` |
| 4 | `lemma` | [isLeast_find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/declarations/isleast-find--19a9dd0c44b93f055aafee2b.md) | 36 | `result-track:19a9dd0c44b93f055aafee2bb977aa34d093784e6b7cf4373fa557f25a42d7f8` |
| 5 | `lemma` | [Set.Nonempty.isLeast_natFind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d.lean/declarations/set-nonempty-isleast-natfind--2db70bb468ff8f5b5c392a5f.md) | 43 | `result-track:2db70bb468ff8f5b5c392a5fe0bdd62e5d3aeb72434b7e411456912146522704` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
