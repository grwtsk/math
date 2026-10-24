# Verification target: GRWTSK.Algebra.LinearAlgebra.ComparatorMargin.Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bcff6114b3196646c4f8ae7cd3ea18af0754125",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bcff6114b3196646c4f8ae7cd3ea18af0754125`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ComparatorSeparation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComparatorMarginValue](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/comparatormarginvalue--b5ec3748acab9f0c240cbda5.md) | 40 | `declaration-track:b5ec3748acab9f0c240cbda556790a61e88558b439bedcafc44d4edb0eb1ff96` |
| 2 | `def` | [comparatorMarginValue](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/comparatormarginvalue--ae0d0afa0153256d887fe224.md) | 51 | `declaration-track:ae0d0afa0153256d887fe224226f97404575b11f602e7d4f913b5fe02061a8a9` |
| 3 | `theorem` | [comparatorMarginValue_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/comparatormarginvalue-gap--dd2fd43a1f59f09e36d0da09.md) | 58 | `result-track:dd2fd43a1f59f09e36d0da09a8397305d409b596054302c4aba41b2b3a755b7d` |
| 4 | `theorem` | [comparatorMarginValue_sensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/comparatormarginvalue-sensitivity--770518fef0e5d320dbb91a3d.md) | 64 | `result-track:770518fef0e5d320dbb91a3d0bec0a2f16ef1f66f5a0d6b6694ce8ebb1d4f2a2` |
| 5 | `theorem` | [comparatorMarginValue_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/comparatormarginvalue-nonnegative--f0f5fbc7186e5e068e4c331f.md) | 71 | `result-track:f0f5fbc7186e5e068e4c331f13a0bfba20350fc5183dfa4e31ff81b6911c402b` |
| 6 | `structure` | [ComparatorMarginRegime](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/comparatormarginregime--28af3aed98edf6a91c981154.md) | 82 | `declaration-track:28af3aed98edf6a91c981154d5f6f2c5b9bedeb6af1007b99a0e55d4d0ab8846` |
| 7 | `theorem` | [marginValue_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/marginvalue-lower-bound--573e9f148f18ca6e6575a688.md) | 99 | `result-track:573e9f148f18ca6e6575a688054ad2eac6c4bd16c31a10c89c23cd4b192039e7` |
| 8 | `theorem` | [positive_sensitivity_implies_positive_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/positive-sensitivity-implies-positive-gap--a607b5b35451acc4590be12a.md) | 106 | `result-track:a607b5b35451acc4590be12af7b243bee4a290250253b463e8a0bdca81915fdf` |
| 9 | `theorem` | [positive_lower_margin](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/positive-lower-margin--69cd100c8f940aff9b36aa88.md) | 116 | `result-track:69cd100c8f940aff9b36aa88e69ef730440114e0cacda83b4b35d1a6f8a41cb9` |
| 10 | `theorem` | [sensitivity_eq_zero_of_gap_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/sensitivity-eq-zero-of-gap-eq-zero--1880dd4a9219ed4cdb19ec9a.md) | 125 | `result-track:1880dd4a9219ed4cdb19ec9a0660d8805c34e12d0ae23661cc394adc6641cf9f` |
| 11 | `theorem` | [gap_ne_zero_of_sensitivity_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/gap-ne-zero-of-sensitivity-ne-zero--44ecb3284489203a011e23e2.md) | 142 | `result-track:44ecb3284489203a011e23e24772862d32b9c8ecf894f765a0320b7e58631733` |
| 12 | `theorem` | [detects_visible](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/detects-visible--48392ace32d5abc2e48c5349.md) | 150 | `result-track:48392ace32d5abc2e48c534906a9070019a1e9dc324e9960306a8e6c8baf07af` |
| 13 | `theorem` | [toComparatorCompleteFor](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/tocomparatorcompletefor--134e0f4bb3a6c7248596d3d9.md) | 167 | `result-track:134e0f4bb3a6c7248596d3d9fc2cc62571e348b4b60be5542c5f15703d9691d8` |
| 14 | `theorem` | [positive_gap_via_complete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/positive-gap-via-complete--bcc86e65161043b4e06e5d81.md) | 176 | `result-track:bcc86e65161043b4e06e5d816e3b25e32816d2a3a780129199c8612d0b4b1161` |
| 15 | `theorem` | [no_zeroComparator_regime_of_positive_sensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorMargin/Variant0a76b923485079189ff872c3440d33a19e9e2738c135c8ce7ce0d60cfaef1cf0.lean/declarations/no-zerocomparator-regime-of-positive-sensitivity--6afc67551d213e7c1ae4dcaa.md) | 185 | `result-track:6afc67551d213e7c1ae4dcaa7e87636d443d563e22a27119157b9ee504b90fa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
