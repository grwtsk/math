# Verification target: GRWTSK.Algebra.GroupTheory.Order.Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a34cb52e255ad10e3485ee150c66815b4e32673e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a34cb52e255ad10e3485ee150c66815b4e32673e`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StarOrderedRing](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/starorderedring--cb13643feddaac5778fc3e9e.md) | 49 | `declaration-track:cb13643feddaac5778fc3e9e246cbca7c2051fc5ac4cba7b340f6b35f016ce29` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/instance--a05443a7a427c12fa91c0079.md) | 58 | `declaration-track:a05443a7a427c12fa91c00791e6cb5a3a28ad61c15a91a5d59c1e401c9603136` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/instance--5595f012b566003268b44fa4.md) | 68 | `declaration-track:5595f012b566003268b44fa4f4dd90b96852cb30941a16ce2d1af1cd139d23a9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/instance--4c31c10931ec7fbe1ca272b1.md) | 76 | `declaration-track:4c31c10931ec7fbe1ca272b1a40ff787eed5e78c25c652a618aef1b071df6b9b` |
| 5 | `def` | [ofLeIff](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/ofleiff--681577dd9677090241a2ecad.md) | 93 | `declaration-track:681577dd9677090241a2ecadaa4b1de4e337e1f2855c11145a9981103a31fb20` |
| 6 | `def` | [ofNonnegIff](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/ofnonnegiff--eed5d6f24ad0565e2f5e1584.md) | 114 | `declaration-track:eed5d6f24ad0565e2f5e1584713fdc1211a87089d3340a1f90dc153f5f3db5eb` |
| 7 | `def` | [ofNonnegIff'](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/ofnonnegiff--8166d6dacfebe1ce0833e6da.md) | 132 | `declaration-track:8166d6dacfebe1ce0833e6da572a389085f2c8f90306618280f822e368e186ba` |
| 8 | `theorem` | [nonneg_iff](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/nonneg-iff--2d8ce1b7c31b3cbe7950d4e0.md) | 140 | `result-track:2d8ce1b7c31b3cbe7950d4e0e0723665e05a5096c4a5d07a5823dd152b933123` |
| 9 | `theorem` | [star_mul_self_nonneg](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/star-mul-self-nonneg--13a50efd53099b5ee8b41870.md) | 151 | `result-track:13a50efd53099b5ee8b41870dc238580f9698460f4ca6318b0b74e915b72fd97` |
| 10 | `theorem` | [star_mul_self_nonneg'](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/star-mul-self-nonneg--b2c3ad1d8bb31061a4fdb190.md) | 155 | `result-track:b2c3ad1d8bb31061a4fdb190047aaf21c0d0bf407b80f82994c455c78e733a82` |
| 11 | `theorem` | [conjugate_nonneg](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/conjugate-nonneg--0b83bfa31382071aa85dd613.md) | 159 | `result-track:0b83bfa31382071aa85dd613f5f96b25607aeff57e18d1e3f1a421af9a40114b` |
| 12 | `theorem` | [conjugate_nonneg'](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/conjugate-nonneg--4f48ef2469f143cd33b3bd81.md) | 172 | `result-track:4f48ef2469f143cd33b3bd811d6b3d044a139b2a49d820d02c519786d960ac3b` |
| 13 | `theorem` | [conjugate_le_conjugate](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/conjugate-le-conjugate--84f9c50acc5b245abe27bd61.md) | 176 | `result-track:84f9c50acc5b245abe27bd612805ad673485887146e1a97796277bdff101f235` |
| 14 | `theorem` | [conjugate_le_conjugate'](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/declarations/conjugate-le-conjugate--6d01f43f65949f960ec3ba6d.md) | 184 | `result-track:6d01f43f65949f960ec3ba6d978de47540a203dec42f40021e588633fe3903e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
