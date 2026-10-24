# Verification target: GRWTSK.Algebra.Identities.Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc6f15db3056ba9bb31cd33481b1f6c52679ff29",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/index.md) · [Full source](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc6f15db3056ba9bb31cd33481b1f6c52679ff29`.

Source path: `GRWTSK/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Frobenius` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Verschiebung` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulP` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [frobenius_verschiebung](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/frobenius-verschiebung--c27c6c945f7e40fb22e841ad.md) | 50 | `result-track:c27c6c945f7e40fb22e841add5cff13e6321305f958b4fd96665b545750b2fdc` |
| 2 | `theorem` | [verschiebung_zmod](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/verschiebung-zmod--4a93fa00ebc7101b86a54366.md) | 60 | `result-track:4a93fa00ebc7101b86a54366e8aa8f44c603ad30cb3241e9769f61c962b8787a` |
| 3 | `theorem` | [coeff_p_pow](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/coeff-p-pow--b00436ea3ca5ca6ce35111cd.md) | 66 | `result-track:b00436ea3ca5ca6ce35111cd4c3fc6bcd1a56f546484b918f38d21546b88e4c5` |
| 4 | `theorem` | [coeff_p_pow_eq_zero](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/coeff-p-pow-eq-zero--1abb832e7263c1add18fad7d.md) | 73 | `result-track:1abb832e7263c1add18fad7d582df1f5c732c555d121fa4ad55ea1768a354bcf` |
| 5 | `theorem` | [coeff_p](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/coeff-p--a3c8d3ae82e9b4d334edc8eb.md) | 86 | `result-track:a3c8d3ae82e9b4d334edc8ebde8a2dbb5b369fbb52c855db921cdf2590872ba5` |
| 6 | `theorem` | [coeff_p_zero](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/coeff-p-zero--cfea7e8544063d8b91208ab0.md) | 93 | `result-track:cfea7e8544063d8b91208ab00d34154a5cb51a15e99bd42be30845abc650b1c7` |
| 7 | `theorem` | [coeff_p_one](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/coeff-p-one--23b616daf4045afd942d4c58.md) | 99 | `result-track:23b616daf4045afd942d4c5870ae5a388b62ce7d7fd5a51a0b7445908c0c5366` |
| 8 | `theorem` | [p_nonzero](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/p-nonzero--4aebae3b2125586ec0d0c3d2.md) | 102 | `result-track:4aebae3b2125586ec0d0c3d24b4073501690ca6311e0f0798e5fabf152174641` |
| 9 | `theorem` | [FractionRing.p_nonzero](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/fractionring-p-nonzero--41346e9fe00ae3aec1132989.md) | 107 | `result-track:41346e9fe00ae3aec1132989577c1ba1600793a80931420816d1450da74a9441` |
| 10 | `theorem` | [verschiebung_mul_frobenius](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/verschiebung-mul-frobenius--406721c4fc186e02cfdee979.md) | 115 | `result-track:406721c4fc186e02cfdee979e9ea2b97df76f37d5d54d9a462c7b9b00f541f64` |
| 11 | `theorem` | [mul_charP_coeff_zero](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/mul-charp-coeff-zero--630e04225708e27fbb16f8c4.md) | 127 | `result-track:630e04225708e27fbb16f8c4c89c989eb4bf43e34cc24bbbea0cbc524b2d741d` |
| 12 | `theorem` | [mul_charP_coeff_succ](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/mul-charp-coeff-succ--0eeb5e21a34fd78db79919ea.md) | 132 | `result-track:0eeb5e21a34fd78db79919ea8b5d65c7700a307bbc8871f02036609eadbd68bc` |
| 13 | `theorem` | [verschiebung_frobenius](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/verschiebung-frobenius--328cdf9a142ff173e68efa00.md) | 137 | `result-track:328cdf9a142ff173e68efa0079263ba228a346de93ba4aa3e366771b36766bce` |
| 14 | `theorem` | [verschiebung_frobenius_comm](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/verschiebung-frobenius-comm--cdb0a34a81559365c86f049f.md) | 143 | `result-track:cdb0a34a81559365c86f049f3ce8773592a98fa1c37caf3e22970419cd24b55c` |
| 15 | `theorem` | [iterate_verschiebung_coeff](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/iterate-verschiebung-coeff--9f0cfa9b657ba302029dfac7.md) | 155 | `result-track:9f0cfa9b657ba302029dfac775e0823434d962d9fcc2d2af789a4f0f73c58b60` |
| 16 | `theorem` | [iterate_verschiebung_mul_left](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/iterate-verschiebung-mul-left--bb6d96f4623243b37faa5137.md) | 163 | `result-track:bb6d96f4623243b37faa513724ecdba44906d662b18f83cb803151dc147078d4` |
| 17 | `theorem` | [iterate_verschiebung_mul](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/iterate-verschiebung-mul--911f987afca161a6b589f372.md) | 174 | `result-track:911f987afca161a6b589f3728372e70e8d55cc75464c98b1503ebf96bb4a8be4` |
| 18 | `theorem` | [iterate_frobenius_coeff](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/iterate-frobenius-coeff--6e65d9b553f6db4da269d570.md) | 193 | `result-track:6e65d9b553f6db4da269d5704795f01d99a190fd107a875e97412dc227c73b48` |
| 19 | `theorem` | [iterate_verschiebung_mul_coeff](../../../../mathematics/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/declarations/iterate-verschiebung-mul-coeff--b24df97f708c98d37cad49ad.md) | 202 | `result-track:b24df97f708c98d37cad49adb193c6df63ba9944f9ff10154a607d0f7103e664` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
