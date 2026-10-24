# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuarticPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45c3117e84bd805c0a0c72020247b6e1c76f56bf",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45c3117e84bd805c0a0c72020247b6e1c76f56bf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [quartic_unit_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/quartic-unit-bounds--cb18ed7787911a9219c8e2f4.md) | 33 | `result-track:cb18ed7787911a9219c8e2f4d617239ac0386fd21a2924dc246bf83adb926634` |
| 2 | `lemma` | [quartic_unit_mean](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/quartic-unit-mean--352f7c33568eb55d3aaee63a.md) | 46 | `result-track:352f7c33568eb55d3aaee63a57340e84185ec10c90145854f59f153d0149172c` |
| 3 | `def` | [realKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/realkernel--ab78edac31c2dba6081c141b.md) | 60 | `declaration-track:ab78edac31c2dba6081c141b419e95edd1713b2f650958f16352baed11cd84a9` |
| 4 | `def` | [kernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel--ae5fc4c9af5d5ed680ef4e81.md) | 63 | `declaration-track:ae5fc4c9af5d5ed680ef4e815ec89b6d2f113bb253b571cac243064f79c2cb4a` |
| 5 | `lemma` | [realKernel_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/realkernel-bounds--ac2c23de5e248f43e249e877.md) | 65 | `result-track:ac2c23de5e248f43e249e877d7155a024659f78ce01e9679a70513b3bbc5689c` |
| 6 | `lemma` | [kernel_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-norm-le--de082db766d2c50f58331a40.md) | 68 | `result-track:de082db766d2c50f58331a4033dbb60021a4a4578f74c24664552b9c5f9b55b3` |
| 7 | `lemma` | [kernel_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-measurable--13380eb31c535cbec6937389.md) | 72 | `result-track:13380eb31c535cbec6937389d38902845bfcf0be22ccc9a9ae9e2755afdd763f` |
| 8 | `lemma` | [kernel_zero_below](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-zero-below--3281ca4ea84865cb1490adb3.md) | 78 | `result-track:3281ca4ea84865cb1490adb3175f85ded097f503a498928889152f480928a88d` |
| 9 | `lemma` | [kernel_nat](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-nat--b54de0bca0aaa90b991d4ee2.md) | 81 | `result-track:b54de0bca0aaa90b991d4ee29a7b893cd185322baf6561b6599d5080506ab9e5` |
| 10 | `lemma` | [kernel_locallyIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-locallyintegrable--a5888f86fdd08ce9794c942c.md) | 89 | `result-track:a5888f86fdd08ce9794c942cc74273177d4d2b77950916d4138c5f65104092a5` |
| 11 | `lemma` | [kernel_isBigO_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-isbigo-top--7c8fcd44a9a6d9ff554366df.md) | 95 | `result-track:7c8fcd44a9a6d9ff554366df03c28e8099c0850424d45c233df3bd9f680c9350` |
| 12 | `lemma` | [kernel_isBigO_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-isbigo-zero--ada0730c3c8529e51b8b07bb.md) | 101 | `result-track:ada0730c3c8529e51b8b07bb7c064e3f60958d635f7c866c9d354f6f01b23b1b` |
| 13 | `def` | [integrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/integrand--b6420281e7cfb638e09888eb.md) | 108 | `declaration-track:b6420281e7cfb638e09888ebec3403b8e9c2dcbb47cba2778b528534d953d7a5` |
| 14 | `def` | [tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/tail--43997da6091624bbe82eb19b.md) | 109 | `declaration-track:43997da6091624bbe82eb19b34ad93e95f65c64ac8b8d8458291cff4ef015049` |
| 15 | `lemma` | [integrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/integrand-integrable--14f2e262fbfb249a8b50880f.md) | 111 | `result-track:14f2e262fbfb249a8b50880f20e01a56b1df4b57b55cd58b1fe3676a764b4b5a` |
| 16 | `theorem` | [tail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/tail-norm-le--39cba4618d04525577efc7d1.md) | 126 | `result-track:39cba4618d04525577efc7d11e7988e3bce754c57e6d5b1b8efeb7d9b887b0ca` |
| 17 | `def` | [cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/cell--bfff5b70119f601d864a348b.md) | 149 | `declaration-track:bfff5b70119f601d864a348b3e9ae1d3c320cf8580db0708a7abb349594fc980` |
| 18 | `lemma` | [cell_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/cell-left--501809818a8ed52b4410f786.md) | 152 | `result-track:501809818a8ed52b4410f7864f8141eccb685c33b9b7f9ecbc02d29835146ad7` |
| 19 | `lemma` | [cell_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/cell-right--8220c4bfaa33acbbbca32b98.md) | 153 | `result-track:8220c4bfaa33acbbbca32b98a58fdd2204432321582275eb4a972a2573200a9b` |
| 20 | `lemma` | [cell_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/cell-hasderivat--fc2046588f0db07a0618048c.md) | 156 | `result-track:fc2046588f0db07a0618048c7e43fc7d321fd8f9645385cd5e55431c7039a17b` |
| 21 | `lemma` | [kernel_eq_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/kernel-eq-cell--825a9cee845f21f34787a5eb.md) | 164 | `result-track:825a9cee845f21f34787a5ebaa28e2d387a6e4f02a85572d9acce523cae915ec` |
| 22 | `lemma` | [cell_integral_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/cell-integral-identity--2f7dfcfa96cbc0cd9947c946.md) | 172 | `result-track:2f7dfcfa96cbc0cd9947c946c6b3355cbe5d08b485c9d539f9856ed8435072f6` |
| 23 | `lemma` | [finite_integral_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/finite-integral-identity--b4f66c50cfa53dda98427d75.md) | 216 | `result-track:b4f66c50cfa53dda98427d75668b113931c037b9b6bb68603a4575bc6f2f37a4` |
| 24 | `theorem` | [value_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/value-identity--c55d2e76025858835e0e694c.md) | 241 | `result-track:c55d2e76025858835e0e694c44824e1f31a69cf7ec236ef7a8adb76fcf50ecb7` |
| 25 | `lemma` | [integer_tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/integer-tail-identity--0d6f8eb9724b0dd36a77598e.md) | 279 | `result-track:0d6f8eb9724b0dd36a77598e52bdd694dc534e39885ab7f627eb49b1400573f4` |
| 26 | `def` | [centeredKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredkernel--a46e28bef7e4c4a591eb24b8.md) | 293 | `declaration-track:a46e28bef7e4c4a591eb24b8f44d1ee6d7785511a7f590ed9784e90f8009b1ff` |
| 27 | `def` | [centeredIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredintegrand--a56dfa3b7180fc4e106da30d.md) | 295 | `declaration-track:a56dfa3b7180fc4e106da30df8aa331c424197b710e6d37ead1cf94e5335124e` |
| 28 | `def` | [centeredTail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredtail--796744b3d8689cc7ef66f1d7.md) | 298 | `declaration-track:796744b3d8689cc7ef66f1d7f91a380156b30b4f4c01d9cc51ad351accb325d9` |
| 29 | `theorem` | [centeredKernel_nat](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredkernel-nat--a7c8f2cb0e4b53caa8a47d92.md) | 300 | `result-track:a7c8f2cb0e4b53caa8a47d922d2872df5dd13a3d41e28741783edf1b0fcaac45` |
| 30 | `lemma` | [centeredKernel_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredkernel-norm-le--ee4e50829de4c54a72d0d850.md) | 303 | `result-track:ee4e50829de4c54a72d0d85088d5b059b7d7de065e8be191999c128879524f95` |
| 31 | `lemma` | [power_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/power-integrable--5892ad4bbff62c74530bbf26.md) | 311 | `result-track:5892ad4bbff62c74530bbf267be44e154167d79ef714f259fbec6ef0b7c7f3b9` |
| 32 | `lemma` | [centeredIntegrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredintegrand-integrable--026823f0393fb0fba77cb6c8.md) | 317 | `result-track:026823f0393fb0fba77cb6c89de9bfb65d7a1014fdd35ba8b199b60154744c90` |
| 33 | `theorem` | [centeredTail_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredtail-eq--f0c1d6158969ddafeec8e802.md) | 326 | `result-track:f0c1d6158969ddafeec8e802b73b4a63d65509e0ad449b4fb54e488de2cc7d13` |
| 34 | `theorem` | [centeredTail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/centeredtail-norm-le--532eea0a1e460fb14bff0b43.md) | 340 | `result-track:532eea0a1e460fb14bff0b43d4f78f3078efc6e2ad5ea7ebfa49c1c55e49a0d8` |
| 35 | `theorem` | [cubic_tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/cubic-tail-identity--7fd1199d2c3493fb0e8c5ef4.md) | 364 | `result-track:7fd1199d2c3493fb0e8c5ef4aa9f6ca76cff63399c99c3ca61eab0214c41d195` |
| 36 | `def` | [reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/reference--59eee5cb079b3bb45c88de2a.md) | 375 | `declaration-track:59eee5cb079b3bb45c88de2afc550cdb356bb6115d5d5d944496dacd3468286a` |
| 37 | `def` | [multiplier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/multiplier--c481629cd052369543cb8dd8.md) | 377 | `declaration-track:c481629cd052369543cb8dd8091eb59decd19ca92e849097d4d02b2b25eb116d` |
| 38 | `theorem` | [reference_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/reference-correction--3fea65447ae2be37e0ff0f58.md) | 379 | `result-track:3fea65447ae2be37e0ff0f58fe5c1381b3e6a633906ff9ab0a0bc216d54b9497` |
| 39 | `theorem` | [source_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/source-identity--53fe23c04646f75943916de0.md) | 384 | `result-track:53fe23c04646f75943916de05af552c1370573340cba055c520d13df31f1e073` |
| 40 | `def` | [finiteModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/finitemodel--7435554e2ff218d6a8073f6b.md) | 393 | `declaration-track:7435554e2ff218d6a8073f6b032237feb6f9dc5cd76dc8e3f4f053b9cf1ec017` |
| 41 | `theorem` | [finiteModel_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/finitemodel-residual--9dba4799dfef3ae055ae2758.md) | 397 | `result-track:9dba4799dfef3ae055ae27583b32a3040e71cf97779744f7191f58052ae7e704` |
| 42 | `theorem` | [finiteModel_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/finitemodel-error--1c035c6c1e1304ea56688efb.md) | 404 | `result-track:1c035c6c1e1304ea56688efb7a4e01e68c7b54d731740934cf4109d56ac2e3d9` |
| 43 | `theorem` | [finiteModel_majorant_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/declarations/finitemodel-majorant-tendsto-zero--ca13b633f6f80ed0b01f4f8e.md) | 412 | `result-track:ca13b633f6f80ed0b01f4f8e07abd6e60a13791754eef532386c3e5dc17483aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
