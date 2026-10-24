# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AsciiCasing.Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec16c190f358609b6949bee529026a98cd664832",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec16c190f358609b6949bee529026a98cd664832`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_isLower_of_isUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/not-islower-of-isupper--a146c82b56e6bfffe18f4ce3.md) | 29 | `result-track:a146c82b56e6bfffe18f4ce339233a8789f62dcd6944c3f16e8d771e466d1d8b` |
| 2 | `theorem` | [not_isUpper_of_isLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/not-isupper-of-islower--b5236d10d5f421a2d95fd1ba.md) | 33 | `result-track:b5236d10d5f421a2d95fd1bada82ffe925f6442cc58009ed0c0c72fcba8a9105` |
| 3 | `theorem` | [toLower_eq_of_not_isUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/tolower-eq-of-not-isupper--fde21da4c481c04d67ae620d.md) | 38 | `result-track:fde21da4c481c04d67ae620da6a6c2b410de67d017a800768c1c1947dee1c8e6` |
| 4 | `theorem` | [toLower_eq_of_isUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/tolower-eq-of-isupper--9bef13e7e1b62d7642569082.md) | 42 | `result-track:9bef13e7e1b62d76425690826579d29a329e98f63a73da1f75a60507c272e988` |
| 5 | `theorem` | [toUpper_eq_of_not_isLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/toupper-eq-of-not-islower--ad2a80de1123b1e9db241ac2.md) | 48 | `result-track:ad2a80de1123b1e9db241ac2084c24a35793572be1aad759d294b84995aa27e3` |
| 6 | `theorem` | [toUpper_eq_of_isLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/toupper-eq-of-islower--a842ba4aac61363957b455b2.md) | 52 | `result-track:a842ba4aac61363957b455b2ffd6048ae0caa08778d1690efaa8d5d259945707` |
| 7 | `theorem` | [isUpper_toLower_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/isupper-tolower-eq-false--e2a34a15f3d47d1f61c4cc82.md) | 59 | `result-track:e2a34a15f3d47d1f61c4cc820bc1a2a05d82d23cbfb0b9cb40eba34d30d73025` |
| 8 | `theorem` | [isLower_toUpper_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/islower-toupper-eq-false--ae1ef41f8a46ddaa2e080024.md) | 63 | `result-track:ae1ef41f8a46ddaa2e080024a5d27573f61adaf3a946458d12c00fe95f0aa3ac` |
| 9 | `theorem` | [isLower_toLower_eq_isAlpha](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/islower-tolower-eq-isalpha--528b7b465bd9332425210fa9.md) | 67 | `result-track:528b7b465bd9332425210fa9227d34b7bc5730f19f68b954cd0bc1f2a34c1139` |
| 10 | `theorem` | [isUpper_toUpper_eq_isAlpha](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/isupper-toupper-eq-isalpha--4c6b45e1c4d5d5feb0ca384e.md) | 79 | `result-track:4c6b45e1c4d5d5feb0ca384e2745dfe4d07797c62bfc5f7844c243d086544ace` |
| 11 | `theorem` | [isAlpha_toLower_eq_isAlpha](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/isalpha-tolower-eq-isalpha--e65b031d86d2d4563ce6fc0d.md) | 92 | `result-track:e65b031d86d2d4563ce6fc0dde5a32df769d20d9fb571d1c93d7907b24573a46` |
| 12 | `theorem` | [isAlpha_toUpper_eq_isAlpha](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/isalpha-toupper-eq-isalpha--434aa88295eb1afc37b02c76.md) | 95 | `result-track:434aa88295eb1afc37b02c768afb928d91bef58bb1eff0f94220fbde94509045` |
| 13 | `theorem` | [toLower_toLower_eq_toLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/tolower-tolower-eq-tolower--2f58618201d640d3b0b40c09.md) | 98 | `result-track:2f58618201d640d3b0b40c093a6746357ebf987cd34840a21a30505e6168332f` |
| 14 | `theorem` | [toLower_toUpper_eq_toLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/tolower-toupper-eq-tolower--6e639bf9bb135d4cc7301258.md) | 101 | `result-track:6e639bf9bb135d4cc7301258026015a66355451f8951db54c59d388d4f154d0c` |
| 15 | `theorem` | [toUpper_toUpper_eq_toUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/toupper-toupper-eq-toupper--e46de20ea74fb0613dffb743.md) | 117 | `result-track:e46de20ea74fb0613dffb74395301aff406b0181903f16236a41fe260b31c3e0` |
| 16 | `theorem` | [toUpper_toLower_eq_toUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/toupper-tolower-eq-toupper--e54b008d2ac274dd42c204e3.md) | 120 | `result-track:e54b008d2ac274dd42c204e36c220dedb06acd769b6ef08e6256771800a17857` |
| 17 | `abbrev` | [caseFoldAsciiOnly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/casefoldasciionly--b667f68a70915018ff0a83b1.md) | 146 | `declaration-track:b667f68a70915018ff0a83b1a63546202a044d0895a40d196bbe8d8855aba94e` |
| 18 | `def` | [beqCaseInsensitiveAsciiOnly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/beqcaseinsensitiveasciionly--fccb594671df1c1bb79dc1d7.md) | 160 | `declaration-track:fccb594671df1c1bb79dc1d78d1fe8f212e5e12f22990b569e6a0d8d1a856f51` |
| 19 | `theorem` | [beqCaseInsensitiveAsciiOnly.eqv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/beqcaseinsensitiveasciionly-eqv--fdc7070e4bb681eb010b4156.md) | 163 | `result-track:fdc7070e4bb681eb010b4156827ca0aeddf36dd72f33582c31b33363e55b2455` |
| 20 | `def` | [beqCaseInsensitiveAsciiOnly.isSetoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/beqcaseinsensitiveasciionly-issetoid--0320252ac0cb6f671bdad65c.md) | 172 | `declaration-track:0320252ac0cb6f671bdad65c1bdcd3244383267256a08d4f2cce4708bae2907d` |
| 21 | `def` | [cmpCaseInsensitiveAsciiOnly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/declarations/cmpcaseinsensitiveasciionly--4904830ddd3b5828a8df59e4.md) | 187 | `declaration-track:4904830ddd3b5828a8df59e4e8cbcc9dde11bdc981eece6a22b784cd5f220a8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
