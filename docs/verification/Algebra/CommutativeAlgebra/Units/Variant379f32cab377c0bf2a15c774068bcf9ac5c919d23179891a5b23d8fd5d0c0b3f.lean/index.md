# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Units.Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad7ddf5d5c3b67d177b28854eaa0603ed700e4a8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad7ddf5d5c3b67d177b28854eaa0603ed700e4a8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean.json)

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
| 1 | `lemma` | [natDegree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/natdegree-eq-zero-of-isunit--94c24247b9865ce71af89a26.md) | 39 | `result-track:94c24247b9865ce71af89a264b6b1e13f3e6cedc08b302a4d1d14d051be87d23` |
| 2 | `lemma` | [degree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/degree-eq-zero-of-isunit--ebc6bb882191b857cc0a5ec0.md) | 46 | `result-track:ebc6bb882191b857cc0a5ec02bb3d4a001c22e27846f2bb0c96ac2553fb0fdff` |
| 3 | `lemma` | [degree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/degree-coe-units--c7546905d484f39e1aeb74b8.md) | 51 | `result-track:c7546905d484f39e1aeb74b848d260e03efe2706b8559fa68a02f2354911e4e5` |
| 4 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/isunit-iff--da09c17b731d8690e37f176c.md) | 56 | `result-track:da09c17b731d8690e37f176c82a245dce49c841c156e050ae7e421b75a2cece8` |
| 5 | `lemma` | [not_isUnit_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/not-isunit-of-degree-pos--9e474d0130f81f88648bb9fd.md) | 63 | `result-track:9e474d0130f81f88648bb9fd7fb38c8a5f7d37dfa0911593a5fd2607f31e0661` |
| 6 | `lemma` | [not_isUnit_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/not-isunit-of-natdegree-pos--fc2a0722eaa1314665343def.md) | 69 | `result-track:fc2a0722eaa1314665343def6f050b6f4cf741c94b12208a2f7b357bbb1f9f6e` |
| 7 | `lemma` | [natDegree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/natdegree-coe-units--bb5c83553236841285b7a7f1.md) | 72 | `result-track:bb5c83553236841285b7a7f1a940b932453fd4c68a12b54a08a8a68a16e7e8b1` |
| 8 | `theorem` | [coeff_coe_units_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/coeff-coe-units-zero-ne-zero--f23dd85f17d514cbe10301ee.md) | 76 | `result-track:f23dd85f17d514cbe10301ee5ac40852187abb30d804226b930af43c14379c4e` |
| 9 | `lemma` | [Monic.C_dvd_iff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/monic-c-dvd-iff-isunit--290eae45b5bd26637c033dbb.md) | 87 | `result-track:290eae45b5bd26637c033dbbe3e82b794ceb18af38fa19cd42bcd9bcea6f5627` |
| 10 | `lemma` | [Monic.degree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/monic-degree-pos-of-not-isunit--cdadeeb9d7b80985002fed35.md) | 91 | `result-track:cdadeeb9d7b80985002fed35d5ec2989224867a95a8fbd302a1877b72eb8d4e0` |
| 11 | `lemma` | [Monic.natDegree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/monic-natdegree-pos-of-not-isunit--dff307b582930bad3ced6516.md) | 94 | `result-track:dff307b582930bad3ced6516b5736110d38eb57e329b977170199dc6c8e05ab8` |
| 12 | `lemma` | [degree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/degree-pos-of-not-isunit-of-dvd-monic--2bb8185fe89114dadf9d1cc9.md) | 97 | `result-track:2bb8185fe89114dadf9d1cc96b49b2da19a7e7c2910177d187f070d676edbb5c` |
| 13 | `lemma` | [natDegree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant379f32cab377c0bf2a15c774068bcf9ac5c919d23179891a5b23d8fd5d0c0b3f.lean/declarations/natdegree-pos-of-not-isunit-of-dvd-monic--1074a4d6b5a414b94d3e506f.md) | 102 | `result-track:1074a4d6b5a414b94d3e506fd4d0570ef6dbdde74c9b22c303dc5a0f5eb78598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
