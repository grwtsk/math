# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "869be578d46d6b741a3789a99443ad0a6e49941e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `869be578d46d6b741a3789a99443ad0a6e49941e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/instance--b5aadb6a4d9be1fd49670387.md) | 30 | `declaration-track:b5aadb6a4d9be1fd4967038760c7020998a7409b5b38f11decac5f63d6fb1163` |
| 2 | `def` | [tensorObjMap](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/tensorobjmap--a5b71d6ed6e6bd9803525cd9.md) | 40 | `declaration-track:a5b71d6ed6e6bd9803525cd9be11e82b94a915b6db490804ce5a69bff3c556eb` |
| 3 | `def` | [tensorObj](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/tensorobj--02276f60efb4db03a3b1f088.md) | 50 | `declaration-track:02276f60efb4db03a3b1f0883367c0ef57a57b1b902e933bbf912c6975e987c2` |
| 4 | `lemma` | [tensorObj_map_tmul](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/tensorobj-map-tmul--52795e88bc7254551856ab67.md) | 66 | `result-track:52795e88bc7254551856ab672b49a0535fb67cb30fba2fa16e8e3ad8c73f4082` |
| 5 | `def` | [tensorHom](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/tensorhom--db843585e9326c303fe54da6.md) | 74 | `declaration-track:db843585e9326c303fe54da6d73689d9f16e99a3d34039e26c94933635aff029` |
| 6 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/monoidalcategorystruct--20f111e3c34eb7389730e115.md) | 89 | `declaration-track:20f111e3c34eb7389730e1153281b347438b69686233f54189874ef3062b18cb` |
| 7 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variant2625ff155a4fa256134c18549b10eaeb0fbbe18e8aa56b92135342200286384e.lean/declarations/monoidalcategory--7a20c9d38c31f65561df2a3f.md) | 109 | `declaration-track:7a20c9d38c31f65561df2a3f894cad13fafae9f1d1367960a09e98cd30a3282e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
