# Verification target: GRWTSK.NumberTheory.Basic.Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "793bd3d2060d6b433abc66b3c72dac4352af3861",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `793bd3d2060d6b433abc66b3c72dac4352af3861`.

Source path: `GRWTSK/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.GaussSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSum](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum--40b813277349d7a65ec61d2e.md) | 51 | `declaration-track:40b813277349d7a65ec61d2e6d13065dffd1383a232e7e19d526f55d84b96186` |
| 2 | `lemma` | [jacobiSum_comm](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-comm--5844852d71c09ce1b1c63e05.md) | 54 | `result-track:5844852d71c09ce1b1c63e0528918db13389c8ce8345f3711cf5d8fe737c2b33` |
| 3 | `lemma` | [jacobiSum_ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-ringhomcomp--55642a8061a3e276f63201de.md) | 60 | `result-track:55642a8061a3e276f63201deb72e1dda14a0f0ad6401e5fa041cd451c196cc28` |
| 4 | `lemma` | [jacobiSum_eq_sum_sdiff](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-eq-sum-sdiff--d6d582976a42796b942f791a.md) | 77 | `result-track:d6d582976a42796b942f791a2e8da42f11980fddc345918e9acc52894c505afa` |
| 5 | `lemma` | [jacobiSum_eq_aux](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-eq-aux--c0899e668e70bcf922b2b270.md) | 85 | `result-track:c0899e668e70bcf922b2b270731e746d489d1ca88247ba4cefdf9ab755d8bb09` |
| 6 | `theorem` | [jacobiSum_trivial_trivial](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-trivial-trivial--3c120de8c47a2cac9b0aa5dc.md) | 107 | `result-track:3c120de8c47a2cac9b0aa5dc99bfa92a2d1235dc459e3e73dff3496091b430e9` |
| 7 | `theorem` | [jacobiSum_one_one](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-one-one--137375d1096694043d57048c.md) | 124 | `result-track:137375d1096694043d57048c7ddb084e71de88fe97a12a8f720c9963ab54bb42` |
| 8 | `theorem` | [jacobiSum_one_nontrivial](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-one-nontrivial--414ba1cf8f8e706724988cf2.md) | 130 | `result-track:414ba1cf8f8e706724988cf207ecf54271b561643edbc62fd9701079a0f48a8b` |
| 9 | `theorem` | [jacobiSum_nontrivial_inv](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-nontrivial-inv--49bbfebd87c4d7852163656f.md) | 143 | `result-track:49bbfebd87c4d7852163656fea04d56055de4327c2f3c710fa5a46f7a12ed494` |
| 10 | `theorem` | [jacobiSum_mul_nontrivial](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-mul-nontrivial--f3aabe3a1a7c0ef4126f3089.md) | 169 | `result-track:f3aabe3a1a7c0ef4126f30892faa7ba35d30b81ceceffce5d5852a1b985ff3ba` |
| 11 | `theorem` | [jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-eq-gausssum-mul-gausssum-div-gausssum--13d44973c04426a8a253dc8a.md) | 197 | `result-track:13d44973c04426a8a253dc8adcd6ed5e0a9470b6be79c9cc413e4d9be0a70c0d` |
| 12 | `lemma` | [jacobiSum_mul_jacobiSum_inv](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-mul-jacobisum-inv--9092569f8e4e9f398acedc62.md) | 207 | `result-track:9092569f8e4e9f398acedc622ee34ca26ed629aea647ee0b4f2a23c46333404b` |
| 13 | `lemma` | [jacobiSum_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/jacobisum-mem-algebraadjoin-of-pow-eq-one--e97a874f2022faed405e235b.md) | 247 | `result-track:e97a874f2022faed405e235b658248f3f53547e275fc5cd3f1a04464308eb6e8` |
| 14 | `lemma` | [MulChar.exists_apply_sub_one_eq_mul_sub_one](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/mulchar-exists-apply-sub-one-eq-mul-sub-one--0164e286d20ea466c7aca858.md) | 256 | `result-track:0164e286d20ea466c7aca858bec25d1f1a3c55e381c06edf6cfe452277139dd9` |
| 15 | `lemma` | [MulChar.exists_apply_sub_one_mul_apply_sub_one](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/mulchar-exists-apply-sub-one-mul-apply-sub-one--d7e397d54eab138666ab3574.md) | 264 | `result-track:d7e397d54eab138666ab35743e296a26bc2960e3681bd1c5f40af86e40206a69` |
| 16 | `lemma` | [exists_jacobiSum_eq_neg_one_add](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/exists-jacobisum-eq-neg-one-add--981118ea0e0a64d32b7694aa.md) | 281 | `result-track:981118ea0e0a64d32b7694aa5d2e0806cd8ebdb9d5354668ab3988a452063d93` |
| 17 | `lemma` | [gaussSum_pow_eq_prod_jacobiSum_aux](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/gausssum-pow-eq-prod-jacobisum-aux--efc4d3130220666116e06d81.md) | 316 | `result-track:efc4d3130220666116e06d81c30ef346b4cf2bf637ebeb231e24ba37dfe61b19` |
| 18 | `theorem` | [gaussSum_pow_eq_prod_jacobiSum](../../../../mathematics/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/declarations/gausssum-pow-eq-prod-jacobisum--168b622c0e35bd3083855b3f.md) | 334 | `result-track:168b622c0e35bd3083855b3f48b1401b306e9be68dff158e9116e004141c38f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
