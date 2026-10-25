# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ce9d04d22af691e2982f14bafe01a3312223b37",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ce9d04d22af691e2982f14bafe01a3312223b37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MulEquivClass.toMulEquiv_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/mulequivclass-tomulequiv-injective--8179e2afe041e44f4d00e2f6.md) | 42 | `result-track:8179e2afe041e44f4d00e2f68710a7190f66c40ba5d9c5d0154888af91bdaf1e` |
| 2 | `def` | [ofUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/ofunique--9fe0a2cab4ad1f7b3b576da3.md) | 54 | `declaration-track:9fe0a2cab4ad1f7b3b576da3e1989a174f01c75ad236c1a357f816a9fcea6272` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/instance--f64d4235d5c89ff59f7389e7.md) | 66 | `declaration-track:f64d4235d5c89ff59f7389e72a4d69a626bc54cf83f7fc525dee376ebe789e17` |
| 4 | `def` | [arrowCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/arrowcongr--b0a48f80f8f03137ec9f3468.md) | 83 | `declaration-track:b0a48f80f8f03137ec9f346897a4a65acab10e43dee5200eeb5511913acda17f` |
| 5 | `def` | [monoidHomCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/monoidhomcongr--f7856e53be3eaac7be70ba48.md) | 97 | `declaration-track:f7856e53be3eaac7be70ba48edec0f542ec410698a5e501da4c5bc6604f67452` |
| 6 | `def` | [piCongrRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/picongrright--9a3cc104fffd39381864f055.md) | 117 | `declaration-track:9a3cc104fffd39381864f055a39785303a091f99984bc104cbe6b9122acddf37` |
| 7 | `theorem` | [piCongrRight_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/picongrright-refl--83deee73b42c35c823bd181f.md) | 125 | `result-track:83deee73b42c35c823bd181f052179f2a54846961704c01b829dd00169272eef` |
| 8 | `theorem` | [piCongrRight_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/picongrright-symm--c5afe3add508648288077944.md) | 129 | `result-track:c5afe3add5086482880779449a5506bfc83c09fac7ea7ad4c9ae7133c155ec72` |
| 9 | `theorem` | [piCongrRight_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/picongrright-trans--9302521eb8f6e0b9ef25f986.md) | 133 | `result-track:9302521eb8f6e0b9ef25f9862da446b5ee097950d5b45e3e4c505d24d94b03b6` |
| 10 | `def` | [piUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/piunique--77e82e4c484c164a27a247ba.md) | 142 | `declaration-track:77e82e4c484c164a27a247ba917ab89b47fbf1cc857b0e917cb479e8b0de9b95` |
| 11 | `def` | [precompEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/precompequiv--3f07fa7fa2eda0e1be1011c2.md) | 155 | `declaration-track:3f07fa7fa2eda0e1be1011c227dfada5c76369696a7242b3cb439d3d0a32c414` |
| 12 | `def` | [postcompEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/postcompequiv--dbe742b4378d8637a266d004.md) | 167 | `declaration-track:dbe742b4378d8637a266d004ba2fb3434eea0f7ab26370e55802a9cd34e5f2b1` |
| 13 | `def` | [inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/inv--4c763f9e99177ca8e2f4d308.md) | 185 | `declaration-track:4c763f9e99177ca8e2f4d3084610e8727d7e50863d533d976c66defcd70e84f8` |
| 14 | `theorem` | [inv_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40a26a4b2e525a67cabd1ad64ca50881cf81c46f1c52a2cb058cd84525183e8e.lean/declarations/inv-symm--d051eaa68d1d76dea687c123.md) | 191 | `result-track:d051eaa68d1d76dea687c12391f3c44d3b9dd2208437e7e06296223c23ba61f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
