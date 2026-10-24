# Verification target: GRWTSK.Algebra.Basic.Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ac32a0aad510660303aa75ce256813b20d884d3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ac32a0aad510660303aa75ce256813b20d884d3`.

Source path: `GRWTSK/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsInvariant](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/isinvariant--a0446f8804f85a528b182a66.md) | 56 | `declaration-track:a0446f8804f85a528b182a66857ac26964e52b725731890121976c26e66954f2` |
| 2 | `def` | [IsIntegralClosure.MulSemiringAction](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/isintegralclosure-mulsemiringaction--4ab551b9dfb4c8b8ad88d2a3.md) | 69 | `declaration-track:4ab551b9dfb4c8b8ad88d2a369f8d010bf25b2382d782f8b1deb8f1f66a03046` |
| 3 | `theorem` | [Algebra.isInvariant_of_isGalois](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/algebra-isinvariant-of-isgalois--05656991d440cc1d8255932c.md) | 74 | `result-track:05656991d440cc1d8255932cf427de257afec9bac5206c87dc74709d67cd95e3` |
| 4 | `theorem` | [Algebra.isInvariant_of_isGalois'](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/algebra-isinvariant-of-isgalois--383c6a469ca5e2db62599833.md) | 94 | `result-track:383c6a469ca5e2db62599833c077b19dcc56cdcb684ba8457ef23253d648e918` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/instance--39ce1c2db8852dd6f84bba27.md) | 105 | `declaration-track:39ce1c2db8852dd6f84bba27c1a09dee5c1aee6eb1a7862fa2c39643de9dbad9` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/instance--13c8a4063def8ba45de4008c.md) | 119 | `declaration-track:13c8a4063def8ba45de4008cffc798d25bfb55c95d7c09d779bbc256bbfcccdc` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/instance--725066f80ed933616e3cbce8.md) | 123 | `declaration-track:725066f80ed933616e3cbce8a66fa1ac709bb79d163934a70494a8274b46a6b4` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/instance--3d5bbda678934d51e30a13b1.md) | 127 | `declaration-track:3d5bbda678934d51e30a13b10405377ff38fc1631e47bee408edd9d8ed503a12` |
| 9 | `def` | [charpoly](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/charpoly--bb86e30891f19e4136b33dd2.md) | 147 | `declaration-track:bb86e30891f19e4136b33dd2c73b238f2ae6a72f1cce91eb5ca412144944d4f6` |
| 10 | `theorem` | [charpoly_eq](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/charpoly-eq--e17ec6ba8a4625972a8ed40c.md) | 149 | `result-track:e17ec6ba8a4625972a8ed40cae030ef792b1d5bd771055b2df5872577eefc58e` |
| 11 | `theorem` | [charpoly_eq_prod_smul](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/charpoly-eq-prod-smul--366a32957b8756415cfa06c2.md) | 151 | `result-track:366a32957b8756415cfa06c29540b84198efa70c482e6aa5a8e3315cda7d30d5` |
| 12 | `theorem` | [monic_charpoly](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/monic-charpoly--69daba43981d86912704cb94.md) | 154 | `result-track:69daba43981d86912704cb94a8f2ac4c1638b6e5c27dce75daad3de3da5cb553` |
| 13 | `theorem` | [eval_charpoly](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/eval-charpoly--0ef92e8ad2ed3b8717071ea6.md) | 157 | `result-track:0ef92e8ad2ed3b8717071ea64358663507df655e6f24c7c703512d1e8a415222` |
| 14 | `theorem` | [smul_charpoly](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/smul-charpoly--cdfffdd647d370f714c2fc2c.md) | 164 | `result-track:cdfffdd647d370f714c2fc2c0fd980cd69fdc8d7e96197bc3bb68afce828df60` |
| 15 | `theorem` | [smul_coeff_charpoly](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/smul-coeff-charpoly--ea585d7855604fd684a1fbed.md) | 167 | `result-track:ea585d7855604fd684a1fbedfaa47853fd416660a556884000d5fd9133ad1da1` |
| 16 | `theorem` | [charpoly_mem_lifts](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/charpoly-mem-lifts--1d55c18f49aa59f6057f18c6.md) | 179 | `result-track:1d55c18f49aa59f6057f18c63dfec8ea2465b8abef7dbce8e613bea3b6b20070` |
| 17 | `theorem` | [isIntegral](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/isintegral--ee4f14716c8dd1a8f66c078d.md) | 183 | `result-track:ee4f14716c8dd1a8f66c078d3e146035dae66ff05071ca82f666b7def1d10325` |
| 18 | `theorem` | [exists_smul_of_under_eq](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/exists-smul-of-under-eq--c72dd839ce6406454379253d.md) | 191 | `result-track:c72dd839ce6406454379253d1b60686d905b933239b344ab52c4ef12ca6dae88` |
| 19 | `theorem` | [fixed_of_fixed1_aux1](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/fixed-of-fixed1-aux1--247b97c23a6ae34078f93f39.md) | 231 | `result-track:247b97c23a6ae34078f93f39baddc11eae0ce3513d87d8cb941f9d6b46b42628` |
| 20 | `theorem` | [fixed_of_fixed1_aux2](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/fixed-of-fixed1-aux2--f4ea1e21d62053cdcce14c5f.md) | 287 | `result-track:f4ea1e21d62053cdcce14c5fd74031be63e5dfd12ecdd1a9caa311f9d78e44d0` |
| 21 | `theorem` | [fixed_of_fixed1_aux3](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/fixed-of-fixed1-aux3--b8a46047830eda4e565bb9ab.md) | 301 | `result-track:b8a46047830eda4e565bb9ab0e5b4253ab9a3236744f752388750bda238555c2` |
| 22 | `theorem` | [fixed_of_fixed1](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/fixed-of-fixed1--b3720611021e90a596375a6b.md) | 314 | `result-track:b3720611021e90a596375a6b7799096756f380a80f2665b7e21fd67a714edf37` |
| 23 | `def` | [IsFractionRing.stabilizerHom](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/isfractionring-stabilizerhom--a99054b781a6f896b53b159b.md) | 351 | `declaration-track:a99054b781a6f896b53b159bab5da361b543b75e42065154a1e91d02102fee40` |
| 24 | `theorem` | [fixed_of_fixed2](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/fixed-of-fixed2--b72fe9b0d5d04c3a51876d83.md) | 355 | `result-track:b72fe9b0d5d04c3a51876d839769dde77f47758bf755bb1b13f4a5742fbaf744` |
| 25 | `theorem` | [IsFractionRing.stabilizerHom_surjective](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/isfractionring-stabilizerhom-surjective--8f52acc304555c8afb0608e5.md) | 378 | `result-track:8f52acc304555c8afb0608e55cb562f67ee7440e7d0f035f1a8d4052537114b0` |
| 26 | `theorem` | [Ideal.Quotient.stabilizerHom_surjective](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/ideal-quotient-stabilizerhom-surjective--a8e5f54f2f446f30296739f9.md) | 387 | `result-track:a8e5f54f2f446f30296739f97a45fe592dd09088fa4eb1dbaa8a2de79e0c060f` |
| 27 | `lemma` | [Ideal.Quotient.exists_algHom_fixedPoint_quotient_under](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/ideal-quotient-exists-alghom-fixedpoint-quotient-under--adb86a1369f2905c126ea0f8.md) | 414 | `result-track:adb86a1369f2905c126ea0f873f610444c632f25edc0ac3fe173e93d51077812` |
| 28 | `lemma` | [Ideal.Quotient.exists_algEquiv_fixedPoint_quotient_under](../../../../mathematics/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/declarations/ideal-quotient-exists-algequiv-fixedpoint-quotient-under--8f92fb0fc891b9f1786df416.md) | 452 | `result-track:8f92fb0fc891b9f1786df416f3da6b071e53c185cd3f106ab4300ca8f3417c89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
