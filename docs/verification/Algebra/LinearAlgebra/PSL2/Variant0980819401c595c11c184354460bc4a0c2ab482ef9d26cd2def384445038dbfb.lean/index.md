# Verification target: GRWTSK.Algebra.LinearAlgebra.PSL2.Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e83bb7a6572703ebc90b4a94500e07bfc3acb774",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e83bb7a6572703ebc90b4a94500e07bfc3acb774`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean.json)

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
| 1 | `lemma` | [transvection_mem_lineStab](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/transvection-mem-linestab--c19526df7cee8326cfa423b1.md) | 34 | `result-track:c19526df7cee8326cfa423b187f87d4c78fd28802ca95b19e71122448b8a2b28` |
| 2 | `lemma` | [transvection_mem_lineStab_sup](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/transvection-mem-linestab-sup--58dedb9e6b2b19aa04e6dbe2.md) | 41 | `result-track:58dedb9e6b2b19aa04e6dbe26ded777e50a5660334ab50d45cae6f0b6b97552e` |
| 3 | `lemma` | [SL_card_two_lineStab_sup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/sl-card-two-linestab-sup-eq-top--e87c5af93330cb085383aa2c.md) | 53 | `result-track:e87c5af93330cb085383aa2c513cc67623113624ee568dd2d7473a6c74549f77` |
| 4 | `lemma` | [PSL.iSup_lineStab_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/psl-isup-linestab-eq-top--7c39bf5baeda216db0601ac3.md) | 67 | `result-track:7c39bf5baeda216db0601ac388268cd4059a8d8a83ffe7eec8df804bb6c8499a` |
| 5 | `lemma` | [PSL.iSup_iwasawaT_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/psl-isup-iwasawat-eq-top--bf620b738597138ba9f380f1.md) | 76 | `result-track:bf620b738597138ba9f380f163263df68a2cc2cb4817688355427465435bb97c` |
| 6 | `abbrev` | [PSL2.Iwasawa](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/psl2-iwasawa--e6b64624f78c26209b6ee6dd.md) | 89 | `declaration-track:e6b64624f78c26209b6ee6ddf704de052d031a4aa498f200addc61b29a1ce7b3` |
| 7 | `lemma` | [PSL_commutator_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/psl-commutator-eq-top--8491271028aa343f89624e2d.md) | 109 | `result-track:8491271028aa343f89624e2d178bca8e3aa97370d8a57aa21a20d90a76656300` |
| 8 | `instance` | [PSL_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/psl-nontrivial--5f4af607edd31884a6b4bbd5.md) | 118 | `declaration-track:5f4af607edd31884a6b4bbd57463643818cb104b2ab6816bcb7d2f0e30225d99` |
| 9 | `theorem` | [Matrix.ProjectiveSpecialLinearGroup.rank_two_simple'](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/matrix-projectivespeciallineargroup-rank-two-simple--23a4e50208f64677f6bc48ae.md) | 128 | `result-track:23a4e50208f64677f6bc48aeef0f47d31c281022a649683e2f6814f8c06a6e36` |
| 10 | `lemma` | [field_cond_of_four_le_card](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/field-cond-of-four-le-card--fcc41449979872a2ca6de76a.md) | 134 | `result-track:fcc41449979872a2ca6de76a64cda0121ba2685299f575b1d5e6899a8ebe8207` |
| 11 | `theorem` | [Matrix.ProjectiveSpecialLinearGroup.rank_two_simple](../../../../../mathematics/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/declarations/matrix-projectivespeciallineargroup-rank-two-simple--a14c5e1af4cc9f1fb55aaa0d.md) | 143 | `result-track:a14c5e1af4cc9f1fb55aaa0d80adec843d6d95d98b68d2680a56bed186da4fb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
