# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c14d8f72f5056142e93c73729d30d16ad338386d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c14d8f72f5056142e93c73729d30d16ad338386d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.TrivSqZeroExt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fst_expSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/fst-expseries--993479e79be85b3c15aba932.md) | 68 | `result-track:993479e79be85b3c15aba93259da67ba0fb82a499636d7af74fefde319a33b86` |
| 2 | `theorem` | [snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/snd-expseries-of-smul-comm--57abd14a38f2b92d40b87e3c.md) | 81 | `result-track:57abd14a38f2b92d40b87e3c9ecc99584e8c5decdcc4c1470f8ca48aaad7df0e` |
| 3 | `theorem` | [hasSum_snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/hassum-snd-expseries-of-smul-comm--5c77e60ce6cc3a8f25661a08.md) | 91 | `result-track:5c77e60ce6cc3a8f25661a085fe1aeb87a6f7182efe846ad634c95f76dad0d8c` |
| 4 | `theorem` | [hasSum_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/hassum-expseries-of-smul-comm--6794a0084696e4ee842bd558.md) | 104 | `result-track:6794a0084696e4ee842bd558f27975869b45093e974905da2a8d2dd7f6033720` |
| 5 | `theorem` | [exp_def_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/exp-def-of-smul-comm--8bc174781b4ca2ead987c583.md) | 115 | `result-track:8bc174781b4ca2ead987c58369758043d7d900e0f2741284f339f61982811ccf` |
| 6 | `theorem` | [exp_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/exp-inl--2d9c585c0598263eaa83725e.md) | 128 | `result-track:2d9c585c0598263eaa83725e7e2df38a26bd259dc432046856c720f51ef6abea` |
| 7 | `theorem` | [exp_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/exp-inr--9787eee34d0179b94aad0f02.md) | 133 | `result-track:9787eee34d0179b94aad0f0259cbb07515725bb67571fed7be3d557e9979082f` |
| 8 | `theorem` | [exp_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/exp-def--530779f6e54791a15fcc400f.md) | 148 | `result-track:530779f6e54791a15fcc400f68a20052fa9c508447e42c96a9f3a36b69a44e9d` |
| 9 | `theorem` | [fst_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/fst-exp--0e3955fe2ffbb4362c508848.md) | 152 | `result-track:0e3955fe2ffbb4362c508848679a5c5662860c1ee34220bb3bd0801155b8ca95` |
| 10 | `theorem` | [snd_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/snd-exp--fafb7664468e1c5eaf457186.md) | 156 | `result-track:fafb7664468e1c5eaf4571867c3f6ee3221e2b95927673d6298c9bf0218d26fd` |
| 11 | `theorem` | [eq_smul_exp_of_invertible](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/eq-smul-exp-of-invertible--0206954fef6f2fe75867124c.md) | 160 | `result-track:0206954fef6f2fe75867124c9dbe3526434073b25e3a99143fbc46cd13cb3ffc` |
| 12 | `theorem` | [eq_smul_exp_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/eq-smul-exp-of-ne-zero--d7d60b351c40c3ee0b746e2a.md) | 178 | `result-track:d7d60b351c40c3ee0b746e2a247e0c628ad53cbfafc1f5b532047a3105a02ef7` |
| 13 | `instance` | [instL1SeminormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1seminormedaddcommgroup--89d94b3bfbec06550a860364.md) | 198 | `declaration-track:89d94b3bfbec06550a860364d4ede111503c3b80ce214e43b3dd676f70a3bf2c` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/example--d637950e8be9958a26adcc22.md) | 201 | `declaration-track:d637950e8be9958a26adcc2284ec61fd7e92811f09cc777bd2bf0f5b65915abc` |
| 15 | `theorem` | [norm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/norm-def--2879c56f92d5419c1a1037db.md) | 205 | `result-track:2879c56f92d5419c1a1037dbc38f0c081a6307de73c14c1f06b4faac52f9837b` |
| 16 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/nnnorm-def--3d4fb8b7aeb026b7e995dc5d.md) | 210 | `result-track:3d4fb8b7aeb026b7e995dc5dd7bedb61aaf46acf73f82d98af64f93d044a48a3` |
| 17 | `theorem` | [norm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/norm-inl--75736ed03677d91b8041eda8.md) | 213 | `result-track:75736ed03677d91b8041eda8ba1ad68e5f389bf5235cba409a9d926660f23a43` |
| 18 | `theorem` | [norm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/norm-inr--5be078c3fa42f75f41235eee.md) | 214 | `result-track:5be078c3fa42f75f41235eeef1a91a1c68a32f0f86b4a5dd70256d323327d263` |
| 19 | `theorem` | [nnnorm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/nnnorm-inl--1a8095525d9d654e1ae497fc.md) | 216 | `result-track:1a8095525d9d654e1ae497fc7f948b1cb5ae119564552b010464030ac8f22152` |
| 20 | `theorem` | [nnnorm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/nnnorm-inr--59508c98f8dbd6bf1a278082.md) | 217 | `result-track:59508c98f8dbd6bf1a278082c419a14c93374c99a8eb08ee456614b0df42f3a6` |
| 21 | `instance` | [instL1SeminormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1seminormedring--207416472e633f8e5c511c66.md) | 222 | `declaration-track:207416472e633f8e5c511c66124e29d94f91ec7cbaffd8e46f4ed2d4ffc36478` |
| 22 | `instance` | [instL1IsBoundedSMul](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1isboundedsmul--d58a7c0bafe8bbcad1c1d4c8.md) | 239 | `declaration-track:d58a7c0bafe8bbcad1c1d4c868bc2f5388585a12ddfef89039b573f68280b3aa` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instance--0354bfec93d416006b4e7d9a.md) | 242 | `declaration-track:0354bfec93d416006b4e7d9a859262e325aa65ea4402c07da446149d41cb0c3c` |
| 24 | `instance` | [instL1SeminormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1seminormedcommring--1159fc385b58637b258e3534.md) | 254 | `declaration-track:1159fc385b58637b258e35347543604146999c793caa2d5549864c7d62bc098e` |
| 25 | `instance` | [instL1NormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1normedaddcommgroup--d344496f0dd4363f36946628.md) | 269 | `declaration-track:d344496f0dd4363f36946628b38b270a648eea8f7f4b607f171fb2f34c22edcc` |
| 26 | `instance` | [instL1NormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1normedring--dce29ab696dd85c7b869b0f0.md) | 272 | `declaration-track:dce29ab696dd85c7b869b0f0d2f7656787b38d4a49f6fb8a62358d67b6c0b76c` |
| 27 | `instance` | [instL1NormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1normedcommring--52a317cefbfcb22837946941.md) | 284 | `declaration-track:52a317cefbfcb228379469412b13a507c71253905bd742df0bb7f5562da8bafb` |
| 28 | `instance` | [instL1NormedSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1normedspace--4798bf9f47a55e60918dc5ac.md) | 297 | `declaration-track:4798bf9f47a55e60918dc5acce9361eacf0ba5c835ea629a8071344d1fc1937a` |
| 29 | `instance` | [instL1NormedAlgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/instl1normedalgebra--bd310fdcd2801d2f312b22c5.md) | 300 | `declaration-track:bd310fdcd2801d2f312b22c5afc69ffa2929f0e85e4beb9a0828476ce4d7c7dd` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/declarations/example--e722bfdc44491af322bd607a.md) | 318 | `declaration-track:e722bfdc44491af322bd607a984325b5fbb7e84d034545b5dbb69608bc91143b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
