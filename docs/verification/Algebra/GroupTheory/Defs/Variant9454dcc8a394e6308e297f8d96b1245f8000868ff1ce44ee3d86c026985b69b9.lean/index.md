# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9cfbf607b2a40874530b3442ca1f7c39e92ba63",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9cfbf607b2a40874530b3442ca1f7c39e92ba63`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Invertible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible--820ffd80bd7fdabcdb6b2c48.md) | 91 | `declaration-track:820ffd80bd7fdabcdb6b2c48c2261521d12484d50a83b87331f03dd34295ce1c` |
| 2 | `theorem` | [invOf_mul_self'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-self--bbab2b23ef2a5630ac06eeb2.md) | 104 | `result-track:bbab2b23ef2a5630ac06eeb2f6f1b19397d4998763e8c97e5ce7456bbb4770b5` |
| 3 | `theorem` | [invOf_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-self--00f041f880a10a7b1a86dfa5.md) | 107 | `result-track:00f041f880a10a7b1a86dfa5ee47732661470b70f4e4fcc5c97d335d1903626a` |
| 4 | `theorem` | [mul_invOf_self'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-self--02a1fc424436217d25545e55.md) | 110 | `result-track:02a1fc424436217d25545e554edc811969d3eb3ec47a80b64a16a7232d2a39ca` |
| 5 | `theorem` | [mul_invOf_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-self--ae7e6eca1c7b2883a5caa098.md) | 113 | `result-track:ae7e6eca1c7b2883a5caa098e575c8dd2ff64875303280d6f3edf446b8392768` |
| 6 | `theorem` | [invOf_mul_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-cancel-left--ab14cc5514df6776f4c1df26.md) | 116 | `result-track:ab14cc5514df6776f4c1df26bf907a256f2accded610a29d81ef3d26525e6bbe` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/example--b7375d2dcdda721b7ddbd5f3.md) | 118 | `declaration-track:b7375d2dcdda721b7ddbd5f34831147064452a9808dd487fa0103166c74c8730` |
| 8 | `theorem` | [invOf_mul_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-cancel-left--07591e5bb56a84a653443c8f.md) | 120 | `result-track:07591e5bb56a84a653443c8fed0ad68acb89a08d996fc304b4e4242643188ab7` |
| 9 | `theorem` | [mul_invOf_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-cancel-left--7d702d3f12d788935fe543ac.md) | 124 | `result-track:7d702d3f12d788935fe543ac42ec6131619322086ce08d25bb5e2b884ede86f1` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/example--f9f31541d0415aa64f42f9c9.md) | 126 | `declaration-track:f9f31541d0415aa64f42f9c9410513e931fbfff007d1164391c8c0faa40a8880` |
| 11 | `theorem` | [mul_invOf_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-cancel-left--e9133ac979d56b2e42aa63c2.md) | 128 | `result-track:e9133ac979d56b2e42aa63c2ac1d1c9cc605ec15d6a616843d2c5652637ccda0` |
| 12 | `theorem` | [invOf_mul_cancel_right'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-cancel-right--ecfffb925e23ddc0aaef29e7.md) | 132 | `result-track:ecfffb925e23ddc0aaef29e77aa2b85f5a66e768aff21205e879efb9d83bff88` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/example--c5ac7a6bf4b6380cbc9c1ca1.md) | 134 | `declaration-track:c5ac7a6bf4b6380cbc9c1ca1e69e0f9b9b8052c444db92b7bb453a2c9eb239c8` |
| 14 | `theorem` | [invOf_mul_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-cancel-right--5ed7fbc16f39dea869cf5848.md) | 136 | `result-track:5ed7fbc16f39dea869cf584855f4666c6e55b4b53e7793bc5f80efde5e920bc4` |
| 15 | `theorem` | [mul_invOf_cancel_right'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-cancel-right--addeeb78d2bafa773d682137.md) | 140 | `result-track:addeeb78d2bafa773d682137fa8eaf0a934aab7935a72a4f2037335ef8e3d85d` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/example--591e2285223013fee5f583da.md) | 142 | `declaration-track:591e2285223013fee5f583dab49933854a9e0f11ca5e3d91edddf17d84b0fd65` |
| 17 | `theorem` | [mul_invOf_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-cancel-right--b25e03ab0b83657c2c85e929.md) | 144 | `result-track:b25e03ab0b83657c2c85e92923de8013afb4c198517df0eca7d1554de830946b` |
| 18 | `theorem` | [invOf_eq_right_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-eq-right-inv--9520515cd61e8b7894b38e0e.md) | 147 | `result-track:9520515cd61e8b7894b38e0e065a22351755c11c82ca3bda747736f3c4e6e5ac` |
| 19 | `theorem` | [invOf_eq_left_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-eq-left-inv--767c82a8ac60358cbc3a5581.md) | 150 | `result-track:767c82a8ac60358cbc3a558107bb52b25a13a83ea9f0eb39ab2ea1cb0cd53aa9` |
| 20 | `theorem` | [invertible_unique](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible-unique--62b97d235062d475c49eb01d.md) | 153 | `result-track:62b97d235062d475c49eb01d863807881e20f6cae655d92d9c40f3531816bcd6` |
| 21 | `instance` | [Invertible.subsingleton](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible-subsingleton--cd7b24f787c36448e08ce22a.md) | 158 | `declaration-track:cd7b24f787c36448e08ce22aacb27606db690629c41156215c23857bf19b3387` |
| 22 | `theorem` | [Invertible.congr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible-congr--b1baca43f9c783eece65e087.md) | 165 | `result-track:b1baca43f9c783eece65e0875a16dba154a40384918852c7fe24dfbcc6863f6f` |
| 23 | `def` | [Invertible.copy'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible-copy--83d66b750dcc034c2e676190.md) | 169 | `declaration-track:83d66b750dcc034c2e67619092c00e0b23978ba248b51ec1df54fa02839e4668` |
| 24 | `abbrev` | [Invertible.copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible-copy--ad80ab87b0b9d4eb7d19aab5.md) | 176 | `declaration-track:ad80ab87b0b9d4eb7d19aab51415b0636ba98bc9b550cae457dd35d132ea1a0c` |
| 25 | `def` | [invertibleOfGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertibleofgroup--9143397ac0483a0d96b4c90e.md) | 181 | `declaration-track:9143397ac0483a0d96b4c90e4299edeee3f43d8aba119e1dc0241961f6ef87c7` |
| 26 | `theorem` | [invOf_eq_group_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-eq-group-inv--2e35cb5958184ed9b3656a6f.md) | 185 | `result-track:2e35cb5958184ed9b3656a6f4d7027920e25f62740c5d74744050324c72d622c` |
| 27 | `def` | [invertibleOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertibleone--f17caae82a99ef06de0f53dd.md) | 189 | `declaration-track:f17caae82a99ef06de0f53dde1cda660e98e8093c722d2455a325a8fbf71886c` |
| 28 | `theorem` | [invOf_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-one--991abe02d88d0a35d7c05796.md) | 193 | `result-track:991abe02d88d0a35d7c05796545e901d8a47fc04c55e195b7995633548644a88` |
| 29 | `theorem` | [invOf_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-one--65cb06642ad6aef80dafa1c0.md) | 196 | `result-track:65cb06642ad6aef80dafa1c00690c1ad9c6a95c28cec86f850abf07a3eb10f93` |
| 30 | `instance` | [invertibleInvOf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertibleinvof--80dd1b723687cba720c53cf0.md) | 199 | `declaration-track:80dd1b723687cba720c53cf0e5bc0ab2315b2483f3757dc1e52f98ee80116f8b` |
| 31 | `theorem` | [invOf_invOf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-invof--ae7b99870fd2415bc0617b24.md) | 203 | `result-track:ae7b99870fd2415bc0617b2492643295880928fdd78be59db1efef4227d085f9` |
| 32 | `theorem` | [invOf_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-inj--5bc3c63cc1d461de3ca70595.md) | 207 | `result-track:5bc3c63cc1d461de3ca7059533350842ffdea407d5ac87bed9a1ece5b7e0ef8f` |
| 33 | `def` | [invertibleMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertiblemul--8ce7436a307801914af1cbea.md) | 211 | `declaration-track:8ce7436a307801914af1cbeae275d2dc556ee59f99f3a8f21fa746f241a5e2ae` |
| 34 | `theorem` | [invOf_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul--99d04bdac96bb15f5c5862df.md) | 215 | `result-track:99d04bdac96bb15f5c5862df430564e13aa2b68deee07ded1f1a5ca66eb667dd` |
| 35 | `abbrev` | [Invertible.mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invertible-mul--79e8de52cac47b3d4ac6d18c.md) | 220 | `declaration-track:79e8de52cac47b3d4ac6d18c4f6fec4e2bf10385b9cdeec5435e9fba11b3d86f` |
| 36 | `theorem` | [mul_left_inj_of_invertible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-left-inj-of-invertible--00c07ffb01ae5c189f38490d.md) | 228 | `result-track:00c07ffb01ae5c189f38490d7dfe93db7c70f0a2e5c0b2b2e0b0ea0813a008b2` |
| 37 | `theorem` | [mul_right_inj_of_invertible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-right-inj-of-invertible--34c27bdd21caa150740b5cc4.md) | 232 | `result-track:34c27bdd21caa150740b5cc4cb5d24547634eb551ce0d4cc392f2d97e2a35ec7` |
| 38 | `theorem` | [invOf_mul_eq_iff_eq_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/invof-mul-eq-iff-eq-mul-left--bcacfbe49a43cf55064bdaf7.md) | 235 | `result-track:bcacfbe49a43cf55064bdaf7ece4c67a5169b16cedb146d141afe9a75892efdd` |
| 39 | `theorem` | [mul_left_eq_iff_eq_invOf_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-left-eq-iff-eq-invof-mul--98be9042a2cd88c78d97859e.md) | 238 | `result-track:98be9042a2cd88c78d97859e9bcc70a647b45d0c0ec469214c30549df9b41913` |
| 40 | `theorem` | [mul_invOf_eq_iff_eq_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-invof-eq-iff-eq-mul-right--86b4d591d2d0e2bdd9c87279.md) | 241 | `result-track:86b4d591d2d0e2bdd9c872794691e73d4ce3c787af02f26f268d3a3675ef3246` |
| 41 | `theorem` | [mul_right_eq_iff_eq_mul_invOf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9454dcc8a394e6308e297f8d96b1245f8000868ff1ce44ee3d86c026985b69b9.lean/declarations/mul-right-eq-iff-eq-mul-invof--9847307b801c5fe37fad30b5.md) | 244 | `result-track:9847307b801c5fe37fad30b551020f862f767b4ef521477fb95a0be471b0090f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
