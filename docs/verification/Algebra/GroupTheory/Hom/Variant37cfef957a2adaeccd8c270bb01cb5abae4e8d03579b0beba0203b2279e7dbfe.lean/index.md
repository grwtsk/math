# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54be2e8c2014d6759071293dd1863d432242170f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54be2e8c2014d6759071293dd1863d432242170f`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_nat'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/ext-nat--e1adcbab22163d35281034fd.md) | 25 | `result-track:e1adcbab22163d35281034fdfb44efd8a44293d0aab7c2694d933ffadb73260e` |
| 2 | `lemma` | [AddMonoidHom.ext_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/addmonoidhom-ext-nat--6ffafbd5f4fd4df8210fa64e.md) | 34 | `result-track:6ffafbd5f4fd4df8210fa64ee1273162c3ca6f27707805a67ae022dd1ca7f0f8` |
| 3 | `def` | [multiplesHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/multipleshom--3280c6f063d2c6a2ce9f353c.md) | 44 | `declaration-track:3280c6f063d2c6a2ce9f353c540874ddb7cf5069e41bd2554cba8d131be31fa8` |
| 4 | `lemma` | [multiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/multipleshom-apply--7def2b42e9d222bc8d174439.md) | 53 | `result-track:7def2b42e9d222bc8d1744394a3b64f9da0819afb45babc9493aa4231413b8c2` |
| 5 | `lemma` | [multiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/multipleshom-symm-apply--ca39a8088e446212a64de176.md) | 55 | `result-track:ca39a8088e446212a64de176cc28fb4b27a76cbba009b5293d21fa0cd9faf267` |
| 6 | `lemma` | [AddMonoidHom.apply_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/addmonoidhom-apply-nat--11fdebe8874bc347e405117c.md) | 57 | `result-track:11fdebe8874bc347e405117c233b14c87734dfc7c97615e6a7d3ee5e2536afd0` |
| 7 | `def` | [powersHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/powershom--0a63be96668417e19b0d5d42.md) | 68 | `declaration-track:0a63be96668417e19b0d5d42075e50c8c73eed551b53662f3168949a00e3d048` |
| 8 | `lemma` | [powersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/powershom-apply--91b5f7f62d73b49afdc76978.md) | 71 | `result-track:91b5f7f62d73b49afdc7697815a8e1199a0f97fea2afc480b47f9e1f24bf6c3a` |
| 9 | `lemma` | [powersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/powershom-symm-apply--88ad07ee710a4d31023afeb9.md) | 74 | `result-track:88ad07ee710a4d31023afeb9e5c49230c4f5e2596db9827d4c9b8340c1ad861b` |
| 10 | `lemma` | [MonoidHom.apply_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/monoidhom-apply-mnat--11284c589dceb4e56160626e.md) | 77 | `result-track:11284c589dceb4e56160626ec3822e6e1637b5caaa7b2cd39ea2eda4daf3144d` |
| 11 | `lemma` | [MonoidHom.ext_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/monoidhom-ext-mnat--8d5fcf41a5ed35178509a9f1.md) | 82 | `result-track:8d5fcf41a5ed35178509a9f12d78fe77a56d7363d4f096f27dd86649efad4018` |
| 12 | `def` | [multiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/multiplesaddhom--e764b9fae4906e2fea2dd42c.md) | 93 | `declaration-track:e764b9fae4906e2fea2dd42c8a15265801db1701b6aaf58f5c88ed5d179fb936` |
| 13 | `lemma` | [multiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/multiplesaddhom-apply--bb5f04e6e9617d8f002d736b.md) | 97 | `result-track:bb5f04e6e9617d8f002d736ba970308fd556b9e74ef6d3692f358ec491b2fb09` |
| 14 | `lemma` | [multiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/multiplesaddhom-symm-apply--faf03b0d82272a362dc7af09.md) | 99 | `result-track:faf03b0d82272a362dc7af095f072f45592db3d6833ba18681606e2b7c449fb0` |
| 15 | `def` | [powersMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/powersmulhom--b110f3eaafd9340e1de951c7.md) | 108 | `declaration-track:b110f3eaafd9340e1de951c7acedc6fbf4110ec6399b7f007c7a52722cb13f98` |
| 16 | `lemma` | [powersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/powersmulhom-apply--1be614328ec25779daa918a7.md) | 113 | `result-track:1be614328ec25779daa918a768834985c796e37627dac5ec11daa9f9ba0ab3f1` |
| 17 | `lemma` | [powersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe.lean/declarations/powersmulhom-symm-apply--0baae497cad50bd745b3444a.md) | 116 | `result-track:0baae497cad50bd745b3444aac8b7ae69ee244d25e50f3a8f2858f9e30d62d13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
