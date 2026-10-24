# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Units.Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "026904dfdbe72b5d8b9623c686349e0e8093b98e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `026904dfdbe72b5d8b9623c686349e0e8093b98e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean.json)

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
| 1 | `lemma` | [natDegree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/natdegree-eq-zero-of-isunit--b1752f00aa648e309231895c.md) | 31 | `result-track:b1752f00aa648e309231895cec315713632aa86074b73f510c7b8fef15512b5b` |
| 2 | `lemma` | [degree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/degree-eq-zero-of-isunit--48584e14b85125faa66d449d.md) | 38 | `result-track:48584e14b85125faa66d449d269e3515c1e07d2c1b252c83d99557b17c35ede5` |
| 3 | `lemma` | [degree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/degree-coe-units--96e47b16563ce1976d125923.md) | 43 | `result-track:96e47b16563ce1976d12592383fc2f6781ec08b197ed10181388c0bd0fe3f0fe` |
| 4 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/isunit-iff--fd33dcbc0e7c38baf95b0439.md) | 48 | `result-track:fd33dcbc0e7c38baf95b043960f40dd52079be8f9e6c6d7ffb8c41d7e3a9fbe1` |
| 5 | `lemma` | [not_isUnit_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/not-isunit-of-degree-pos--bb31b2d46c71a6486b7c218c.md) | 55 | `result-track:bb31b2d46c71a6486b7c218c28e89e57a79f0dbcec547a64957e72534e8d6cdb` |
| 6 | `lemma` | [not_isUnit_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/not-isunit-of-natdegree-pos--7ee9ed3406b7c02264a2f60f.md) | 61 | `result-track:7ee9ed3406b7c02264a2f60f1046f682b16fed06eeeda33a5c3724ae14b363f6` |
| 7 | `lemma` | [natDegree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/natdegree-coe-units--c2168bbbade7b57844f428e6.md) | 64 | `result-track:c2168bbbade7b57844f428e6ead7546896c8fba51ac26ecbdba8795943f9f0b0` |
| 8 | `theorem` | [coeff_coe_units_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/coeff-coe-units-zero-ne-zero--ffb016ba1d995cc6d0a64807.md) | 68 | `result-track:ffb016ba1d995cc6d0a648075dfa2fdf42fcad5e340b34b77240cdb2b9143012` |
| 9 | `lemma` | [Monic.C_dvd_iff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/monic-c-dvd-iff-isunit--7831c4989ff6b9d5dc9695fe.md) | 79 | `result-track:7831c4989ff6b9d5dc9695fea11c33ceebdfb6cd0fa18b0a4868b9ee36c65d1a` |
| 10 | `lemma` | [Monic.degree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/monic-degree-pos-of-not-isunit--c9f73d879c5865c844379fa9.md) | 83 | `result-track:c9f73d879c5865c844379fa9a162e1aeea7d73cf7615b3e7ca7154e0e4b8657c` |
| 11 | `lemma` | [Monic.natDegree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/monic-natdegree-pos-of-not-isunit--e70f31247da5fb6f0cbba66e.md) | 86 | `result-track:e70f31247da5fb6f0cbba66e6731c3657dd10ea093901e045fae7d86f13278c0` |
| 12 | `lemma` | [degree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/degree-pos-of-not-isunit-of-dvd-monic--43a3be7950e03aae1a46ef29.md) | 89 | `result-track:43a3be7950e03aae1a46ef2909536935fd3e173c377a54cf219d3755b7afb71b` |
| 13 | `lemma` | [natDegree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant9761135d25d0accdffa91c537f5fa06be879e991f9714f2c50a165b38aa85d93.lean/declarations/natdegree-pos-of-not-isunit-of-dvd-monic--a1a1cacffd4861757b6d72ff.md) | 94 | `result-track:a1a1cacffd4861757b6d72ff99271a108310f94c0676dae7fd7c09ee51998683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
