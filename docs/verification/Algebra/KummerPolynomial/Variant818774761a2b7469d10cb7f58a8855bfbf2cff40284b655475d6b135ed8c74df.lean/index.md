# Verification target: GRWTSK.Algebra.KummerPolynomial.Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6ecebd333287716b26d263851a18708e03acaf7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6ecebd333287716b26d263851a18708e03acaf7`.

Source path: `GRWTSK/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [root_X_pow_sub_C_pow](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/root-x-pow-sub-c-pow--892d094c7921e73a5b46380e.md) | 25 | `result-track:892d094c7921e73a5b46380ea2c30ebc13f596043a80a9e2e1488319efdf9b52` |
| 2 | `lemma` | [root_X_pow_sub_C_ne_zero](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/root-x-pow-sub-c-ne-zero--5b260fca414cc72e2525cb2d.md) | 29 | `result-track:5b260fca414cc72e2525cb2d8f5434b5850ab4a2d29c2ed15e019d222cbe645f` |
| 3 | `lemma` | [root_X_pow_sub_C_ne_zero'](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/root-x-pow-sub-c-ne-zero--e8c80bdc615d3b12bf35ba09.md) | 34 | `result-track:e8c80bdc615d3b12bf35ba09d9c6794384ae77ba976b6f1a91605dbbbc77ebf2` |
| 4 | `lemma` | [ne_zero_of_irreducible_X_pow_sub_C](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/ne-zero-of-irreducible-x-pow-sub-c--0c3879a91a4074cd1cceb9f1.md) | 49 | `result-track:0c3879a91a4074cd1cceb9f124232fcbfc29a674017496df1c8cf150ff11f0f5` |
| 5 | `lemma` | [ne_zero_of_irreducible_X_pow_sub_C'](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/ne-zero-of-irreducible-x-pow-sub-c--6a29f70f0f72092a7d2c26ad.md) | 55 | `result-track:6a29f70f0f72092a7d2c26ad64f9e09d582ebce77bc7d2dfeb4288b30eae6b13` |
| 6 | `lemma` | [root_X_pow_sub_C_eq_zero_iff](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/root-x-pow-sub-c-eq-zero-iff--a48fac5c13baa2bb31417816.md) | 61 | `result-track:a48fac5c13baa2bb3141781690d5a3fbdb3901e0e96ae400293ce2e1ad4fd738` |
| 7 | `lemma` | [root_X_pow_sub_C_ne_zero_iff](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/root-x-pow-sub-c-ne-zero-iff--6c5a3cb87adddc5862864841.md) | 69 | `result-track:6c5a3cb87adddc5862864841a29e1d373fb75ac8443319d5a4f14d8bbff64014` |
| 8 | `theorem` | [pow_ne_of_irreducible_X_pow_sub_C](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/pow-ne-of-irreducible-x-pow-sub-c--e2922074e6b6b2083e4765c5.md) | 73 | `result-track:e2922074e6b6b2083e4765c57deb3bd8767d4f1a5e6adb3c427e6ada17403560` |
| 9 | `theorem` | [X_pow_sub_C_irreducible_of_prime](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/x-pow-sub-c-irreducible-of-prime--3c3374b8b90f31c7d2f8bb3e.md) | 94 | `result-track:3c3374b8b90f31c7d2f8bb3e72aeb085df4382d5a13eddf2474d8cc31389f672` |
| 10 | `theorem` | [X_pow_sub_C_irreducible_iff_of_prime](../../../../mathematics/Algebra/KummerPolynomial/Variant818774761a2b7469d10cb7f58a8855bfbf2cff40284b655475d6b135ed8c74df.lean/declarations/x-pow-sub-c-irreducible-iff-of-prime--6542491efa4f5dfab1e568b8.md) | 120 | `result-track:6542491efa4f5dfab1e568b809743d58784d088a02c6e45acdf097d54066d7c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
