# Verification target: GRWTSK.Algebra.Untilt.Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "838eedf603a7b219fff35956a254c2ff4dddcc6a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md) · [Full source](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `838eedf603a7b219fff35956a254c2ff4dddcc6a`.

Source path: `GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Perfection` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [untiltAux](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/untiltaux--f2eec01a7deb4e6d0998c522.md) | 48 | `declaration-track:f2eec01a7deb4e6d0998c52286acb1f19ab14a650932ecc7d88bff89014ca2ba` |
| 2 | `lemma` | [pow_dvd_untiltAux_sub_untiltAux](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/pow-dvd-untiltaux-sub-untiltaux--add7078f811b262ce99fbcde.md) | 54 | `result-track:add7078f811b262ce99fbcde66f3fa382fc91d4928d9359acd9397dca2f0781f` |
| 3 | `lemma` | [pow_dvd_one_untiltAux_sub_one](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/pow-dvd-one-untiltaux-sub-one--db15b12c9868416f13062bd1.md) | 72 | `result-track:db15b12c9868416f13062bd1218204c45b17cb0ae8d15506df2bd93e1dc41c59` |
| 4 | `lemma` | [pow_dvd_mul_untiltAux_sub_untiltAux_mul](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/pow-dvd-mul-untiltaux-sub-untiltaux-mul--1185b04026fff75c3f93fec0.md) | 83 | `result-track:1185b04026fff75c3f93fec0d738d28f4fca8bad662ffcadc1353cbe28372efb` |
| 5 | `lemma` | [exists_smodEq_untiltAux](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/exists-smodeq-untiltaux--140265e2f39eb3080becbaaf.md) | 97 | `result-track:140265e2f39eb3080becbaaff2062d0e676cf7a5fdf1b2a8fc3f742a637a8089` |
| 6 | `def` | [untiltFun](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/untiltfun--25e6c0f6d60ad88a5ecb3c09.md) | 108 | `declaration-track:25e6c0f6d60ad88a5ecb3c09f13275bac850f9e3ea2d784d56a98f4bcd8dc749` |
| 7 | `lemma` | [untiltAux_smodEq_untiltFun](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/untiltaux-smodeq-untiltfun--f97bf034e89975c3c55aeee6.md) | 111 | `result-track:f97bf034e89975c3c55aeee68c725c9eaaf1ecdd08dc1541cba02cd7ea5cd0f5` |
| 8 | `def` | [untilt](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/untilt--d241f30720595ff24c047a30.md) | 127 | `declaration-track:d241f30720595ff24c047a30130f26c663844eb881899c2f369cf18735a9ea7b` |
| 9 | `theorem` | [mk_untilt_eq_coeff_zero](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/mk-untilt-eq-coeff-zero--c8e52c5922ebeaed500e136c.md) | 152 | `result-track:c8e52c5922ebeaed500e136c478a15faf1b0ae0d5247b8c585df3a1589b90425` |
| 10 | `theorem` | [mk_comp_untilt_eq_coeff_zero](../../../../mathematics/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/declarations/mk-comp-untilt-eq-coeff-zero--7efded5745009a55e309c76c.md) | 163 | `result-track:7efded5745009a55e309c76cc800ff044a062a8aab03c4b9c1b195fb7e915d03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
