# Verification target: GRWTSK.Algebra.Identities.Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6f10ce89d41e166bc5fa1d06415b31a50286bfa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6f10ce89d41e166bc5fa1d06415b31a50286bfa`.

Source path: `GRWTSK/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Frobenius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Verschiebung` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulP` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [frobenius_verschiebung](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/frobenius-verschiebung--f0cfa70c219f12ba03e6782f.md) | 42 | `result-track:f0cfa70c219f12ba03e6782f92d1ed6114a438a7fada7fbcebee8c7a0e6c158f` |
| 2 | `theorem` | [verschiebung_zmod](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/verschiebung-zmod--0d7ae8468fd82da7a3c03d99.md) | 52 | `result-track:0d7ae8468fd82da7a3c03d99936567f9fad22558e53cf611ee9be3e83a369afa` |
| 3 | `theorem` | [coeff_p_pow](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/coeff-p-pow--4c5236defa5f5d2a73658b70.md) | 58 | `result-track:4c5236defa5f5d2a73658b7054fbb1384070f96df742322496538a701b3a02f6` |
| 4 | `theorem` | [coeff_p_pow_eq_zero](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/coeff-p-pow-eq-zero--e33843fad1bf7fc6ee8c56e1.md) | 65 | `result-track:e33843fad1bf7fc6ee8c56e1789127c1818278b0f4cc0ee8aa4aa4c001c34acb` |
| 5 | `theorem` | [coeff_p](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/coeff-p--7f8be4f16714f5b399226e71.md) | 78 | `result-track:7f8be4f16714f5b399226e7192aeb8123053e50685a44a813543a4c87bb8c406` |
| 6 | `theorem` | [coeff_p_zero](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/coeff-p-zero--6479e2f58f9491f574f50bfe.md) | 85 | `result-track:6479e2f58f9491f574f50bfe3e215b626ebae3e5c35ea678a7fdaf9775c27f3f` |
| 7 | `theorem` | [coeff_p_one](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/coeff-p-one--4845cf8417cddc2a1ee837bd.md) | 91 | `result-track:4845cf8417cddc2a1ee837bd4131af1ff65e68afebb22771fd251ab2a5f33046` |
| 8 | `theorem` | [p_nonzero](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/p-nonzero--c03b62d1217be0c89682034c.md) | 94 | `result-track:c03b62d1217be0c89682034c124ede05a8ad6820c1f9cddc711faf93082f7bb6` |
| 9 | `theorem` | [FractionRing.p_nonzero](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/fractionring-p-nonzero--1a70f8d7b6d9ea932d487ce4.md) | 99 | `result-track:1a70f8d7b6d9ea932d487ce4e06bbcbbd73379dd3f371311c957d7ef3a6f15b4` |
| 10 | `theorem` | [verschiebung_mul_frobenius](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/verschiebung-mul-frobenius--f9f97ef3c9b51186031b09ec.md) | 107 | `result-track:f9f97ef3c9b51186031b09ec0771b4021d6a27a9706efc7e12db32555722ba72` |
| 11 | `theorem` | [mul_charP_coeff_zero](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/mul-charp-coeff-zero--2ca1ecd5b5cc792e6bad355e.md) | 119 | `result-track:2ca1ecd5b5cc792e6bad355edb64e987893bc913045a17d83d5393845b69cd85` |
| 12 | `theorem` | [mul_charP_coeff_succ](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/mul-charp-coeff-succ--7809f78d3435c5b17d699d50.md) | 124 | `result-track:7809f78d3435c5b17d699d5013885b0a334efccf0c2515d3d76454030c393ade` |
| 13 | `theorem` | [verschiebung_frobenius](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/verschiebung-frobenius--ba7284667e8ca9d3e244aa82.md) | 129 | `result-track:ba7284667e8ca9d3e244aa82c7802e20c58e2b20374779c4f34d27db73105bed` |
| 14 | `theorem` | [verschiebung_frobenius_comm](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/verschiebung-frobenius-comm--e49b6aeeb7d40540c6494660.md) | 135 | `result-track:e49b6aeeb7d40540c6494660ea906934ce962e8ce6522ba3c400591b6730a4e9` |
| 15 | `theorem` | [iterate_verschiebung_coeff](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/iterate-verschiebung-coeff--150e25621e15b42dd68c2613.md) | 147 | `result-track:150e25621e15b42dd68c26130786cddcabc97f95005c25a4c2fa7b3b96ecf4d8` |
| 16 | `theorem` | [iterate_verschiebung_mul_left](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/iterate-verschiebung-mul-left--483011ca81d4d2ba76fbad71.md) | 155 | `result-track:483011ca81d4d2ba76fbad713e7b3dbdaf903fe7576787b456469042d2fd2649` |
| 17 | `theorem` | [iterate_verschiebung_mul](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/iterate-verschiebung-mul--aa26dc8f8298f09d4dd8373b.md) | 166 | `result-track:aa26dc8f8298f09d4dd8373bb29d769d1a73653fd468a66bd4b5ebdc4b74b119` |
| 18 | `theorem` | [iterate_frobenius_coeff](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/iterate-frobenius-coeff--6fff0bbf462a948e2034890e.md) | 185 | `result-track:6fff0bbf462a948e2034890ef4cbe655d707958da81af74ed84f66c6b86baea4` |
| 19 | `theorem` | [iterate_verschiebung_mul_coeff](../../../../mathematics/Algebra/Identities/Variantf051545517ce637faca110cf54c054a7a0903154f23b1aeb552c0ce5bdc9f50b.lean/declarations/iterate-verschiebung-mul-coeff--94eb6679ff1b144bef97720d.md) | 194 | `result-track:94eb6679ff1b144bef97720d201abcdbcfa1449743dc014745bf698edbab8e72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
