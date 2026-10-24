# Verification target: GRWTSK.Analysis.FiniteCharacterGuardAttempt03.Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0a446081a9ad11c9692e71e5e15cc86bb586b7d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0a446081a9ad11c9692e71e5e15cc86bb586b7d`.

Source path: `GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/coefficientmap--39ff8ddc4a893201c7d9c939.md) | 14 | `declaration-track:39ff8ddc4a893201c7d9c939973f887cab5e7e7288d8aed099cdf2e9360c8e96` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/coefficient-eq-expect--5e1e84680572301edb4bff3e.md) | 20 | `result-track:5e1e84680572301edb4bff3e49ec0ca401bd2d2375d81c59dff4642036299b2b` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/trivial-coefficient-eq-mean--9d5daad4253137e1673851c0.md) | 25 | `result-track:9d5daad4253137e1673851c0960e55856740808e7f9ee39045a6e030156178af` |
| 4 | `theorem` | [coefficient_character](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/coefficient-character--fc16b9d5e544b2cf46685888.md) | 30 | `result-track:fc16b9d5e544b2cf466858884927dcf0c74d1e5bb1cbc7a37a5e4fe5ccb23eac` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/coefficient-eq-basis-repr--29c1f0d7c9a7a670f44f3829.md) | 35 | `result-track:29c1f0d7c9a7a670f44f38294c3e6935f7019429ca4754baeb2f6b6f05f6ef47` |
| 6 | `theorem` | [complete_reconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/complete-reconstruction--3942a0beabbd307e758c6990.md) | 43 | `result-track:3942a0beabbd307e758c69902b48a4321cda97e99fad3811ba1676607348184f` |
| 7 | `def` | [incompleteReconstruction](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/incompletereconstruction--278b1aeb8f6a5d4acb7f183f.md) | 49 | `declaration-track:278b1aeb8f6a5d4acb7f183fd3fa5900b80d7f5835a4e510bad5bafea2670534` |
| 8 | `theorem` | [reconstruction_split](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/reconstruction-split--b5538e67d8973e631ba548cf.md) | 54 | `result-track:b5538e67d8973e631ba548cff6be98e28d1119339a0f2d90798d0e893084e657` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/incomplete-eq-self-iff--fa55630c224d2edd9edb6f4f.md) | 68 | `result-track:fa55630c224d2edd9edb6f4fe31cb72f81caf41f825303ec5bc1bbe153b565ff` |
| 10 | `def` | [nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/nontrivialspan--d9ed5dc1d0f2a4f326342034.md) | 80 | `declaration-track:d9ed5dc1d0f2a4f3263420349645b10d9d10cd64e47b28d67a92028f322cd467` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/nontrivialspan-le-trivial-kernel--1b16753d689c6a93970f985f.md) | 83 | `result-track:1b16753d689c6a93970f985fe7b27b9da98152e9ba831b63bfdc222264267979` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../mathematics/Analysis/FiniteCharacterGuardAttempt03/Variant78653aec036fd64cb89b85808f1e1141446a00f026831e4bfc5fe645e3b9cdf5.lean/declarations/trivial-not-mem-nontrivialspan--f43bd9e20be2423d5e181920.md) | 92 | `result-track:f43bd9e20be2423d5e1819204a8eab86b7d9ba900829bcbc9849ec8c7509537f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
