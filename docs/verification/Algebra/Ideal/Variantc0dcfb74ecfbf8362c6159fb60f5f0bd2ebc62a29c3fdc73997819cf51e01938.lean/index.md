# Verification target: GRWTSK.Algebra.Ideal.Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b043cd7f8c78a54e89369f252fc88c4ec5b3bb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b043cd7f8c78a54e89369f252fc88c4ec5b3bb`.

Source path: `GRWTSK/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ideal.ResidueField](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-residuefield--2ac9ef86a06e13908b842929.md) | 34 | `declaration-track:2ac9ef86a06e13908b84292909aafbbc501be91d53120122689f4a36cb2353f7` |
| 2 | `abbrev` | [Ideal.ResidueField.map](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-residuefield-map--2ecf06886c7f913a300b0a7c.md) | 39 | `declaration-track:2ecf06886c7f913a300b0a7cf38ce5869bfebd15e3aeb8f4e2f44d57decf4f01` |
| 3 | `def` | [Ideal.ResidueField.mapₐ](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-residuefield-map--d4653ad7e732395a0232bbb1.md) | 45 | `declaration-track:d4653ad7e732395a0232bbb1b98c5c1e7da7e6da30456eeb548fd6d31d1c771d` |
| 4 | `lemma` | [Ideal.ResidueField.mapₐ_apply](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-residuefield-map-apply--5a1ee6af9fb08c89a61ddfaf.md) | 55 | `result-track:5a1ee6af9fb08c89a61ddfaf5b899880b7994278bebc91004b59950d23246313` |
| 5 | `lemma` | [Ideal.algebraMap_residueField_eq_zero](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-algebramap-residuefield-eq-zero--8756577173d07940c7f60a1b.md) | 61 | `result-track:8756577173d07940c7f60a1ba6a9cf4bdedfed356e3c781a373c26662c1c0d6f` |
| 6 | `lemma` | [Ideal.ker_algebraMap_residueField](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-ker-algebramap-residuefield--5ac933d880f16647342aff7f.md) | 68 | `result-track:5ac933d880f16647342aff7f827bda12daa435b1c10fb5c77b91b81f137b6f80` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/instance--afc4afb4055a724cdf2dbedf.md) | 73 | `declaration-track:afc4afb4055a724cdf2dbedfe1007e54f3817004da0a5348f5027a8e8392f94d` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/instance--29a557dd21b760e4707bf0a8.md) | 77 | `declaration-track:29a557dd21b760e4707bf0a8d0e4c676706117bae90d9e8b73a49690027fc390` |
| 9 | `lemma` | [algebraMap_mk](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/algebramap-mk--a8ec6c5c1ed9379638ae8a59.md) | 81 | `result-track:a8ec6c5c1ed9379638ae8a59eed41209139185ee1f040cc837aebcd3b1bfef92` |
| 10 | `lemma` | [Ideal.injective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-injective-algebramap-quotient-residuefield--b23fcd1eff585c2631c259aa.md) | 85 | `result-track:b23fcd1eff585c2631c259aad8dd6e6bbbc92dab1a963c7fda6448e686ed30a8` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/instance--af3fc92686c60e590d341b2f.md) | 92 | `declaration-track:af3fc92686c60e590d341b2f6b15f0c1d6f6a9db555253655716dff24099dd58` |
| 12 | `lemma` | [Ideal.bijective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variantc0dcfb74ecfbf8362c6159fb60f5f0bd2ebc62a29c3fdc73997819cf51e01938.lean/declarations/ideal-bijective-algebramap-quotient-residuefield--6fff0e382e9c6a528ec12770.md) | 111 | `result-track:6fff0e382e9c6a528ec12770f225479f8815b9d4c8bf016bee08a5650a686cf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
