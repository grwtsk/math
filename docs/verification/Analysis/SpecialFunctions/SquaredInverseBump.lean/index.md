# Verification target: GRWTSK.Analysis.SpecialFunctions.SquaredInverseBump

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bbf44407058e110645f03c20648635c143f7b27",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/SquaredInverseBump.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/index.md) · [Full source](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bbf44407058e110645f03c20648635c143f7b27`.

Source path: `GRWTSK/Analysis/SpecialFunctions/SquaredInverseBump.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/SquaredInverseBump.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Support` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squaredExpNegInvGlue](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/squaredexpneginvglue--710cc389123ce0d61ca721a4.md) | 28 | `declaration-track:710cc389123ce0d61ca721a461c97e11f5ae4eab097672626793507dacebdfcf` |
| 2 | `theorem` | [squaredExpNegInvGlue_zero_of_nonpos](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/squaredexpneginvglue-zero-of-nonpos--b0e46a6b57899d8fd5083fae.md) | 31 | `result-track:b0e46a6b57899d8fd5083fae0100b32da471b6797daaabceb37084dbebb532bd` |
| 3 | `theorem` | [squaredExpNegInvGlue_zero](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/squaredexpneginvglue-zero--3b1246fc3f8346b36f48fc96.md) | 35 | `result-track:3b1246fc3f8346b36f48fc968464af501ddf16e1a20f44bd108040f72715e44c` |
| 4 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/tendsto-polynomial-inv-mul-zero--39dbcdb541067266e499f020.md) | 39 | `result-track:39dbcdb541067266e499f02077822ba2231d682f65256b1e2b01c94db78d1c4c` |
| 5 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/hasderivat-polynomial-eval-inv-mul--5ff1c509ac2a4a1af28cedbf.md) | 58 | `result-track:5ff1c509ac2a4a1af28cedbf1495a88378e86aada4827acf7d3e3004705ae36e` |
| 6 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/differentiable-polynomial-eval-inv-mul--01cc04afe09982d82797e318.md) | 77 | `result-track:01cc04afe09982d82797e3184d25452996bbe7e55605cb4620fd48ea807fabff` |
| 7 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/continuous-polynomial-eval-inv-mul--42e3e1d0a2b8bb8e77d7659e.md) | 81 | `result-track:42e3e1d0a2b8bb8e77d7659edcb523eee66db6fe621f43960d92f5dcb273772c` |
| 8 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/contdiff-polynomial-eval-inv-mul--8b60477063fc23f2752a8fa7.md) | 85 | `result-track:8b60477063fc23f2752a8fa7e3bc1ad0f024fd0007be42b8768ceb3349d587d8` |
| 9 | `theorem` | [squaredExpNegInvGlue_contDiff](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/squaredexpneginvglue-contdiff--1cb67c581955508bcc9577b3.md) | 97 | `result-track:1cb67c581955508bcc9577b33cee82c172c126710ddf2e0431c68cc8fb5f9255` |
| 10 | `def` | [profile](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile--e730c82cf0dc3fb64b8c12b2.md) | 102 | `declaration-track:e730c82cf0dc3fb64b8c12b202485a5095104dfccd93291d35113425069472d9` |
| 11 | `theorem` | [profile_eq_glue](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-eq-glue--1236e732dbd699bbdc4bacaa.md) | 106 | `result-track:1236e732dbd699bbdc4bacaae2dc9f1a2b98f2c1bca376426f5a44ef872be64f` |
| 12 | `theorem` | [profile_contDiff](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-contdiff--28520f685f4aa58c3a5c2b55.md) | 119 | `result-track:28520f685f4aa58c3a5c2b55d8922d5e92f613ad642c91c940432ea6119a95a5` |
| 13 | `theorem` | [profile_pos_of_abs_lt_one](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-pos-of-abs-lt-one--29964249cede1d7fa93157aa.md) | 127 | `result-track:29964249cede1d7fa93157aaae934c09e5ad760b1258947c02f618d0ec42f27f` |
| 14 | `theorem` | [profile_zero_of_one_le_abs](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-zero-of-one-le-abs--aa3cc9f0dc4aa8a5c3a4d9d6.md) | 130 | `result-track:aa3cc9f0dc4aa8a5c3a4d9d6007ef92cf11c0933a9dfb83a6cbf989fbe52e3e4` |
| 15 | `theorem` | [profile_zero](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-zero--e49a587ee872326e1a22f675.md) | 133 | `result-track:e49a587ee872326e1a22f67564e7542c285f99c9d3f4e22dc5b1a193bf6ec94f` |
| 16 | `theorem` | [profile_nonzero](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-nonzero--ca2226e8620ff4a7dddfd6b4.md) | 136 | `result-track:ca2226e8620ff4a7dddfd6b4ad6abae842f1272d20bee02feec6e494abe17c3c` |
| 17 | `theorem` | [profile_support](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-support--d59fc21fd26e29f511244ac9.md) | 139 | `result-track:d59fc21fd26e29f511244ac938d5b885104643209864ee1c961a8209440a8372` |
| 18 | `theorem` | [profile_hasCompactSupport](../../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/declarations/profile-hascompactsupport--adc4ec82d400f68cde8f1fe3.md) | 150 | `result-track:adc4ec82d400f68cde8f1fe3dd72ddbe61aafc57f3f35dbf2a37645778e132b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
