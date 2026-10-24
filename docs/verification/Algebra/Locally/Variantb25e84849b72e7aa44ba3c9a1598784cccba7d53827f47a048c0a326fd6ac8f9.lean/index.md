# Verification target: GRWTSK.Algebra.Locally.Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79cf4574ca91dbb7d9812c2231b517acd136f4a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79cf4574ca91dbb7d9812c2231b517acd136f4a`.

Source path: `GRWTSK/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Locally](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally--121dd0dff842a8970aef407c.md) | 70 | `declaration-track:121dd0dff842a8970aef407ce34ba288749c7438d2ca433ea12a136e709354ff` |
| 2 | `lemma` | [locally_iff_span_eq_top](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-iff-span-eq-top--cff4f1bd7284d577352062f0.md) | 76 | `result-track:cff4f1bd7284d577352062f02aa6fca474eb38a18df7582d5702f8ed8e2be7de` |
| 3 | `lemma` | [locally_iff_finite](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-iff-finite--a6a12a0a46a2589b74249ebb.md) | 85 | `result-track:a6a12a0a46a2589b74249ebb04ae1d037e7dce49c9665fcb66e381fa4c28b3c2` |
| 4 | `lemma` | [locally_of_exists](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-of-exists--2d938386bc6297b9d1151a57.md) | 99 | `result-track:2d938386bc6297b9d1151a57669df16c39b280287d2b38bee0e075ec71bc75bb` |
| 5 | `lemma` | [locally_iff_exists](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-iff-exists--bb7087c9ef91b5ea3250dc42.md) | 115 | `result-track:bb7087c9ef91b5ea3250dc42c3591ba081f2e90556d27b4da6973808514ba499` |
| 6 | `lemma` | [locally_iff_isLocalization](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-iff-islocalization--d57659d74f2423ced94a5aa6.md) | 126 | `result-track:d57659d74f2423ced94a5aa6aa4d371a5c1d8db8717a04a6fb4ccec5948858d5` |
| 7 | `lemma` | [locally_of](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-of--e79d4e168e6f3bd195aeb67b.md) | 141 | `result-track:e79d4e168e6f3bd195aeb67b98367ce35af67eaa723c4d4766a1e532f5583f88` |
| 8 | `lemma` | [locally_of_locally](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-of-locally--7d1ebff7ba0f5c70677126b2.md) | 148 | `result-track:7d1ebff7ba0f5c70677126b28f75e3a5651ff8b4fbf4a2a8e164fa540fcba996` |
| 9 | `lemma` | [locally_iff_of_localizationSpanTarget](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-iff-of-localizationspantarget--c3a98c0f8f28de85c825e8b3.md) | 155 | `result-track:c3a98c0f8f28de85c825e8b3dd13274e0a8fba6adac004c1e62f6414102ada62` |
| 10 | `lemma` | [locally_ofLocalizationSpanTarget](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-oflocalizationspantarget--ba366858aad8bec7dfd4d8cd.md) | 163 | `result-track:ba366858aad8bec7dfd4d8cdcb35eaf485c876db59c1842be2dad1b98361660b` |
| 11 | `lemma` | [locally_respectsIso](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-respectsiso--640e583fd17b0280b34b0223.md) | 189 | `result-track:640e583fd17b0280b34b0223dfef8376c2d67ec2b5d9b6cd0bf1000761e80586` |
| 12 | `lemma` | [locally_holdsForLocalizationAway](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-holdsforlocalizationaway--546bf7594da5b9407271665d.md) | 207 | `result-track:546bf7594da5b9407271665d64105248504094e3f6c46c19997b62c4390c5ba5` |
| 13 | `lemma` | [locally_stableUnderComposition](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-stableundercomposition--7fc120fc1229355a56f5ecbd.md) | 220 | `result-track:7fc120fc1229355a56f5ecbd286fa07f05c2ae77047974e29ff4cc82c619973b` |
| 14 | `lemma` | [locally_stableUnderCompositionWithLocalizationAwayTarget](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-stableundercompositionwithlocalizationawaytarget--f886a894f59066dae820cbcb.md) | 258 | `result-track:f886a894f59066dae820cbcbc0bc210cfe4af7822614d5edf01adf4c08cea248` |
| 15 | `lemma` | [locally_stableUnderCompositionWithLocalizationAwaySource](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-stableundercompositionwithlocalizationawaysource--5a62cbd2f6de9e91cce33517.md) | 285 | `result-track:5a62cbd2f6de9e91cce3351735a1c9cb1b75b569396b85affbf758cfb7fcb684` |
| 16 | `lemma` | [locally_isStableUnderBaseChange](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-isstableunderbasechange--cf78f1ffb6eb21cfef7b0ce5.md) | 294 | `result-track:cf78f1ffb6eb21cfef7b0ce580b9146adc70c2b667f0e821ff16d6415a81394a` |
| 17 | `lemma` | [locally_localizationAwayPreserves](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-localizationawaypreserves--b7921c32946c9be3f9f453ee.md) | 309 | `result-track:b7921c32946c9be3f9f453ee9cd481bdc453cab58b80d168758971de5ba45192` |
| 18 | `lemma` | [locally_localizationPreserves](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-localizationpreserves--f6a7ddfa7f6687bc26a9308f.md) | 341 | `result-track:f6a7ddfa7f6687bc26a9308fe204c56fc725f9c5f69f589377ab825f60f00611` |
| 19 | `lemma` | [locally_propertyIsLocal](../../../../mathematics/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/declarations/locally-propertyislocal--585d4988ab8cbaed74c50e2c.md) | 376 | `result-track:585d4988ab8cbaed74c50e2c83f2b1c6fbe535942670f4964e0edb86f7e1bfd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
