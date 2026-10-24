# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Newton.Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d9c1055db15e0443d43b0c187f28b3ecc9e0c3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d9c1055db15e0443d43b0c187f28b3ecc9e0c3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Identities` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Nilpotent` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/newtonmap--69e2d8a82b4d12f030d31c8b.md) | 52 | `declaration-track:69e2d8a82b4d12f030d31c8b5cdeafd39eda32f647e7ce0c70539941a1947488` |
| 2 | `theorem` | [newtonMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/newtonmap-apply--121be1cffac4bc056f645a3c.md) | 55 | `result-track:121be1cffac4bc056f645a3cfabd1c0ca51ff2e7719ce2553583d3d96e6fe256` |
| 3 | `theorem` | [newtonMap_apply_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/newtonmap-apply-of-isunit--278b201ce46233c867224261.md) | 61 | `result-track:278b201ce46233c867224261061e601293796f04568eee04e860e0d7a7dc2a1b` |
| 4 | `theorem` | [newtonMap_apply_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/newtonmap-apply-of-not-isunit--733fe8bb9db3bf82680b562f.md) | 65 | `result-track:733fe8bb9db3bf82680b562ff07f0b5ff30e81247ef9c99d079de1d6b7073d52` |
| 5 | `theorem` | [isNilpotent_iterate_newtonMap_sub_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/isnilpotent-iterate-newtonmap-sub-of-isnilpotent--43a1059a82d35c49ec000cbe.md) | 69 | `result-track:43a1059a82d35c49ec000cbe682def7628c3889b77992c6bca57e186d21f274c` |
| 6 | `theorem` | [isFixedPt_newtonMap_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/isfixedpt-newtonmap-of-aeval-eq-zero--043ef24d0833d87dc837e61c.md) | 79 | `result-track:043ef24d0833d87dc837e61cd6474377075104e6e3571b9095132fd93844ad03` |
| 7 | `theorem` | [isFixedPt_newtonMap_of_isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/isfixedpt-newtonmap-of-isunit-iff--34ff1a357b23f0a67a8f97da.md) | 83 | `result-track:34ff1a357b23f0a67a8f97da1243d59c231dd63ae3ff216c1aa297723da33c52` |
| 8 | `theorem` | [aeval_pow_two_pow_dvd_aeval_iterate_newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/aeval-pow-two-pow-dvd-aeval-iterate-newtonmap--ce87cc0c79876df03312686c.md) | 89 | `result-track:ce87cc0c79876df03312686cd745bcdc0c2130541b54a3c78abcb7ef8d88b0c2` |
| 9 | `theorem` | [existsUnique_nilpotent_sub_and_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variant20fd934e40c8105aabde1f203da3a6de53ab30ef8d793443b19c3084ead161c7.lean/declarations/existsunique-nilpotent-sub-and-aeval-eq-zero--b0019681de2de93786b6e704.md) | 114 | `result-track:b0019681de2de93786b6e704bbde0f8a4e7afcc0bc92e3c73c3d9f5466a750cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
