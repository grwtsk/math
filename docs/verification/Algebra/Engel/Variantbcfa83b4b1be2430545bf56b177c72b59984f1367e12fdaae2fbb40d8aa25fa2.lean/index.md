# Verification target: GRWTSK.Algebra.Engel.Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4629a95f4b5dc9f5ff508d3cbd9acd5ecd9b07ce",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4629a95f4b5dc9f5ff508d3cbd9acd5ecd9b07ce`.

Source path: `GRWTSK/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smul_add_of_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/exists-smul-add-of-span-sup-eq-top--17e558d2cf20549a155bab41.md) | 81 | `result-track:17e558d2cf20549a155bab41368538ca2382aea6e56a4923e5904ed91138a116` |
| 2 | `theorem` | [lie_top_eq_of_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/lie-top-eq-of-span-sup-eq-top--104613c647487fe9ed24dbf7.md) | 87 | `result-track:104613c647487fe9ed24dbf71db6d08eabaf33fdfaf30875abc4f4a8ec4e710e` |
| 3 | `theorem` | [lcs_le_lcs_of_is_nilpotent_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/lcs-le-lcs-of-is-nilpotent-span-sup-eq-top--04ebd248b403213e998b9158.md) | 102 | `result-track:04ebd248b403213e998b915802baf950049725894b39822812e96f09af44a737` |
| 4 | `theorem` | [isNilpotentOfIsNilpotentSpanSupEqTop](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/isnilpotentofisnilpotentspansupeqtop--d2b7651b102a7559b888ffd7.md) | 126 | `result-track:d2b7651b102a7559b888ffd71b07ff7ad827d76987c323c0d10d1bfa72bb5dd0` |
| 5 | `def` | [LieAlgebra.IsEngelian](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liealgebra-isengelian--613cb06a3dbd01914bfa2244.md) | 156 | `declaration-track:613cb06a3dbd01914bfa22444b4beb7f3dfad8ccebb9f59783c8ea0b1b8c4782` |
| 6 | `theorem` | [LieAlgebra.isEngelian_of_subsingleton](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liealgebra-isengelian-of-subsingleton--88ac3f4fd3381f3596007776.md) | 162 | `result-track:88ac3f4fd3381f35960077769d4a682e696c60f4e908bae943183a0949999a61` |
| 7 | `theorem` | [Function.Surjective.isEngelian](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/function-surjective-isengelian--017e5646966345cf650e25cf.md) | 167 | `result-track:017e5646966345cf650e25cfa4c27cd7dbb73576c97db06bfd853d995c3dc74b` |
| 8 | `theorem` | [LieEquiv.isEngelian_iff](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/lieequiv-isengelian-iff--fbeb04a56bc080a1875ec595.md) | 178 | `result-track:fbeb04a56bc080a1875ec595aefbc12e47e3190b5117661a82502e149361249e` |
| 9 | `theorem` | [LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liealgebra-exists-engelian-liesubalgebra-of-lt-normalizer--73fb337584081a0a3dcefafb.md) | 182 | `result-track:73fb337584081a0a3dcefafb47537830e29cd703f2575bb14159a0beddd64219` |
| 10 | `theorem` | [LieAlgebra.isEngelian_of_isNoetherian](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liealgebra-isengelian-of-isnoetherian--9ec2c9c3794226e6d0e5e811.md) | 217 | `result-track:9ec2c9c3794226e6d0e5e811998a0097ed521faab15d8f182ddc01c9a6f19268` |
| 11 | `theorem` | [LieModule.isNilpotent_iff_forall](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liemodule-isnilpotent-iff-forall--d301457bfa7db1271feebdac.md) | 268 | `result-track:d301457bfa7db1271feebdacaf3d233c787d1c95c3e42c1402d557f7b1ee32d0` |
| 12 | `theorem` | [LieModule.isNilpotent_iff_forall'](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liemodule-isnilpotent-iff-forall--54c949095a5b469bcb791bf1.md) | 274 | `result-track:54c949095a5b469bcb791bf1cf5fb7f717c5583ce0d3a86628e48986c71e4ba6` |
| 13 | `theorem` | [LieAlgebra.isNilpotent_iff_forall](../../../../mathematics/Algebra/Engel/Variantbcfa83b4b1be2430545bf56b177c72b59984f1367e12fdaae2fbb40d8aa25fa2.lean/declarations/liealgebra-isnilpotent-iff-forall--57bd2e8abdc5d1b4fbe3e9fd.md) | 279 | `result-track:57bd2e8abdc5d1b4fbe3e9fd6ddc5837896db06accee80766570efdd1405fb98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
