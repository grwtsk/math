# Verification target: GRWTSK.Algebra.UniversalAlgebra.Untop0.Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4f60631c35d6350c103fb573bc84379562b5d6d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4f60631c35d6350c103fb573bc84379562b5d6d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AddGroupWithTop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.WithTop` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [untop₀](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop--22a99f120052bc77e2d93213.md) | 28 | `declaration-track:22a99f120052bc77e2d932137a755193b1043e478f1279fa9d485e2cc0f30d72` |
| 2 | `lemma` | [untop₀_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-eq-zero--2597f3db47a0a5c1dfb2123a.md) | 35 | `result-track:2597f3db47a0a5c1dfb2123a7045675fe07cbcf464bf7422da5cc1779d628a27` |
| 3 | `lemma` | [untop₀_top](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-top--27fabe9799efa75f26e3d8aa.md) | 39 | `result-track:27fabe9799efa75f26e3d8aae74d7b9a0e569826c8694ebb9ceb64e1c10df5d7` |
| 4 | `lemma` | [untop₀_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-zero--cde57b0084b7507c4443c386.md) | 42 | `result-track:cde57b0084b7507c4443c3863fcd5baece9313c6a39da8917c35995f4cba28ba` |
| 5 | `lemma` | [untop₀_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-coe--c0d3ed2b682af8049db24adc.md) | 45 | `result-track:c0d3ed2b682af8049db24adc9e786177eb90059bcb099951210edfdc80edadf7` |
| 6 | `lemma` | [coe_untop₀_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/coe-untop-of-ne-top--79c798afda4554f32ba6ce37.md) | 47 | `result-track:79c798afda4554f32ba6ce375b5edab4b9b4ed1bf0a024a1d760bca1cae08aee` |
| 7 | `lemma` | [untopD_add](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untopd-add--b3abafd097e37d4b03245ada.md) | 58 | `result-track:b3abafd097e37d4b03245ada01af075a10f57a83258642bf8a9e6cf8b52b8a1b` |
| 8 | `lemma` | [untop₀_add](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-add--e3462bf98e59c51d65dda1da.md) | 65 | `result-track:e3462bf98e59c51d65dda1daef2291b0faba77959e82a74638bf843f38f84fc5` |
| 9 | `lemma` | [untop₀_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-mul--a5245b6d4e4bab109d1b1946.md) | 73 | `result-track:a5245b6d4e4bab109d1b19466c41701cfbaaad49581400573bd5d7559cec2750` |
| 10 | `lemma` | [untop₀_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-nonneg--c6208aca849a757bb620e317.md) | 84 | `result-track:c6208aca849a757bb620e317960b652eb2dfc3502a4bb6e313cfbad09a91a468` |
| 11 | `lemma` | [untop₀_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variantf747d51cf30003411d9196c27febeec120af021f10215f25f69fa4773a9dbe58.lean/declarations/untop-neg--608ac18c28092305b51d995e.md) | 95 | `result-track:608ac18c28092305b51d995e8eaa485e52ce7534963c39bfd2fbfb8d759ee9f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
