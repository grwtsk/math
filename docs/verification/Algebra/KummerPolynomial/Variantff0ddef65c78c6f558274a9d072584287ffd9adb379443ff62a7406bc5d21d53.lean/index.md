# Verification target: GRWTSK.Algebra.KummerPolynomial.Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab83baf41aa76d3cfcfc0f1b77b6df0652efab80",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab83baf41aa76d3cfcfc0f1b77b6df0652efab80`.

Source path: `GRWTSK/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [root_X_pow_sub_C_pow](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/root-x-pow-sub-c-pow--8c3cfcd6bd266d2708da946e.md) | 33 | `result-track:8c3cfcd6bd266d2708da946e707c09eeee77b6a4fa12c263adc77723334af1ea` |
| 2 | `lemma` | [root_X_pow_sub_C_ne_zero](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/root-x-pow-sub-c-ne-zero--1a6e6f3c518b632a9c2f4710.md) | 37 | `result-track:1a6e6f3c518b632a9c2f47104a482b1b943b38c25e629ed493ecfeffc11a8ac3` |
| 3 | `lemma` | [root_X_pow_sub_C_ne_zero'](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/root-x-pow-sub-c-ne-zero--d1f37b52076b1ffa16ed938b.md) | 42 | `result-track:d1f37b52076b1ffa16ed938bb1329f2fc0c0041c4a2f6af4ab0d6d22a21b9a27` |
| 4 | `lemma` | [ne_zero_of_irreducible_X_pow_sub_C](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/ne-zero-of-irreducible-x-pow-sub-c--8aa1e56cb19cb3989eecc1f6.md) | 57 | `result-track:8aa1e56cb19cb3989eecc1f636a310eb119fa155ac18aa70c7cde86317b0f716` |
| 5 | `lemma` | [ne_zero_of_irreducible_X_pow_sub_C'](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/ne-zero-of-irreducible-x-pow-sub-c--a48bb7cc595755128d6b424c.md) | 63 | `result-track:a48bb7cc595755128d6b424cffca7fe794580645d810d27154172ae6da4c3500` |
| 6 | `lemma` | [root_X_pow_sub_C_eq_zero_iff](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/root-x-pow-sub-c-eq-zero-iff--9864d130f5c9d5c6c5c1a99d.md) | 69 | `result-track:9864d130f5c9d5c6c5c1a99d201eebb1fac720cc0bd442b66d7520286089978e` |
| 7 | `lemma` | [root_X_pow_sub_C_ne_zero_iff](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/root-x-pow-sub-c-ne-zero-iff--9d6d190d09045d8e2a7910cc.md) | 77 | `result-track:9d6d190d09045d8e2a7910cce7add96bf3689edad50a7a9b15266378fc182a86` |
| 8 | `theorem` | [pow_ne_of_irreducible_X_pow_sub_C](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/pow-ne-of-irreducible-x-pow-sub-c--014fe30f9ad2d2da517ef6c2.md) | 81 | `result-track:014fe30f9ad2d2da517ef6c291776b89b68f2e1a18d3c9de7103aca2419034ba` |
| 9 | `theorem` | [X_pow_sub_C_irreducible_of_prime](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/x-pow-sub-c-irreducible-of-prime--0565d8b9d51edb57cc6690e3.md) | 102 | `result-track:0565d8b9d51edb57cc6690e3eafed191d8edfa124227d82a23ee7b9bf6fdba1d` |
| 10 | `theorem` | [X_pow_sub_C_irreducible_iff_of_prime](../../../../mathematics/Algebra/KummerPolynomial/Variantff0ddef65c78c6f558274a9d072584287ffd9adb379443ff62a7406bc5d21d53.lean/declarations/x-pow-sub-c-irreducible-iff-of-prime--ad28131630470a813de8db61.md) | 128 | `result-track:ad28131630470a813de8db61e29efe423a87b839f44d8f119973de8e01746c0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
