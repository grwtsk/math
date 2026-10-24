# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Units.Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "405b21b67fb07863f9d0a0922c45ab6176336b4a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `405b21b67fb07863f9d0a0922c45ab6176336b4a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Domain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.SmallDegree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natDegree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/natdegree-eq-zero-of-isunit--23b82f7e53d50e20e98f63b4.md) | 27 | `result-track:23b82f7e53d50e20e98f63b44ff41ec6ddf17e0ce4e4a0e09d0378fb67d50121` |
| 2 | `lemma` | [degree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/degree-eq-zero-of-isunit--eed6558b58c748da5533c3fc.md) | 34 | `result-track:eed6558b58c748da5533c3fcbcd033680440ca37a0c4182e61c7e0f99bcc1e4d` |
| 3 | `lemma` | [degree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/degree-coe-units--e9c8c766ae9e8a5632ea9e51.md) | 39 | `result-track:e9c8c766ae9e8a5632ea9e517b1e6b932dd2470c09cf6b867d93339a6ba493b1` |
| 4 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/isunit-iff--049af09b502d700f20ea6904.md) | 44 | `result-track:049af09b502d700f20ea6904b85cbd5db735480f037d8053989682e16c4a756c` |
| 5 | `lemma` | [not_isUnit_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/not-isunit-of-degree-pos--505e2bf14e0fea0d56cadd3d.md) | 51 | `result-track:505e2bf14e0fea0d56cadd3d7f02d800ae781d2512ad72f89ace400703285946` |
| 6 | `lemma` | [not_isUnit_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/not-isunit-of-natdegree-pos--e6693496d0f70180b7d92081.md) | 57 | `result-track:e6693496d0f70180b7d92081af0e370fdaa4ea2e35d9984ad58e3ba36f97d276` |
| 7 | `lemma` | [natDegree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/natdegree-coe-units--730bef1788392b21844c81ef.md) | 60 | `result-track:730bef1788392b21844c81ef61195173be10b205cef3ff4ac1c8f8d2bd4a1dcc` |
| 8 | `theorem` | [coeff_coe_units_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/coeff-coe-units-zero-ne-zero--30aca6a0053d25bdd8712695.md) | 64 | `result-track:30aca6a0053d25bdd8712695bea4568b67b1c490269e034d54fd180d700fff14` |
| 9 | `lemma` | [Monic.C_dvd_iff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/monic-c-dvd-iff-isunit--9d68c3c99bde69882edf231f.md) | 75 | `result-track:9d68c3c99bde69882edf231fee46a7920d64d3c30ab36f79a0d8f2f5992b5b9a` |
| 10 | `lemma` | [Monic.degree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/monic-degree-pos-of-not-isunit--8da37a77f8943a2619f2754a.md) | 79 | `result-track:8da37a77f8943a2619f2754aa5a5eef9d8a172fc9ef0e9edbafc452a4d8f89df` |
| 11 | `lemma` | [Monic.natDegree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/monic-natdegree-pos-of-not-isunit--08b88d461d6f87f03ea40d18.md) | 82 | `result-track:08b88d461d6f87f03ea40d189386b174a3c031e89e15965447d77a7e0ce58acc` |
| 12 | `lemma` | [degree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/degree-pos-of-not-isunit-of-dvd-monic--71293bdfc29cf9beb279593d.md) | 85 | `result-track:71293bdfc29cf9beb279593d01b835b5cd17c67ba022ce59db21531cd001c776` |
| 13 | `lemma` | [natDegree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/declarations/natdegree-pos-of-not-isunit-of-dvd-monic--b589a962ec1944ca9869a1fe.md) | 90 | `result-track:b589a962ec1944ca9869a1fe6bf500be74b7881357cfa26bb33ae2ac27c0591a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
