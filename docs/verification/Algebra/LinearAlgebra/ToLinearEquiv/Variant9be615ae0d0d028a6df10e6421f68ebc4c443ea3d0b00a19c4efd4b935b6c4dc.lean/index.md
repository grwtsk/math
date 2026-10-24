# Verification target: GRWTSK.Algebra.LinearAlgebra.ToLinearEquiv.Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20dd747150cda5fd394ed662f8a92714a2c10b7d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20dd747150cda5fd394ed662f8a92714a2c10b7d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLinearEquiv'](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/tolinearequiv--42c2abbb0fc76c13a7b1c599.md) | 59 | `declaration-track:42c2abbb0fc76c13a7b1c59903a4e1197361e61eee0c4acf4e1a84efc93dcf71` |
| 2 | `theorem` | [toLinearEquiv'_apply](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/tolinearequiv-apply--8558fd74d87ffa2b97ab6056.md) | 64 | `result-track:8558fd74d87ffa2b97ab6056b64cd2f4f7b75fec1261371cf476b8ba5940bcaf` |
| 3 | `theorem` | [toLinearEquiv'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/tolinearequiv-symm-apply--248b66f652f0ec40ac87b1e8.md) | 69 | `result-track:248b66f652f0ec40ac87b1e81c563c68ff80b6f6c40fabe431ebbc253b8e86c3` |
| 4 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/tolinearequiv--c8d21477ee785389ab9da7a2.md) | 85 | `declaration-track:c8d21477ee785389ab9da7a2b532c4c1a4c7044121fc21fe865b15b93b871ca1` |
| 5 | `theorem` | [ker_toLin_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/ker-tolin-eq-bot--9932274f0498dd27307789f9.md) | 97 | `result-track:9932274f0498dd27307789f9febad52d9717446d8c259cfa507bd00e8d56c2c4` |
| 6 | `theorem` | [range_toLin_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/range-tolin-eq-top--ea181e09b42cc63172502d94.md) | 101 | `result-track:ea181e09b42cc63172502d9493d23c8a908907881b32269c191c9fa0563a089d` |
| 7 | `theorem` | [exists_mulVec_eq_zero_iff_aux](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/exists-mulvec-eq-zero-iff-aux--088c06d2506d2f13c238edd5.md) | 113 | `result-track:088c06d2506d2f13c238edd55febdcc276457031ab1e58ddffc5ce013ea83ec7` |
| 8 | `theorem` | [exists_mulVec_eq_zero_iff'](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/exists-mulvec-eq-zero-iff--eac7f3a77cd53346e08a009b.md) | 133 | `result-track:eac7f3a77cd53346e08a009b85b8e9fbe873ae97a46a14b502146d5e65aa4073` |
| 9 | `theorem` | [exists_mulVec_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/exists-mulvec-eq-zero-iff--977f7f9ba8f0ce483f3cc7ea.md) | 167 | `result-track:977f7f9ba8f0ce483f3cc7eacafcd796a8408f1570963d0d19dd4d671a64df31` |
| 10 | `theorem` | [exists_vecMul_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/exists-vecmul-eq-zero-iff--5109d8188f99084b77da32ae.md) | 171 | `result-track:5109d8188f99084b77da32ae19e0a075bbd01ee871b988382905e5d0869de13d` |
| 11 | `theorem` | [nondegenerate_iff_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/nondegenerate-iff-det-ne-zero--ad7995a6958726e2e1990b7e.md) | 175 | `result-track:ad7995a6958726e2e1990b7e39af39b8868b603f77a2a665efa79df62486835a` |
| 12 | `theorem` | [Nondegenerate.mul_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/nondegenerate-mul-iff-right--06e9c4261c44f2a4a6cfcc74.md) | 188 | `result-track:06e9c4261c44f2a4a6cfcc74d3b81de7db0e41922a94f076f96e00b091108377` |
| 13 | `theorem` | [Nondegenerate.mul_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/nondegenerate-mul-iff-left--80948a3269dd233fa69d5b7f.md) | 195 | `result-track:80948a3269dd233fa69d5b7fbd2047449b01aedd54008ba97d39087af2352fba` |
| 14 | `theorem` | [Nondegenerate.smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/nondegenerate-smul-iff--5142a85d836bf72b4f180c3c.md) | 203 | `result-track:5142a85d836bf72b4f180c3cf5b090003aaa7031046aebc8e38ec63759bbad90` |
| 15 | `lemma` | [det_ne_zero_of_sum_col_pos](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/det-ne-zero-of-sum-col-pos--07d6c523b13544b2f4cc549c.md) | 221 | `result-track:07d6c523b13544b2f4cc549c2908a4c84a33a86f97d46e9d5f8c37b09c62a310` |
| 16 | `lemma` | [det_ne_zero_of_sum_row_pos](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/declarations/det-ne-zero-of-sum-row-pos--5eb1669592c32cf498282021.md) | 250 | `result-track:5eb1669592c32cf498282021ae51e5b5292ddc111a85b6ded1c1f4a31788692c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
