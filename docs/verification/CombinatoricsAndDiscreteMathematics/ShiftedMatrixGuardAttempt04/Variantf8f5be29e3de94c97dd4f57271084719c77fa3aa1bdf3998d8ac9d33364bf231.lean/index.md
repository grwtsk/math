# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuardAttempt04.Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8763a8188f980903b1deecf96b8c10da26e98ac",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8763a8188f980903b1deecf96b8c10da26e98ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/shifted--814a1b5cd66a53a544917f84.md) | 18 | `declaration-track:814a1b5cd66a53a544917f84d687cfd4ea93a964ee6aa15cc2129c32ffa47edc` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/bottom--2a6759ac5a0f8de0114ef5ae.md) | 21 | `declaration-track:2a6759ac5a0f8de0114ef5ae33659e91de85783187049cdd38885ee3896ddf27` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/bottom-le-eigenvalue--d3bd16796ccfce66cc69e9f2.md) | 24 | `result-track:d3bd16796ccfce66cc69e9f252fa1e59a20784196862cdfa1ff0a79f02a7cac2` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/le-bottom-iff--38393842cb2e71398bd6e07c.md) | 28 | `result-track:38393842cb2e71398bd6e07c014944b6494b760cc1d89ff217d1582ffbd92d9d` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/source-positive-iff-bottom-nonneg--5e4212ea70773ee82d126e35.md) | 32 | `result-track:5e4212ea70773ee82d126e3540f1a2c3e1eb5097b68271b75d062f8b310bd56f` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/shifted-eq-spectral-conjugate--5423a746595319a61dd68af9.md) | 37 | `result-track:5423a746595319a61dd68af9e159261a26da8051c712bb938988ed2b94517710` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/shifted-positive-of-le-bottom--f4802ca2eaf796cb52a28193.md) | 50 | `result-track:f4802ca2eaf796cb52a2819360a7f5c0574aff50c905db8d067a48b2208591c7` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/shifted-positive-of-lt-bottom--05160ede1c3134e483945a37.md) | 59 | `result-track:05160ede1c3134e483945a37997012f9cb0aeb8e6c2c2dcc351605b67281a5a1` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/shifted-strict-positive-of-lt-bottom--18c009cbac964fc677f69fce.md) | 64 | `result-track:18c009cbac964fc677f69fcea49a8f1f90d480d4241b8402da468083d1c1d859` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/shifted-quadratic-exact--b6c1c1fda72df656effecabb.md) | 73 | `result-track:b6c1c1fda72df656effecabb9fbb7880f8ec298016bcc94c52b9c18e3a6d6462` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--305959cb9a7025690925bd32.md) | 78 | `result-track:305959cb9a7025690925bd3277d17fa2aa60000c0bee80fb66bc84226359c77b` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/negative-one-shifted-by-negative-two--e4560f32de64df6cead3b6e1.md) | 87 | `result-track:e4560f32de64df6cead3b6e14b18a7806c1de690e1bf375fb7582811797d3248` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/negative-one-has-positive-shift--8e525ef3e172b578c848d345.md) | 94 | `result-track:8e525ef3e172b578c848d34562bd35e2172f98aa87d8ba9e08f3179a4f0e836f` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/negative-one-source-not-positive--9d6f3593ce1ae56430c8fa52.md) | 100 | `result-track:9d6f3593ce1ae56430c8fa529137b1050d49eeb049a177c0fd63b6fc1e62f0da` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/no-unconditional-shift-descent--e4dffc4c6d259b70d4c5f330.md) | 106 | `result-track:e4dffc4c6d259b70d4c5f330b5939147482816df855cc3eb674b2cbeb36a71f9` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/conditional-form-shift-coercive--5b1817796129ae6a1f6df802.md) | 113 | `result-track:5b1817796129ae6a1f6df80238c7817161005b92664134c7816b0b34b2ddab5e` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--e8caa6e91036f177c00aa663.md) | 121 | `result-track:e8caa6e91036f177c00aa6633ad34c81b375a5726fb552a71e80463a7291af3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
