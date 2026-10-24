# Verification target: GRWTSK.Algebra.UniversalAlgebra.AdmissibleAbs.Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efe439b9955987b6872ec4b1d7820bb4debc854a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efe439b9955987b6872ec4b1d7820bb4debc854a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_partition_int](../../../../../mathematics/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean/declarations/exists-partition-int--ac3b2d67f64f9c464f7856ac.md) | 37 | `result-track:ac3b2d67f64f9c464f7856ac02e7e4e1f600aec6211b62843a55503ea3d8a949` |
| 2 | `def` | [absIsAdmissible](../../../../../mathematics/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean/declarations/absisadmissible--8f401abf076a7c12abd466fc.md) | 61 | `declaration-track:8f401abf076a7c12abd466fcdc1184a7d6e2580b94082af1cbb51be949a8bd7e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AdmissibleAbs/Variant629f3fddaf08485c3b107db7b8eff834a13f47cebf15b8696e99fea88c7a5d4a.lean/declarations/instance--2b30599ce99facf5c653e7ac.md) | 66 | `declaration-track:2b30599ce99facf5c653e7ac166e4f64fd5a546ccc587dc118c9de2e6fb53bf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
