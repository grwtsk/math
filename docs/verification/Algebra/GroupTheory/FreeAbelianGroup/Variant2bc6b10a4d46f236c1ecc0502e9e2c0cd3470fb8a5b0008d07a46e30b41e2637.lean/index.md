# Verification target: GRWTSK.Algebra.GroupTheory.FreeAbelianGroup.Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b76abaee0214cfd3d68e48bbf6a7e711d15f3e3d",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b76abaee0214cfd3d68e48bbf6a7e711d15f3e3d`.

Source path: `GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/freeabeliangroup--74a141d03bbe7577a98284cc.md) | 83 | `declaration-track:74a141d03bbe7577a98284cc22c5c05d4a29991a8d417928f6fe3955c9b2ae0b` |
| 2 | `instance` | [FreeAbelianGroup.addCommGroup](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/freeabeliangroup-addcommgroup--0f2ab613a73654accd06d59b.md) | 89 | `declaration-track:0f2ab613a73654accd06d59b926be20ea51516068f44312ac47181e0995f76e2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/instance--e72c0c0600fe06ece8363982.md) | 92 | `declaration-track:e72c0c0600fe06ece8363982c4d6f7eca13be9b484f847419e7e1470fa527772` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/of--eb42da4864265696651daa7a.md) | 100 | `declaration-track:eb42da4864265696651daa7ad63ba61e1817f8b86089594d1b7ffaa33363ffcc` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/lift--8647db096dfd562c387f7427.md) | 105 | `declaration-track:8647db096dfd562c387f7427b85b439498ebab1487cde7097d3d32b8b1818ad5` |
| 6 | `theorem` | [of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/of--8353f9f3942296307cf937ba.md) | 118 | `result-track:8353f9f3942296307cf937ba1b99c01cb00d6d47eb090ac69a68c511d2e981e8` |
| 7 | `theorem` | [unique](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/unique--f18580f06cb5ec483ba14f89.md) | 124 | `result-track:f18580f06cb5ec483ba14f892486fc93295c046ca749f5fe2de370dd0f451b14` |
| 8 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/ext--ddd12f77286f1ebcecb9daff.md) | 131 | `result-track:ddd12f77286f1ebcecb9daffaf3785ca8510f817b5ac96fd474671136aab1e48` |
| 9 | `theorem` | [map_hom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-hom--6ed0ce5833261dccfb8793aa.md) | 135 | `result-track:6ed0ce5833261dccfb8793aaed00f6ad54e568e0be185a7527f5d02c1244f421` |
| 10 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/of-injective--6b72637c7dca3011b320ca4c.md) | 150 | `result-track:6b72637c7dca3011b320ca4c651bb404bcb2b3cebbe0257259230f05169a4b6b` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/induction-on--97f45e61e2fb3294904ee58a.md) | 164 | `result-track:97f45e61e2fb3294904ee58a7d2ac573ff2f8fcc4265f24c0fbccf9b7922f817` |
| 12 | `theorem` | [lift.add'](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/lift-add--d2e721aef43b7e47b6dd198d.md) | 172 | `result-track:d2e721aef43b7e47b6dd198d7bb8bd10f6c50b54aeac67a2c4f922eb6e73deca` |
| 13 | `def` | [liftAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/liftaddgrouphom--098b8094705d4f6dfd283d49.md) | 188 | `declaration-track:098b8094705d4f6dfd283d49ee8c77ba2d2c06b1b71cebb1ea5fc53618f4d1bd` |
| 14 | `theorem` | [lift_neg'](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/lift-neg--2fce4ee59de5112a65ee8a30.md) | 192 | `result-track:2fce4ee59de5112a65ee8a30ac0bec0119802c547931a9767969b2956e6926cb` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/instance--f7dc28e60d22b172f266f759.md) | 200 | `declaration-track:f7dc28e60d22b172f266f759943437171369948bd683080805d95fd69e978a5e` |
| 16 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/induction-on--3383069aacfb95a5521d2e7c.md) | 205 | `result-track:3383069aacfb95a5521d2e7c0f3e45683dbe8d1f2b619e98a0ce604d986a956c` |
| 17 | `theorem` | [map_pure](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-pure--dbd89f2d5bbb608345620b0a.md) | 212 | `result-track:dbd89f2d5bbb608345620b0ac925e89db0f6f17abb64540443cf12cd5a99ae3d` |
| 18 | `theorem` | [map_zero](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-zero--3e422662513d13fe5c722d81.md) | 217 | `result-track:3e422662513d13fe5c722d814b603b84814dc37e8b43e830df940af1e7c3a9af` |
| 19 | `theorem` | [map_add](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-add--3ae93b3d790fc675b8ed614e.md) | 222 | `result-track:3ae93b3d790fc675b8ed614e2ee4b8e83b452282853fec698bffb66b0aea0470` |
| 20 | `theorem` | [map_neg](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-neg--99e2bbe445023742a5b4a6f5.md) | 228 | `result-track:99e2bbe445023742a5b4a6f5376a68b3f6e054855c2d1eed31fe105e2609f418` |
| 21 | `theorem` | [map_sub](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-sub--8c7668baad670620194174c7.md) | 233 | `result-track:8c7668baad670620194174c7b815acc1a2610523ec1ac1041abb16db10a364cf` |
| 22 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-of--1448684e0efd52193fb32dea.md) | 239 | `result-track:1448684e0efd52193fb32dea6fb54fe0d3f4e24baeb8cd384e80856069eef806` |
| 23 | `theorem` | [pure_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/pure-bind--55cab73eac01ad780519a6da.md) | 244 | `result-track:55cab73eac01ad780519a6da0f0b7c964383a3c3b6d70c2805f40061555dab9a` |
| 24 | `theorem` | [zero_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/zero-bind--82b2fd93282687a49a3fb554.md) | 249 | `result-track:82b2fd93282687a49a3fb55454ef49027012da39ad834adda21b870aad85e60c` |
| 25 | `theorem` | [add_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/add-bind--3a276dbd2a8f982cec095bb4.md) | 254 | `result-track:3a276dbd2a8f982cec095bb44f01f5bf373a1fe567a46e7c76d6563e3c8a0caf` |
| 26 | `theorem` | [neg_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/neg-bind--ea7cb9fde6da5d127326d333.md) | 260 | `result-track:ea7cb9fde6da5d127326d333ccf99d9c0ede9de59c94c33a2bc7d77631a622ca` |
| 27 | `theorem` | [sub_bind](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/sub-bind--1ac0ff755ebf7cb41ee528ea.md) | 265 | `result-track:1ac0ff755ebf7cb41ee528ea2c528f7411bfabf6242de8a084156411a2a3e6ca` |
| 28 | `theorem` | [pure_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/pure-seq--1a11401ab918581a50ce70a5.md) | 271 | `result-track:1a11401ab918581a50ce70a55e029bc6826d5ee5e431c8349eb57d3127aaddb6` |
| 29 | `theorem` | [zero_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/zero-seq--5d9b36dddaa241a227785842.md) | 276 | `result-track:5d9b36dddaa241a22778584275582e3279a626850c75b6b43ef2c06ebacf6e78` |
| 30 | `theorem` | [add_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/add-seq--a8cd5665d9bb73b49fd860b0.md) | 281 | `result-track:a8cd5665d9bb73b49fd860b0c5489e263d91cfdb32a0b9e674b42e51cebde0e1` |
| 31 | `theorem` | [neg_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/neg-seq--0c1d8f89b535b4506c0bb7bb.md) | 287 | `result-track:0c1d8f89b535b4506c0bb7bb05a5ff4b04de83a6571212cdc64c68a0970675fe` |
| 32 | `theorem` | [sub_seq](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/sub-seq--885ae7c97ef801b34bca6e54.md) | 292 | `result-track:885ae7c97ef801b34bca6e54c226593e05eb9f89fcdb20dc1fcb7fb7b839eed0` |
| 33 | `def` | [seqAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/seqaddgrouphom--158ef9e29822d8db19f5ffd5.md) | 299 | `declaration-track:158ef9e29822d8db19f5ffd5afb38b3107eaf91f23191edb8f5d878d38b34738` |
| 34 | `theorem` | [seq_zero](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/seq-zero--39be107d2585505df43675a4.md) | 307 | `result-track:39be107d2585505df43675a484b7a6e2859e852c2b8c8f173478a4e19f9e7e85` |
| 35 | `theorem` | [seq_add](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/seq-add--b0ea779866cd4c076f8fde81.md) | 312 | `result-track:b0ea779866cd4c076f8fde8185fd7771978b86a36ce298362adbea9e0fda6b9a` |
| 36 | `theorem` | [seq_neg](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/seq-neg--6383db7ed7d61ede141ebf1b.md) | 318 | `result-track:6383db7ed7d61ede141ebf1b1cc95e1d9224fc5f14b06d112d1608c389ae25d3` |
| 37 | `theorem` | [seq_sub](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/seq-sub--868d6f14911f9fd6183a4a03.md) | 323 | `result-track:868d6f14911f9fd6183a4a03ccf451b93cb835aaa49fb51b92dbf15091da3a4d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/instance--f8a463709392d2652a029293.md) | 328 | `declaration-track:f8a463709392d2652a029293538f83ba9dde7ac4b3b07bc1cfdf02917968a90a` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/instance--d737f63c0e4369597e678281.md) | 337 | `declaration-track:d737f63c0e4369597e67828165d085ae5ea45926eb92ce05e0611b11da7ef210` |
| 40 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map--040b1a5f746efaed4ed1a87c.md) | 362 | `declaration-track:040b1a5f746efaed4ed1a87cdf3df863b0301744c3cc7a3c3cb8e8f5131c860b` |
| 41 | `theorem` | [lift_comp](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/lift-comp--201ad8872f572342a403c20b.md) | 366 | `result-track:201ad8872f572342a403c20bb59992e3264a69948c7b286cf2c526b6b0bb069d` |
| 42 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-id--7c9c6179c562173905298bf3.md) | 379 | `result-track:7c9c6179c562173905298bf3c982fc71288ac7f388bf42f565740cc077e42903` |
| 43 | `theorem` | [map_id_apply](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-id-apply--ce797347b630f6973f1c2ebb.md) | 384 | `result-track:ce797347b630f6973f1c2ebb9efe27bde0912fe2a7e5dbb60249bbab5800f70f` |
| 44 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-comp--697d23436d9e0def1411f65d.md) | 389 | `result-track:697d23436d9e0def1411f65d7ac800c218ecf82a44e059d967ec2a4db43f8d83` |
| 45 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-comp-apply--1bcfdd5f7f48fc6d4d2785fc.md) | 393 | `result-track:1bcfdd5f7f48fc6d4d2785fccd2f2c0883c527fb744099bc9061ca737c65abe6` |
| 46 | `theorem` | [map_of_apply](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/map-of-apply--5c69220c3d62db0f8474ce7c.md) | 401 | `result-track:5c69220c3d62db0f8474ce7ca9c3e16b3dea9a52633528c244d23694ad6899c7` |
| 47 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/mul--df84951d3c4159a494505e16.md) | 411 | `declaration-track:df84951d3c4159a494505e1611bd2c678366a4093a302b4ac838f01b0f41b8dd` |
| 48 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/mul-def--5d1a9701159f8ed35c179a16.md) | 416 | `result-track:5d1a9701159f8ed35c179a1681bfce3f63ad4e6f1f236ce2da8122ec5d7beae9` |
| 49 | `theorem` | [of_mul_of](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/of-mul-of--77ef3be2bd09e9617e0680e7.md) | 422 | `result-track:77ef3be2bd09e9617e0680e7ff18534d400e18b1191e02746786469bd2a0ba23` |
| 50 | `theorem` | [of_mul](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/of-mul--060a0fa5c88662795e70aa1f.md) | 426 | `result-track:060a0fa5c88662795e70aa1f6e08d1603373a8a07b5cb7294dc49eb4985b8ba2` |
| 51 | `instance` | [distrib](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/distrib--d210dc39c5a0bacb235b56c9.md) | 430 | `declaration-track:d210dc39c5a0bacb235b56c96a162a5bf7746fbd7ece9380ac06433b627171d2` |
| 52 | `instance` | [nonUnitalNonAssocRing](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/nonunitalnonassocring--d71380f15a2fdfb50655a4b0.md) | 435 | `declaration-track:d71380f15a2fdfb50655a4b0b5ef19abac2d3b1bd35fb05e83946cbeed38c4c7` |
| 53 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/one--3c39162cfc77848759600a91.md) | 445 | `declaration-track:3c39162cfc77848759600a916b54d86f3c5a6ce841823e653fd2cc72fe531779` |
| 54 | `instance` | [nonUnitalRing](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/nonunitalring--b19a5472a4f8d4b35fdcfd0d.md) | 448 | `declaration-track:b19a5472a4f8d4b35fdcfd0d546e23093ce6683f4541a235ce8098d5eddf93a7` |
| 55 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/ring--a131f8b30e9c36acdede513a.md) | 470 | `declaration-track:a131f8b30e9c36acdede513a48226758bb0d75c91bebd1841f32507b7e7dba71` |
| 56 | `def` | [ofMulHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/ofmulhom--0b0ca2f34a894d00b57c30ed.md) | 498 | `declaration-track:0b0ca2f34a894d00b57c30eda1fda2b05db1b923f0a5333718daa679fe68eeac` |
| 57 | `theorem` | [ofMulHom_coe](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/ofmulhom-coe--b70ff829e6c19e70af7c46a4.md) | 505 | `result-track:b70ff829e6c19e70af7c46a4718fc875098fb119f955b01183fa6bd3d2ff39c1` |
| 58 | `def` | [liftMonoid](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/liftmonoid--02f794304fa8d7ffa3473f00.md) | 510 | `declaration-track:02f794304fa8d7ffa3473f004a828b73f3d413e83f9bb933489a1d71138fae0c` |
| 59 | `theorem` | [liftMonoid_coe_addMonoidHom](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/liftmonoid-coe-addmonoidhom--120ab908f7853ad0e85dfc8a.md) | 540 | `result-track:120ab908f7853ad0e85dfc8a1e94a4ea14a489669285100a2ca7376f62ef1dc3` |
| 60 | `theorem` | [liftMonoid_coe](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/liftmonoid-coe--ad3e462b7ed76d902a3cf9ef.md) | 545 | `result-track:ad3e462b7ed76d902a3cf9efe83528478ce8a708ac41a4cc7f7ef52f6ec24378` |
| 61 | `theorem` | [liftMonoid_symm_coe](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/liftmonoid-symm-coe--4b5d68831a0d96365272a099.md) | 551 | `result-track:4b5d68831a0d96365272a099f8e26329b40857a60136c2fdd634dcc0e5eba057` |
| 62 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/one-def--f23650607588044726a749c1.md) | 556 | `result-track:f23650607588044726a749c15a19f1eaef2f9458f440906f14280988ddb9417a` |
| 63 | `theorem` | [of_one](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/of-one--dab717698d148f004d81eb06.md) | 560 | `result-track:dab717698d148f004d81eb069a192252068bbbd18be8690a9d8fa51b17a03f37` |
| 64 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/instance--174a7643b6baafd2a483476f.md) | 566 | `declaration-track:174a7643b6baafd2a483476f5655e0e57ed77baf48decfbff6896a68bcc737cd` |
| 65 | `instance` | [pemptyUnique](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/pemptyunique--d1a26597395964f5987f7183.md) | 586 | `declaration-track:d1a26597395964f5987f7183d4204647220bbbc9e664fa1a1f6931fa6f547741` |
| 66 | `def` | [punitEquiv](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/punitequiv--28c935b88673c5652991beb4.md) | 594 | `declaration-track:28c935b88673c5652991beb4c937d69c9d0ec526894c66209e1730a859ff923f` |
| 67 | `def` | [equivOfEquiv](../../../../../mathematics/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/declarations/equivofequiv--61dc155aaf19379523a02a7b.md) | 610 | `declaration-track:61dc155aaf19379523a02a7bb3786c1018cb6098c2d41d41525fdec34c459e6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
