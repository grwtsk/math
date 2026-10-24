# Verification target: GRWTSK.Algebra.Prod.Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa0e0c1703ebb29a751e144aa472a98fe94b4e4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa0e0c1703ebb29a751e144aa472a98fe94b4e4`.

Source path: `GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod--2fee6205d1299a7d9c769df5.md) | 29 | `declaration-track:2fee6205d1299a7d9c769df518e3255beca3025089c2d616fdc5d6492dcce66e` |
| 2 | `theorem` | [coe_prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/coe-prod--2c252f140595988acf2c9d11.md) | 32 | `result-track:2c252f140595988acf2c9d119a378b5a030a7a59425b0e60ea6b0709ca2af70d` |
| 3 | `theorem` | [mem_prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/mem-prod--f585294575b4cc58c3913a9c.md) | 36 | `result-track:f585294575b4cc58c3913a9c149d36f8ada01a88ee23d4e005b762445b59a89e` |
| 4 | `theorem` | [_root_.RingHom.ker_prodMap](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/root-ringhom-ker-prodmap--2d34f442fe6b0ace6561dbb4.md) | 40 | `result-track:2d34f442fe6b0ace6561dbb41724e88692ccc12dd2a52d6b38deb3c621c8cb04` |
| 5 | `theorem` | [prod_top_top](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-top-top--76e1a7fe866dc61b98918213.md) | 45 | `result-track:76e1a7fe866dc61b98918213f32954802dfbe1111e3ce8db9f73bad2e83b62e8` |
| 6 | `theorem` | [prod_bot_bot](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-bot-bot--d95de7b0a144508b9042c79a.md) | 49 | `result-track:d95de7b0a144508b9042c79abb0dedddc55f05496c3d1a930cfff5ca3cef9a86` |
| 7 | `theorem` | [prod_mono](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-mono--d4d1b92e24f7db456ac9d84d.md) | 53 | `result-track:d4d1b92e24f7db456ac9d84d4559178339c78d010c0b8f072d4aaa3ec1c5b670` |
| 8 | `theorem` | [prod_mono_left](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-mono-left--9e52300638037c03b7b7a19f.md) | 57 | `result-track:9e52300638037c03b7b7a19f13be08a90433db8bcdf2c7bfa69f4e7404858422` |
| 9 | `theorem` | [prod_mono_right](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-mono-right--638398b942843f9d845679d5.md) | 60 | `result-track:638398b942843f9d845679d59b81dbba72817c9cf7681c0510bb0914729113c6` |
| 10 | `theorem` | [ideal_prod_eq](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/ideal-prod-eq--9d904193f26783a42cdb251a.md) | 65 | `result-track:9d904193f26783a42cdb251a418433a3bca82417b329bf3961848b4e5b9ed476` |
| 11 | `theorem` | [map_fst_prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/map-fst-prod--31c431ace004bd8e6468a013.md) | 76 | `result-track:31c431ace004bd8e6468a013df0b161ff8e063562499c4b788a098d52b4db078` |
| 12 | `theorem` | [map_snd_prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/map-snd-prod--9c8a187823aec193a6849eae.md) | 85 | `result-track:9c8a187823aec193a6849eaed93327981e35f62f27841348006073a479c67a23` |
| 13 | `theorem` | [map_prodComm_prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/map-prodcomm-prod--b497b1dc275b3be898dc15c1.md) | 94 | `result-track:b497b1dc275b3be898dc15c184d93eba9705f8c6a72d093bd7787703802952d8` |
| 14 | `def` | [idealProdEquiv](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/idealprodequiv--341d4a1549d483c727597a7e.md) | 101 | `declaration-track:341d4a1549d483c727597a7e10b9552f168f1986834fcbef5690f8289f013bcf` |
| 15 | `theorem` | [idealProdEquiv_symm_apply](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/idealprodequiv-symm-apply--d22986e125ea068769f6d3a4.md) | 113 | `result-track:d22986e125ea068769f6d3a488b71f2fa3689e3b1e4edd90cfda2977c4eaafa6` |
| 16 | `theorem` | [span_prod_le](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/span-prod-le--d22b98a155578083ac6faec9.md) | 117 | `result-track:d22b98a155578083ac6faec9459010dbebae3781c12b340e1159395e7e9be9ba` |
| 17 | `theorem` | [span_prod](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/span-prod--209ae76b0f2b34ca164f66cb.md) | 124 | `result-track:209ae76b0f2b34ca164f66cbbe6450071f4befa4fe614e9afda80f8bfdd6b51b` |
| 18 | `theorem` | [prod_inj](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-inj--2bcae43765a73b4eec5c77da.md) | 137 | `result-track:2bcae43765a73b4eec5c77da8c0fc57d88c3023532b2654719a88eba096f3c99` |
| 19 | `theorem` | [prod_eq_bot_iff](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-eq-bot-iff--c5d8d14802419090781af8d7.md) | 142 | `result-track:c5d8d14802419090781af8d779a643628338d2aa950d1a7864adf90cede908b8` |
| 20 | `theorem` | [prod_eq_top_iff](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/prod-eq-top-iff--b1360090d89059e09d18fe5a.md) | 147 | `result-track:b1360090d89059e09d18fe5a964981c307773b6e4dd4d1defe34d86bef07a981` |
| 21 | `theorem` | [isPrime_of_isPrime_prod_top](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/isprime-of-isprime-prod-top--b3afffa27a49ddab8ae51d87.md) | 151 | `result-track:b3afffa27a49ddab8ae51d874b63431f2fef90d952e39248c2d018e83f01299c` |
| 22 | `theorem` | [isPrime_of_isPrime_prod_top'](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/isprime-of-isprime-prod-top--4cccbe6807dff52ec6f37a3e.md) | 163 | `result-track:4cccbe6807dff52ec6f37a3e60eab75dc88c86043b942e3f6efce51514a46f06` |
| 23 | `theorem` | [isPrime_ideal_prod_top](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/isprime-ideal-prod-top--6e8cd345e402ed933c410b6a.md) | 170 | `result-track:6e8cd345e402ed933c410b6a8a7d8eedcf4ee474aa23615eeeef12315d269961` |
| 24 | `theorem` | [isPrime_ideal_prod_top'](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/isprime-ideal-prod-top--5da750c923f56a90df10ca75.md) | 174 | `result-track:5da750c923f56a90df10ca7529e8713bdec8e8f53015d0296fb6d77f505352e7` |
| 25 | `theorem` | [ideal_prod_prime_aux](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/ideal-prod-prime-aux--0ac0351d07370ece45711136.md) | 180 | `result-track:0ac0351d07370ece45711136bc4ab201be2e77e2c16cd43750be4edfff62c13d` |
| 26 | `theorem` | [ideal_prod_prime](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/ideal-prod-prime--12cfb25486e23bb0d8f948fa.md) | 188 | `result-track:12cfb25486e23bb0d8f948fa513eaf13185949690ee80f5c3687a179bfdee898` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean/declarations/instance--8e813af2c366442a1126c48f.md) | 209 | `declaration-track:8e813af2c366442a1126c48ff8dfa7ee9de45ad6cdfeba05716fc3eb325bbc7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
