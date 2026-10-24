# Verification target: GRWTSK.Algebra.CharAndCard.Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6054e2d9142eb2c2555d7c22cea62b83c82ed8bd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/index.md) · [Full source](../../../../mathematics/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6054e2d9142eb2c2555d7c22cea62b83c82ed8bd`.

Source path: `GRWTSK/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_not_dvd_char_of_ringChar_ne_zero](../../../../mathematics/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/declarations/isunit-iff-not-dvd-char-of-ringchar-ne-zero--cd6aea8a949b61a925bee242.md) | 31 | `result-track:cd6aea8a949b61a925bee242b3ca279240ca7885dd912058859c3d8f32f63fda` |
| 2 | `theorem` | [isUnit_iff_not_dvd_char](../../../../mathematics/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/declarations/isunit-iff-not-dvd-char--4449c5b2b1bdf99fb9d067a3.md) | 59 | `result-track:4449c5b2b1bdf99fb9d067a3a8c7f01486294f3d5ca8192bd393b5c895986e8b` |
| 3 | `theorem` | [prime_dvd_char_iff_dvd_card](../../../../mathematics/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/declarations/prime-dvd-char-iff-dvd-card--9bdb06e5fba14b598869ae90.md) | 66 | `result-track:9bdb06e5fba14b598869ae909a9d7a9bfaa852a257b8d10183e251a43b3865dc` |
| 4 | `theorem` | [not_isUnit_prime_of_dvd_card](../../../../mathematics/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/declarations/not-isunit-prime-of-dvd-card--8aa0e9262a4a32a6416dc740.md) | 87 | `result-track:8aa0e9262a4a32a6416dc7408bbc2d3e8de1defe6d205fb669b6581fe6cdf861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
