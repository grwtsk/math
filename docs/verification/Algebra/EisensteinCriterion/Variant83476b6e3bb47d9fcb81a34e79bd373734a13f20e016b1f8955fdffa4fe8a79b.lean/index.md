# Verification target: GRWTSK.Algebra.EisensteinCriterion.Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53367534c7a24e9d025d68a1e0bb7b0463aab68b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/index.md) · [Full source](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53367534c7a24e9d025d68a1e0bb7b0463aab68b`.

Source path: `GRWTSK/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_eq_C_mul_X_pow_of_forall_coeff_mem](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/declarations/map-eq-c-mul-x-pow-of-forall-coeff-mem--e8cdbf2608fe26254b208ab8.md) | 32 | `result-track:e8cdbf2608fe26254b208ab811f4887e1dfe276aefda2e890a695dcc97b7e7b6` |
| 2 | `theorem` | [le_natDegree_of_map_eq_mul_X_pow](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/declarations/le-natdegree-of-map-eq-mul-x-pow--77129968a0f296d8ce8a06ac.md) | 52 | `result-track:77129968a0f296d8ce8a06ac8e0f1076c2d2b4c1d5f270c426039b8495386be0` |
| 3 | `theorem` | [eval_zero_mem_ideal_of_eq_mul_X_pow](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/declarations/eval-zero-mem-ideal-of-eq-mul-x-pow--7427534f4b5d564541051bf2.md) | 65 | `result-track:7427534f4b5d564541051bf2cd1b437e1cce97b708820e0e5abacb3bc3e43cdd` |
| 4 | `theorem` | [isUnit_of_natDegree_eq_zero_of_isPrimitive](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/declarations/isunit-of-natdegree-eq-zero-of-isprimitive--a01b81ea65637fdf4c61631e.md) | 74 | `result-track:a01b81ea65637fdf4c61631ef665a4050475dfc1163309c1ac92bc5ab529c073` |
| 5 | `theorem` | [irreducible_of_eisenstein_criterion](../../../../mathematics/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/declarations/irreducible-of-eisenstein-criterion--fcd6317142829ac58515f746.md) | 93 | `result-track:fcd6317142829ac58515f7464fab68c0e26f3bd1f4dca75552043fd4a0de50e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
