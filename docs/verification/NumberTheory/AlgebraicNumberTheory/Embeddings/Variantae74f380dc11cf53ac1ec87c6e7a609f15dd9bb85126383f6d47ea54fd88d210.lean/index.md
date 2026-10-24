# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Embeddings.Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450de2dcff5f661cf876af47b9f13f72c6a045e5",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450de2dcff5f661cf876af47b9f13f72c6a045e5`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Complex` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/macro-rules--c1d5337528a5e66709427fa8.md) | 43 | `declaration-track:c1d5337528a5e66709427fa841b05a4ded7ca8788fcafa49e27b6c864714074d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/instance--79504eaf9a947bc8633f9c0f.md) | 58 | `declaration-track:79504eaf9a947bc8633f9c0fd877365f2c48bc4840dc7a6fe0ddf9b4088b009f` |
| 3 | `theorem` | [card](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/card--69277c452a5d996d139fd758.md) | 64 | `result-track:69277c452a5d996d139fd758334d1a9bcb0d2033bb6ec267298c6f3788503d19` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/instance--3685105f2cd5b71bab28c88a.md) | 68 | `declaration-track:3685105f2cd5b71bab28c88ada4953b9df8d3fafebfb1dcbc7e9eba893202fd3` |
| 5 | `theorem` | [range_eval_eq_rootSet_minpoly](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/range-eval-eq-rootset-minpoly--a2ce6fd316c3ce8668ccbdb1.md) | 83 | `result-track:a2ce6fd316c3ce8668ccbdb1cd79048bacbb0e235a0d0aff18fd416546d151eb` |
| 6 | `theorem` | [coeff_bdd_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/coeff-bdd-of-norm-le--9265cfc781e9a579bc96ba30.md) | 100 | `result-track:9265cfc781e9a579bc96ba306df43d8bf8a35da60e0320e30b5e2a8a7d276342` |
| 7 | `theorem` | [finite_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/finite-of-norm-le--71a5b00c78fb30a85a03c669.md) | 116 | `result-track:71a5b00c78fb30a85a03c669b71c77c84f290f7a68f2e05212d420b6c6f57a44` |
| 8 | `theorem` | [pow_eq_one_of_norm_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/pow-eq-one-of-norm-eq-one--eb7d20234ad8a924e3519d82.md) | 130 | `result-track:eb7d20234ad8a924e3519d8294648e830bcd498ff98c6f2e6d2467faf63ca842` |
| 9 | `def` | [NumberField.place](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/numberfield-place--3ce5f97f5a66cc525d5ffe1c.md) | 154 | `declaration-track:3ce5f97f5a66cc525d5ffe1c479985016411427efd4d2c0e2776d4a39d123f16` |
| 10 | `theorem` | [NumberField.place_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/numberfield-place-apply--5c6e50ecab7597da3f2650e9.md) | 159 | `result-track:5c6e50ecab7597da3f2650e9a065d4207665700b824df2e210ecc1643c08bb3d` |
| 11 | `def` | [conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/conjugate--61f6331932a407993b763154.md) | 174 | `declaration-track:61f6331932a407993b7631541d5f755137b0b8ed58f5a8667cffbf5ea017606f` |
| 12 | `theorem` | [conjugate_coe_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/conjugate-coe-eq--16c13409b5a647603d2b2b7b.md) | 178 | `result-track:16c13409b5a647603d2b2b7bc11941d575fede60e5dd7dea4c6eaa869ea735c6` |
| 13 | `theorem` | [place_conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/place-conjugate--e9b1d7329bf8d5efcf3f6b81.md) | 181 | `result-track:e9b1d7329bf8d5efcf3f6b81e2523f9a677c1d27ce03d6858df3600786941602` |
| 14 | `def` | [IsReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal--81274061a81f76dce36bd839.md) | 187 | `declaration-track:81274061a81f76dce36bd8399df2eba40186153ff3b1a16153c3ca8f7fea039c` |
| 15 | `theorem` | [isReal_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-iff--8a767c357606de38bcd35876.md) | 190 | `result-track:8a767c357606de38bcd35876d9ac4c45243d12c02fb77713c1386419ab8ec1a2` |
| 16 | `theorem` | [isReal_conjugate_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-conjugate-iff--2978d81d132d5350c366c606.md) | 193 | `result-track:2978d81d132d5350c366c6061ad4781ea74addeb1ceb2c25e08595cf9729847d` |
| 17 | `def` | [IsReal.embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-embedding--30cc267af7958c1d27dbcb27.md) | 198 | `declaration-track:30cc267af7958c1d27dbcb27dfdd2626af5d6d8045f84253ebc24486ac407660` |
| 18 | `theorem` | [IsReal.coe_embedding_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-coe-embedding-apply--24d2a4670ffbe90d170cfa36.md) | 209 | `result-track:24d2a4670ffbe90d170cfa36605e42b3e125f3334729fa506f7ec05303b0274b` |
| 19 | `def` | [NumberField.InfinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/numberfield-infiniteplace--07a31bfc2d28bb0256f65a2d.md) | 226 | `declaration-track:07a31bfc2d28bb0256f65a2d72b45fcd0ea26e25c22a0aa049f529982b714480` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/instance--695d88f91c2c2e4df47e709d.md) | 229 | `declaration-track:695d88f91c2c2e4df47e709d2f8726af5f703fbe7699f5a58de621f08537e4ca` |
| 21 | `def` | [NumberField.InfinitePlace.mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/numberfield-infiniteplace-mk--e1ca91eb81c0560d35932128.md) | 234 | `declaration-track:e1ca91eb81c0560d3593212896968075c330cd525b1d9d3442bec9a9ae33a311` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/instance--3a5b5a07632a422849fd2b4c.md) | 242 | `declaration-track:3a5b5a07632a422849fd2b4c0e13a94fce65fe152ba67b51b4dec12a4847087e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/instance--44c0d2f18a2ac04d2429b508.md) | 246 | `declaration-track:44c0d2f18a2ac04d2429b5087685025a8d82ac324fa0acc36ec8f67e1e547209` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/instance--3daab62c459c108926e3e049.md) | 253 | `declaration-track:3daab62c459c108926e3e0496e6ebb90a0bcb2d4e28a4527061f63f5f4697057` |
| 25 | `theorem` | [apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/apply--7a1ab23d184192f3e369ebba.md) | 259 | `result-track:7a1ab23d184192f3e369ebba4e33289068ff880690305cd473e2559bd90fd4fe` |
| 26 | `def` | [embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/embedding--90be70bd75b889084e971c62.md) | 263 | `declaration-track:90be70bd75b889084e971c622bbe4c378573fdd5406627e229737d7a21ffcf3e` |
| 27 | `theorem` | [mk_embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mk-embedding--84748ebe532e7f9799fed9f3.md) | 267 | `result-track:84748ebe532e7f9799fed9f3287dae2b5eed0755207f027f0571332529cb16a2` |
| 28 | `theorem` | [mk_conjugate_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mk-conjugate-eq--d62b75d9b3036001fa59de2f.md) | 271 | `result-track:d62b75d9b3036001fa59de2fa419632548e514ce6f698b00d2b87dcc63ddd8e3` |
| 29 | `theorem` | [norm_embedding_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/norm-embedding-eq--7e4e1c2b4570b396db35538c.md) | 276 | `result-track:7e4e1c2b4570b396db35538ca1501b314117ae9f5d5d64ad84027c2d96c37d0d` |
| 30 | `theorem` | [eq_iff_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/eq-iff-eq--537f4f407ef6a3e9c0a5386e.md) | 281 | `result-track:537f4f407ef6a3e9c0a5386e2ffd628e9a5e37c58a6282e2bd4d38f915703fef` |
| 31 | `theorem` | [le_iff_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/le-iff-le--d1b2ef342546b61ddd5d89fe.md) | 285 | `result-track:d1b2ef342546b61ddd5d89fee3ec66bca8ff4701f670a0613d15cbf40b11973e` |
| 32 | `theorem` | [pos_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/pos-iff--0129f477686855cd88fcbdc6.md) | 289 | `result-track:0129f477686855cd88fcbdc6006160d870989fe36e95cf54355f6f30d73ca591` |
| 33 | `theorem` | [mk_eq_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mk-eq-iff--5fb4fa267b7c34584e87c532.md) | 293 | `result-track:5fb4fa267b7c34584e87c53289b1a4d3c60ee6bca79f87443fd86dc48ae91e5b` |
| 34 | `def` | [IsReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal--ebe66c905b39faa36dd5015e.md) | 328 | `declaration-track:ebe66c905b39faa36dd5015e6ad48974b6c8bdb5639d116652b852c071f646ed` |
| 35 | `def` | [IsComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/iscomplex--e0943a55475dbc7e14dad963.md) | 332 | `declaration-track:e0943a55475dbc7e14dad96352411550abe499084d889c366fd009f9489d52fb` |
| 36 | `theorem` | [embedding_mk_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/embedding-mk-eq--ac0d62d39ae9246cda0d8c73.md) | 335 | `result-track:ac0d62d39ae9246cda0d8c73bea283cd05d101dba6a419d88393f3a2c4ccf693` |
| 37 | `theorem` | [embedding_mk_eq_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/embedding-mk-eq-of-isreal--4a34af0e4e2b833c4bf1b616.md) | 340 | `result-track:4a34af0e4e2b833c4bf1b616ef884b679fdfb0d10050a50e26212bfa1c60b1bb` |
| 38 | `theorem` | [isReal_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-iff--6b1867b8dc93c40a06950664.md) | 346 | `result-track:6b1867b8dc93c40a06950664c28a6120aa8e563f8edf4cc7e1102bf8a5188d57` |
| 39 | `theorem` | [isComplex_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/iscomplex-iff--814718e3ca4d0cf52a03d010.md) | 353 | `result-track:814718e3ca4d0cf52a03d010d6ef6d4e80579281f931735699075bc04a90ee79` |
| 40 | `theorem` | [not_isReal_iff_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/not-isreal-iff-iscomplex--a9505621639add79af5d198f.md) | 364 | `result-track:a9505621639add79af5d198fad7d9e5574afa5969e902921c5e41b3aca9c10c7` |
| 41 | `theorem` | [isReal_or_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-or-iscomplex--11a76c0a28cb66d5512651a1.md) | 368 | `result-track:11a76c0a28cb66d5512651a16ec7711af9c10a30244f31ed9b7a0af8dc5ef025` |
| 42 | `def` | [embedding_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/embedding-of-isreal--d79cc639d0ae08a033ebea0a.md) | 373 | `declaration-track:d79cc639d0ae08a033ebea0ab8161c0b6d452385d2866cbab6e31e6cd9496a3c` |
| 43 | `theorem` | [embedding_of_isReal_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/embedding-of-isreal-apply--13e0c0153439ab8f9f092baa.md) | 378 | `result-track:13e0c0153439ab8f9f092baaafaefdf612fe25ed365253f3a9f6163fa2bc20f0` |
| 44 | `theorem` | [isReal_of_mk_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/isreal-of-mk-isreal--17d298a7afc535c1ad636a9f.md) | 383 | `result-track:17d298a7afc535c1ad636a9f013431925d1a772a97edc0631c8fc53c7ee91601` |
| 45 | `theorem` | [not_isReal_of_mk_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/not-isreal-of-mk-iscomplex--99e7577270c94649e5680813.md) | 390 | `result-track:99e7577270c94649e568081383b606f0e7cde036a2c8293ed67adf59f428ba1a` |
| 46 | `def` | [mult](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mult--615a187e40867035ec8bcf5c.md) | 398 | `declaration-track:615a187e40867035ec8bcf5c52a7392734e996d231e8a7675612f9cf9952cc2c` |
| 47 | `theorem` | [card_filter_mk_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/card-filter-mk-eq--8d71d17a204eeef4cac271dc.md) | 400 | `result-track:8d71d17a204eeef4cac271dc7f91e829a941295d22bd74493ac83e6a8ad750c6` |
| 48 | `def` | [mkReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mkreal--1d5b42c316b698a188e70c60.md) | 415 | `declaration-track:1d5b42c316b698a188e70c60bca5e3877615986d332dc23e208399d298bb5f85` |
| 49 | `def` | [mkComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mkcomplex--bd12ae69316d86d1a61c26b5.md) | 424 | `declaration-track:bd12ae69316d86d1a61c26b599dee30d69aba81c7c73877e98c3a972e3aecd16` |
| 50 | `theorem` | [mkReal_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mkreal-coe--9b48db03a5320cba54687095.md) | 430 | `result-track:9b48db03a5320cba54687095839de2c42b78fec3d5e745222798e1452c911885` |
| 51 | `theorem` | [mkComplex_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/mkcomplex-coe--4e84d6c25a5cabb058fd2734.md) | 435 | `result-track:4e84d6c25a5cabb058fd2734df31b58046ea3b921c760234670dba91bbd90999` |
| 52 | `instance` | [NumberField.InfinitePlace.fintype](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/numberfield-infiniteplace-fintype--1f59e3bb85467154a1eb5381.md) | 441 | `declaration-track:1f59e3bb85467154a1eb538143b23eb1a4baa67e7dd26497e0920de756522960` |
| 53 | `theorem` | [prod_eq_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/prod-eq-abs-norm--ce58c8153c5a09d618e7a7d6.md) | 449 | `result-track:ce58c8153c5a09d618e7a7d68be38654d7f0aa2dd18ea0565db09cf503eaea71` |
| 54 | `theorem` | [card_real_embeddings](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/card-real-embeddings--cd807f48b68acf76739a6112.md) | 466 | `result-track:cd807f48b68acf76739a6112d2148e735464c7df239e0f1a3dab6316f99941d2` |
| 55 | `theorem` | [card_complex_embeddings](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/card-complex-embeddings--e32d1114b99ef2be5db1af1a.md) | 471 | `result-track:e32d1114b99ef2be5db1af1a24b951140ee43e28911fc6d7a079a659e42b4af0` |
| 56 | `theorem` | [card_add_two_mul_card_eq_rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantae74f380dc11cf53ac1ec87c6e7a609f15dd9bb85126383f6d47ea54fd88d210.lean/declarations/card-add-two-mul-card-eq-rank--50d6b8a2fcea5285fdc9c995.md) | 490 | `result-track:50d6b8a2fcea5285fdc9c9959303b95d6b6b7e4f5957ad4d8ede83df7c400307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
