# Verification target: GRWTSK.Algebra.UniversalAlgebra.SignedInformation.Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "942c1c7bfa38e2e7b820629e356a870e97fc9821",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `942c1c7bfa38e2e7b820629e356a870e97fc9821`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteValueObstruction](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/absolutevalueobstruction--8fce236412d55c70c2d13f14.md) | 21 | `declaration-track:8fce236412d55c70c2d13f14bcb6437273b0db3eb92f47e4a9bcee161cd87c16` |
| 2 | `theorem` | [absoluteValue_not_descends](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/absolutevalue-not-descends--c91e312d7dd65b93153f7a32.md) | 28 | `result-track:c91e312d7dd65b93153f7a32825baf44e36b413c0484b1fe5d504e949d5c0be9` |
| 3 | `def` | [coordinatewiseAbs](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/coordinatewiseabs--1eeecab0c33bf8d840751fa7.md) | 32 | `declaration-track:1eeecab0c33bf8d840751fa792bf6a1f724f60728da0881f88ec61c9a83591fd` |
| 4 | `def` | [signedSum](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/signedsum--1ba6f093ddeeb266db291204.md) | 36 | `declaration-track:1ba6f093ddeeb266db291204bbab280eec2ddea7f91cf85c5dc5a6c166919ff1` |
| 5 | `def` | [singleCoordinate](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/singlecoordinate--780a633dbc35a91eb01f4a0b.md) | 40 | `declaration-track:780a633dbc35a91eb01f4a0b47d891f7a3d0159d0a99a1f2d398dc252d52fe2c` |
| 6 | `def` | [coordinatewiseAbsSumObstruction](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/coordinatewiseabssumobstruction--14aa6c08259966084220f5ce.md) | 46 | `declaration-track:14aa6c08259966084220f5ce5b9670e5d36c9594221368a165bda24cc1639c09` |
| 7 | `theorem` | [coordinatewiseAbs_sum_not_descends](../../../../../mathematics/Algebra/UniversalAlgebra/SignedInformation/Variant5e8df15de68a8ab00d0ab9440297b2131c68eeb65b210d27f6293144ddca1565.lean/declarations/coordinatewiseabs-sum-not-descends--d64312d28d22599c8c7d2d65.md) | 57 | `result-track:d64312d28d22599c8c7d2d6504bdc504079f9e577fd0f0f644e3c15eb09c61b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
