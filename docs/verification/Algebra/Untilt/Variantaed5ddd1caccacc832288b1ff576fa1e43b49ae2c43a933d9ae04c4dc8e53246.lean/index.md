# Verification target: GRWTSK.Algebra.Untilt.Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fcc7d27d6aaf183005411c6742810db7a7061b2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/index.md) · [Full source](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fcc7d27d6aaf183005411c6742810db7a7061b2`.

Source path: `GRWTSK/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Perfection` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [untiltAux](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/untiltaux--d6f9f0865ead526273e5d2b1.md) | 56 | `declaration-track:d6f9f0865ead526273e5d2b1d097ef35f145f94616f184e24f1c3343ea7028d4` |
| 2 | `lemma` | [pow_dvd_untiltAux_sub_untiltAux](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/pow-dvd-untiltaux-sub-untiltaux--0ce4193a78653e0baf386028.md) | 62 | `result-track:0ce4193a78653e0baf3860289385363e207e893422c5613fd4284a7b4819a47f` |
| 3 | `lemma` | [pow_dvd_one_untiltAux_sub_one](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/pow-dvd-one-untiltaux-sub-one--6897943a47b997c8e4db4044.md) | 80 | `result-track:6897943a47b997c8e4db404407b0a2f28fbc14da252e8885b996c9da425018a8` |
| 4 | `lemma` | [pow_dvd_mul_untiltAux_sub_untiltAux_mul](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/pow-dvd-mul-untiltaux-sub-untiltaux-mul--93a2b4775789fdf5aa6438c3.md) | 91 | `result-track:93a2b4775789fdf5aa6438c3134bcdee43fab501d26ff3a63a92359defa803e4` |
| 5 | `lemma` | [exists_smodEq_untiltAux](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/exists-smodeq-untiltaux--d0aca758fc4fad904b7c8b7d.md) | 105 | `result-track:d0aca758fc4fad904b7c8b7d82803f949b8e0020c238126955e6d3775fda4a85` |
| 6 | `def` | [untiltFun](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/untiltfun--6da1a8b0c36616bcd349ca08.md) | 116 | `declaration-track:6da1a8b0c36616bcd349ca08604b5d3d907786b037a73110e58bb2499d0e753b` |
| 7 | `lemma` | [untiltAux_smodEq_untiltFun](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/untiltaux-smodeq-untiltfun--f878dcce722d10e49a686ccc.md) | 119 | `result-track:f878dcce722d10e49a686ccc2d750d45915d361df8ae88d0ad7a7348a4c3da70` |
| 8 | `def` | [untilt](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/untilt--169b973ae311c0e265af02f9.md) | 135 | `declaration-track:169b973ae311c0e265af02f93a60483cb84db1f2c7fef8b88af385b1b9439222` |
| 9 | `theorem` | [mk_untilt_eq_coeff_zero](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/mk-untilt-eq-coeff-zero--e779bc6c438f59120e29a3ad.md) | 160 | `result-track:e779bc6c438f59120e29a3ad5cc2824e5e6b83f7311cb8a6dbbd7b3860445b54` |
| 10 | `theorem` | [mk_comp_untilt_eq_coeff_zero](../../../../mathematics/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/declarations/mk-comp-untilt-eq-coeff-zero--953708fee434664f5d98e107.md) | 171 | `result-track:953708fee434664f5d98e10748f6f87565d8a276c6bc2d6c4d140328cba291fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
