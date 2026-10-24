# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b68b527724638f38016d338e0ccddbd7684c75c3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b68b527724638f38016d338e0ccddbd7684c75c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk_finsupp_lift_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-lift-of-fintype--e899e7591ddd4cea0768e271.md) | 17 | `result-track:e899e7591ddd4cea0768e271f769e1bdd7c45d26d93dfe9db071985b5af5b630` |
| 2 | `theorem` | [mk_finsupp_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-of-fintype--7a24aac1ffed9fd708fe9ea9.md) | 21 | `result-track:7a24aac1ffed9fd708fe9ea991441894b020b84701c358e25550cc788aba4c36` |
| 3 | `theorem` | [mk_finsupp_lift_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-lift-of-infinite--9d5d077ffc39bcf9f0314ab9.md) | 25 | `result-track:9d5d077ffc39bcf9f0314ab9b1a226aea1525f0de3b5c4c0854d0f8023dafb0f` |
| 4 | `theorem` | [mk_finsupp_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-of-infinite--692d930b944f29026eeb0c23.md) | 40 | `result-track:692d930b944f29026eeb0c23d8ced1b1d13024d8e95dc4dedfcb964e6056a09b` |
| 5 | `theorem` | [mk_finsupp_lift_of_infinite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-lift-of-infinite--ee64b555dcfc502c7f42c73e.md) | 44 | `result-track:ee64b555dcfc502c7f42c73e9bf5dcf683a93fd9c0a26fc6a32dba8cafd2b4f2` |
| 6 | `theorem` | [mk_finsupp_of_infinite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-of-infinite--e3a806bb32f8b96158165973.md) | 53 | `result-track:e3a806bb32f8b961581659736421f41d9070eeb61c22113462eaaf355fda9d0a` |
| 7 | `theorem` | [mk_finsupp_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-finsupp-nat--1386cf3226e8a07b9f23ebc9.md) | 56 | `result-track:1386cf3226e8a07b9f23ebc9b8417dda52e04de3b626fc71efdca9d09c20ea17` |
| 8 | `theorem` | [mk_multiset_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-multiset-of-isempty--56aab14054886302fbb0367c.md) | 58 | `result-track:56aab14054886302fbb0367c7f06d8921d41adb5f771f9d9f25e5c05cd0bab96` |
| 9 | `theorem` | [mk_multiset_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-multiset-of-nonempty--b6753a5bdd2b2fd07f3a73a7.md) | 62 | `result-track:b6753a5bdd2b2fd07f3a73a7f9c73aa2345d30e5b66b471e1b89f42438439464` |
| 10 | `theorem` | [mk_multiset_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-multiset-of-infinite--e4f4bc632ff0486dd880e6d1.md) | 66 | `result-track:e4f4bc632ff0486dd880e6d16684004f76751bf71fb785eb58a9103d899d1167` |
| 11 | `theorem` | [mk_multiset_of_countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67.lean/declarations/mk-multiset-of-countable--728e9f1a62c843e8b09c8ffc.md) | 68 | `result-track:728e9f1a62c843e8b09c8ffc568c6f2b832afb75c8e8b58a3de1cf57c381093f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
