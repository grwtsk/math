# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ClosedImmersion.Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f72643b97e88cc91d65f71d49f4a10b71c21bee",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f72643b97e88cc91d65f71d49f4a10b71c21bee`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosedimmersion--f75654fc995d32ae8b64256c.md) | 53 | `declaration-track:f75654fc995d32ae8b64256c59ed1b6b25105e0d3bfb8b93b68ac89ad436c551` |
| 2 | `lemma` | [eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/eq-inf--09f099ddffeed1dc03d4921d.md) | 60 | `result-track:09f099ddffeed1dc03d4921dbfd38aebeb2636683913230fc26cdecfc5890a88` |
| 3 | `lemma` | [iff_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/iff-ispreimmersion--29067442ce5e75675ca59c39.md) | 66 | `result-track:29067442ce5e75675ca59c395f2c4ee7ba7192266b795e27eea81ca86db53f18` |
| 4 | `lemma` | [of_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/of-ispreimmersion--6ea8b6157975f5a9c427bd26.md) | 70 | `result-track:6ea8b6157975f5a9c427bd260518c843fd1db1ff655e53bb555cb414fe886ce6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--b510d8c08f92c28d5d53d7a3.md) | 74 | `declaration-track:b510d8c08f92c28d5d53d7a34b813bda799fac0797e9743c68b69a5f35cfaf15` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--51822a3c63672ca63b2abb5c.md) | 78 | `declaration-track:51822a3c63672ca63b2abb5c6657ce8c350a2ca59f8ea63dc743c22532471001` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--b7d1a0a4dc6c40dedc796a96.md) | 82 | `declaration-track:b7d1a0a4dc6c40dedc796a96481ae616eec5af22c71db4aed9691a96e12b55b8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--b553f31c5a8376ae01d0071c.md) | 85 | `declaration-track:b553f31c5a8376ae01d0071cd85ae3514f4aa43103c3553f6fe9f868c5fb048d` |
| 9 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/comp--bc982bab1c00cdc111228c38.md) | 91 | `declaration-track:bc982bab1c00cdc111228c38b9b3ea31a582abccb63ae5bf624c56a9f9465ebe` |
| 10 | `instance` | [respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/respectsiso--6859ac62b85eec5e1762916d.md) | 96 | `declaration-track:6859ac62b85eec5e1762916defe17d80e4bbae4e723b1458c17d0e7fb1e2fa20` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--eb375ef5bc2b797200feeec3.md) | 99 | `declaration-track:eb375ef5bc2b797200feeec3fbdeb258076df2dd9bd1bd4258f0595b794c1dd3` |
| 12 | `theorem` | [spec_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/spec-of-surjective--4c7ecba7df951bf3c09ccb43.md) | 106 | `result-track:4c7ecba7df951bf3c09ccb437b7799e8541432c6a778ec0242642a76d31354a2` |
| 13 | `instance` | [spec_of_quotient_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/spec-of-quotient-mk--5d44e6525fcb5a72f6be2402.md) | 120 | `declaration-track:5d44e6525fcb5a72f6be2402ed4b37c3b1b8d406823cac8a162f37a55f9335a4` |
| 14 | `lemma` | [of_surjective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/of-surjective-of-isaffine--0d5631a1211a285730595a7b.md) | 126 | `result-track:0d5631a1211a285730595a7b5f89439d07df017acf89efe67945cd78d170454e` |
| 15 | `theorem` | [of_comp_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/of-comp-isclosedimmersion--8dadae9fbaff9298a7a059c1.md) | 137 | `result-track:8dadae9fbaff9298a7a059c14d31f09326b043fd730e782ec057e8dcc89b7203` |
| 16 | `instance` | [SpecMap_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/specmap-residue--339b6db0ea2cdeb104106ca7.md) | 152 | `declaration-track:339b6db0ea2cdeb104106ca77cfef063e9539b7da05fc33a80678bccf7693f47` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--e146b73c8043cf57c9651dd8.md) | 156 | `declaration-track:e146b73c8043cf57c9651dd8820de7096458dffb3299190d95fa09a21fb39268` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--7fea8f94f4c50a990e01d0f1.md) | 160 | `declaration-track:7fea8f94f4c50a990e01d0f1c66a91c4fddcfebc07708db119186b2e3deef6fb` |
| 19 | `def` | [overEquivIdealSheafData](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/overequividealsheafdata--591c9118fd6c88ac31d3bd62.md) | 185 | `declaration-track:591c9118fd6c88ac31d3bd626e7f08215d0694975bf06e369ce4ff83f657efff` |
| 20 | `lemma` | [isIso_iff_ker_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isiso-iff-ker-eq-bot--ef10aca5b95895a431109ffc.md) | 203 | `result-track:ef10aca5b95895a431109ffc14bd48037cfab1b4330e58c9f594b7d91c00f740` |
| 21 | `def` | [lift](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/lift--64f3b261e0e00a10444223d0.md) | 215 | `declaration-track:64f3b261e0e00a10444223d07e5e84a6fb005d7f9f8d6092ceaeb8669ed4e53e` |
| 22 | `lemma` | [lift_fac](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/lift-fac--c1678bbae14d97f1ff8fb816.md) | 220 | `result-track:c1678bbae14d97f1ff8fb816643245b405229043c8ebd5a74073d98c99b33d92` |
| 23 | `lemma` | [isIso_of_ker_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isiso-of-ker-eq--902b869b13cc332f74742e79.md) | 227 | `result-track:902b869b13cc332f74742e7937b58c50a35bc8be99de535971a6321aaf28de75` |
| 24 | `lemma` | [isIso_lift](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isiso-lift--b4fef669f417c6552749d2b3.md) | 237 | `result-track:b4fef669f417c6552749d2b3f212e18471377b38c1939f492f6e39f7f20ee753` |
| 25 | `lemma` | [isDominant_of_of_appTop_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isdominant-of-of-apptop-injective--9ca742074f2ea5689e4feaea.md) | 251 | `result-track:9ca742074f2ea5689e4feaea941447434d90e3f1fc37312e827e20714b86b463` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--25e8deb9b46c82007c574bb2.md) | 259 | `declaration-track:25e8deb9b46c82007c574bb27b2764bde4e3f560d3ccf25597f55609705a9840` |
| 27 | `lemma` | [stalkMap_injective_of_isOpenMap_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/stalkmap-injective-of-isopenmap-of-injective--0ec0d64b351583a343306de7.md) | 267 | `result-track:0ec0d64b351583a343306de712bdf482ea9322bcc915e096425ff63fccf530f3` |
| 28 | `theorem` | [isIso_of_injective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isiso-of-injective-of-isaffine--2fcd82a9e116b377cbea54e6.md) | 312 | `result-track:2fcd82a9e116b377cbea54e61dc2f92c5157a4640684d7ee3165b5ccf39faccd` |
| 29 | `theorem` | [isAffine_surjective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isaffine-surjective-of-isaffine--25f6ec205310436c16965af3.md) | 322 | `result-track:25f6ec205310436c16965af34a959ab3e60df158e8c2b0fa8ffd705fdf2c963d` |
| 30 | `lemma` | [Spec_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/spec-iff--3fd72e0f978f51788e4fea2f.md) | 332 | `result-track:3fd72e0f978f51788e4fea2fb80eab38434d65bda4913e2541fa0fa4e5b1c7db` |
| 31 | `instance` | [IsClosedImmersion.isZariskiLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosedimmersion-iszariskilocalattarget--34e082a3ce8fc2687b5a84f0.md) | 360 | `declaration-track:34e082a3ce8fc2687b5a84f046ccd054c83de86511899023717b7e0732ed66a6` |
| 32 | `instance` | [IsClosedImmersion.hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosedimmersion-hasaffineproperty--eb4832af1f523c4e235ab49b.md) | 366 | `declaration-track:eb4832af1f523c4e235ab49b11ebb816690348283bb8e6f5aee1e13ccb1e5a80` |
| 33 | `lemma` | [isClosedImmersion_iff_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosedimmersion-iff-isaffinehom--7bdd71b0714e97e8e0758913.md) | 372 | `result-track:7bdd71b0714e97e8e075891346569981948ad24234f62067967d408ff8d0dec8` |
| 34 | `lemma` | [Scheme.Hom.app_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/scheme-hom-app-surjective--f5755725ac8199adfcb80331.md) | 378 | `result-track:f5755725ac8199adfcb80331c51b58b54f0d1835c601ccf13c224b915909c6eb` |
| 35 | `instance` | [IsClosedImmersion.isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosedimmersion-isstableunderbasechange--c8b5e0acb89a4dcd9a1021f8.md) | 384 | `declaration-track:c8b5e0acb89a4dcd9a1021f823511796d0eb490aacb3f459002a2af46dd0a474` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--682ba85247485e68ffff6be5.md) | 394 | `declaration-track:682ba85247485e68ffff6be5716a3a3abaa45167387fe76e6c469dfc2a9a3e40` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--ec6888b450a39e6f565ecff5.md) | 399 | `declaration-track:ec6888b450a39e6f565ecff5e291d2934c7ee7c478e3dbad644aad613956c3a3` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--5104b50b4ebc75565784ecdf.md) | 403 | `declaration-track:5104b50b4ebc75565784ecdfa30e9e8ac00dad5223a01ef2ca649134e2974614` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--445c797d6a34eb004db77bdb.md) | 409 | `declaration-track:445c797d6a34eb004db77bdb24fcb7e616979715eced7172fbbb5c0914bc3875` |
| 40 | `lemma` | [isIso_of_isClosedImmersion_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isiso-of-isclosedimmersion-of-surjective--d89157168a8ebf0900b1c8b9.md) | 418 | `result-track:d89157168a8ebf0900b1c8b9d2a9bfcb4d81956f7b5c40e8af1a363e92f5e0c3` |
| 41 | `lemma` | [isClosed_singleton_iff_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosed-singleton-iff-isclosedimmersion--ed0652e9b9ef93e98411794b.md) | 425 | `result-track:ed0652e9b9ef93e98411794bc922a4b78c4c95e6e3be61cedf9ffcb3799fbbed` |
| 42 | `theorem` | [isClosedImmersion_of_comp_eq_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/isclosedimmersion-of-comp-eq-id--bb2815779a377e9c5e609953.md) | 434 | `result-track:bb2815779a377e9c5e609953b9ff31838a9cab3f69bbf0aa58a8948f51e4edae` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--73d21e9ba2a88b2ea27ddde6.md) | 468 | `declaration-track:73d21e9ba2a88b2ea27ddde68614f0ca2b432d085b244e5f2805749dba5024f2` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/declarations/instance--afd73ec7b618b3fc78e3f907.md) | 471 | `declaration-track:afd73ec7b618b3fc78e3f9076ff964d18315154a42588bf6e99e9c3d8a4b45f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
