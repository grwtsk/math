# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Arithmetic.Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e829cbca579d252d1038f4c9ccbc79c30c5bb65",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e829cbca579d252d1038f4c9ccbc79c30c5bb65`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finset.exists_disjoint_union_of_even_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/declarations/finset-exists-disjoint-union-of-even-card--6c4488073ad379aa3e74ead6.md) | 27 | `result-track:6c4488073ad379aa3e74ead6a6961635a0d388d88e02b300bd1c2107ded3dd63` |
| 2 | `theorem` | [Finset.exists_disjoint_union_of_even_card_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/declarations/finset-exists-disjoint-union-of-even-card-iff--2454848d4125b810de0d093c.md) | 33 | `result-track:2454848d4125b810de0d093cea2ac7d8765382ca8b410a48b8c29ce2aae0fb4d` |
| 3 | `theorem` | [Infinite.exists_union_disjoint_cardinal_eq_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/declarations/infinite-exists-union-disjoint-cardinal-eq-of-infinite--2d84875e14d3138a5d7ad1d9.md) | 45 | `result-track:2d84875e14d3138a5d7ad1d90f524271f173ed9c4340a14f7fa651fd7942d155` |
| 4 | `theorem` | [exists_union_disjoint_cardinal_eq_of_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/declarations/exists-union-disjoint-cardinal-eq-of-even--b608183481c7ab5f9206c2cc.md) | 56 | `result-track:b608183481c7ab5f9206c2ccd1036e3b1c3aa7090ad9d6ac52072fbc007ea59a` |
| 5 | `theorem` | [exists_union_disjoint_ncard_eq_of_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/declarations/exists-union-disjoint-ncard-eq-of-even--5dd20b4e17c16bbd0a105a4f.md) | 66 | `result-track:5dd20b4e17c16bbd0a105a4fc9f75b907e5f010b4754e5c4356db8cdda916c33` |
| 6 | `theorem` | [exists_union_disjoint_cardinal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant0578545bbfb5f8b474ae4bfaeed406c9b47c35a48496041a8612638bb316fb21.lean/declarations/exists-union-disjoint-cardinal-eq-iff--20de4466139cfbcd04395f24.md) | 71 | `result-track:20de4466139cfbcd04395f24540ecb0418938ea4d6b2caf92fa7f12086f3fe72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
