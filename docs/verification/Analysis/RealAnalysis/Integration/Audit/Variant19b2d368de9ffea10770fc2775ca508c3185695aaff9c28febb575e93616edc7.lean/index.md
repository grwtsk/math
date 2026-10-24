# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Audit.Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1427d8c0bdae23a43e0f564b6d678729c79be625",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1427d8c0bdae23a43e0f564b6d678729c79be625`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/planecode--6e13069ad458fd410cec171e.md) | 35 | `declaration-track:6e13069ad458fd410cec171e0944ed782c9f200a7130bffdac8c523bb058d412` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/encode--6ae72bc7ab3e0804e8918bd9.md) | 42 | `declaration-track:6ae72bc7ab3e0804e8918bd91968dac1993cb7b3810b5a760c47b6b004ef758f` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/interpret--cee4431c3d5c184d3f8d8484.md) | 46 | `declaration-track:cee4431c3d5c184d3f8d8484dbb2b8282c0d1728e328b34d7c896f98f64bea2d` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/supported--3e979883dee419ac7a0e0d97.md) | 50 | `declaration-track:3e979883dee419ac7a0e0d9729c991e8040e67bd7058c4b2fecb595044ff9ead` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/coefficients--0d39e12dc3bc3ab3a91e091d.md) | 53 | `declaration-track:0d39e12dc3bc3ab3a91e091d29efc989479ebb092a5b625d421c6ab7124e4476` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/operation--ddfa1f3eabfac91a8b0f5c6b.md) | 57 | `declaration-track:ddfa1f3eabfac91a8b0f5c6b9e1d2033206bbc44a8e0e2e814e0e6a1e0c4673e` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/move--86f765260ed70bbff00c404c.md) | 62 | `declaration-track:86f765260ed70bbff00c404cc7128ae19d67073efb28228f8781b8dfb266bfbb` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/operation-eq-coefficients--b4f33b69e1ab426e2e95a876.md) | 69 | `result-track:b4f33b69e1ab426e2e95a87663137adae14254c7e2d78f6df91dcfb5490e4511` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/interpret-encode--eb8f02ef287e33209c85b133.md) | 78 | `result-track:eb8f02ef287e33209c85b133de83edca2abaef4a311aff49956bc3b32f13c25b` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/interpret-move--81702d938ceb6e235e33f0f0.md) | 82 | `result-track:81702d938ceb6e235e33f0f0ce40ec4a89e2c19cfce16eee127664af622742ce` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/interpret-move-encode--aff4fc0c322dbc72cda10a91.md) | 88 | `result-track:aff4fc0c322dbc72cda10a9106ac06284f9f0c236cf9e40e2fe9a26aa90db53f` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/quadratic--03c70e74bce017794520bf11.md) | 93 | `declaration-track:03c70e74bce017794520bf11b05797e4bbe85919fe6282728528bebc82fa7235` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/operation-quadratic--78124ad18545453523ead352.md) | 96 | `result-track:78124ad18545453523ead352606e95cfa3490d571c03871f2d353e59089f9c38` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/move-quadratic--01a05d2d5ef7e84bab3a23a9.md) | 104 | `result-track:01a05d2d5ef7e84bab3a23a93b75e79aefabd4595c5bc4b99dc6d966dd41bc17` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/reflection--0f191dff41bd54f065715d20.md) | 109 | `declaration-track:0f191dff41bd54f065715d20896cc5ff97dfe0af747626cb1405302ff68f91e0` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/reflection-sq--537c92ff4d9a178c3e41d0a5.md) | 113 | `result-track:537c92ff4d9a178c3e41d0a51206e9cfbc63bfc9ca763f6d5da907127f78570c` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/reflection-reversal--9a63128e9874ab9543160d27.md) | 117 | `result-track:9a63128e9874ab9543160d276dda78cda8f34f374f5011846e8b695a5bc4d02c` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/operation-inverse--5696bfa1dbda38900631b2ad.md) | 123 | `result-track:5696bfa1dbda38900631b2ada9f3c5d7648099218819106053b6e6968f9c5a8a` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phasereflection--e9ea69e69504fca71734c50a.md) | 130 | `declaration-track:e9ea69e69504fca71734c50a54d1caa71adfaf48c7c025a14a37a7f4ce9a2f87` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phasereflection-sq--2b8febbc000e323f08686f6e.md) | 134 | `result-track:2b8febbc000e323f08686f6e1a0f9144320877834216ca0baa67d27c865138c7` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/coefficients-one--501025820cdc5df9a70ad350.md) | 144 | `result-track:501025820cdc5df9a70ad3508c1af2e10a0b92ee0cebf492f758873ea461c094` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/operation-one--e7ac33334396a4b73afe4e0c.md) | 148 | `result-track:e7ac33334396a4b73afe4e0c805961c735f463f8128cebc9326ad9689732d4e3` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/integralat--f6086577a0de2b18e362817d.md) | 162 | `declaration-track:f6086577a0de2b18e362817d26d4b02667e2b66e74d0925844be1afdabd701a2` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/integralvector--34e7b4758f02f3099beec37f.md) | 166 | `declaration-track:34e7b4758f02f3099beec37f775d9425c05314183a111317052e1c3f40808003` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/operation-integral--df6d99593a27857650aaf39e.md) | 169 | `result-track:df6d99593a27857650aaf39eaa6ecd10130228fe46965c4ef3b2a251bcad05d3` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/integralat-iff-preserves-integral--6bf1015546ff40fcf32e220c.md) | 186 | `result-track:6bf1015546ff40fcf32e220ceeeee13bedc70fcdf97d1fedd102bf721141ba69` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/instance--2aa1c21a085eeb81a8708f0f.md) | 200 | `declaration-track:2aa1c21a085eeb81a8708f0f6b3975230249992cad011cb22ce3deccc980ccd9` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/instance--4db09eb165b7df510440a420.md) | 201 | `declaration-track:4db09eb165b7df510440a42009fc903364973b3f3200c3deaf991e738d6f3f0d` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/coefficients-two-rat--2b2838d97dd43e1c5e500841.md) | 204 | `result-track:2b2838d97dd43e1c5e500841757a1a51754cbbfe6d8bdb0de78c024d90da7cf5` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-two-supported-five--c3271c7d4ad1a4b9b5add608.md) | 209 | `result-track:c3271c7d4ad1a4b9b5add6081f976b6c94840e62c9e76b77e9c7ffbe9aa2cbec` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/coefficients-two-five-diagonal-norm--2cc964ef712c20463913f2f3.md) | 213 | `result-track:2cc964ef712c20463913f2f3dbb5d44668d7656153280feca224098af2b5fe15` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-two-five-not-integral--4461966e046d3a925ac179c7.md) | 224 | `result-track:4461966e046d3a925ac179c7c018de9f85f60f1e16c59e4a6f9850cd894ea091` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-two-not-supported-mod-five--4f6a31ae6cd15cd729650ac6.md) | 231 | `result-track:4f6a31ae6cd15cd729650ac6b0b1b33d97f322b3341eb1737546f82040a9ec56` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-one-not-supported-mod-two--0a1ceb4750c682931ca2d6fc.md) | 236 | `result-track:0a1ceb4750c682931ca2d6fce762b1a27fad132be4ea3332a71142b5c61dd05f` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-one-supported-two--7ee8f8607b89a1c7bb94ca5c.md) | 241 | `result-track:7ee8f8607b89a1c7bb94ca5c9a6397cc46736b27703c46ed3ff9935cdc42e2e0` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-one-two-denominator-norm--48d14884dd8a71cdf311501b.md) | 245 | `result-track:48d14884dd8a71cdf311501bdc3a99bb7edf19b847354def407412b5159c311d` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-one-two-integral--de63928d60ed3f37d57c497c.md) | 250 | `result-track:de63928d60ed3f37d57c497c82e538814207250d51cdde06779dff4c1d9888e1` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-two-five-basis-nonintegral--c539b0be00054da400fc05d6.md) | 257 | `result-track:c539b0be00054da400fc05d6dfc5a816be961f28b11986551b95a85c639a4a7b` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variant19b2d368de9ffea10770fc2775ca508c3185695aaff9c28febb575e93616edc7.lean/declarations/phase-one-two-preserves-integral--508c86b44c6190b6b78b2019.md) | 263 | `result-track:508c86b44c6190b6b78b201968a6a63704358c32c19f0c7c2353894c0616d295` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
