# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Basic.Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8763115e603819c0ad349ec77bf287c998bb04d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8763115e603819c0ad349ec77bf287c998bb04d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondexpL1` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpUnexpander](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexpunexpander--9d596bb2751d673e6f143c58.md) | 107 | `declaration-track:9d596bb2751d673e6f143c58b0bb11afa31f71bc058a0d0199eb80125dc1ed39` |
| 2 | `theorem` | [condExp_of_not_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-of-not-le--5eeae8de2ae0b6664c7e533b.md) | 118 | `result-track:5eeae8de2ae0b6664c7e533bc736ed09e9b7b982bfadb4509098fa272f5271a9` |
| 3 | `theorem` | [condExp_of_not_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-of-not-sigmafinite--af5bb71675158f5c10b8cf0e.md) | 122 | `result-track:af5bb71675158f5c10b8cf0eed087318957ce2a24cde6ed2c1922ce33da71cc5` |
| 4 | `theorem` | [condExp_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-of-sigmafinite--65640c8a8e2518cad4adb37e.md) | 128 | `result-track:65640c8a8e2518cad4adb37ec93157c0c6c528d4d0de3190c94dad1443bf62a5` |
| 5 | `theorem` | [condExp_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-of-stronglymeasurable--283a788d4e6c24b7924b1fe7.md) | 142 | `result-track:283a788d4e6c24b7924b1fe7afcf1b59a0e3c3a42b1c7396120596a85d9997a9` |
| 6 | `theorem` | [condExp_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-const--d9909e663eb74af6336617c8.md) | 150 | `result-track:d9909e663eb74af6336617c84725f363cacb4436d1a96cc7ea441f66e857d22a` |
| 7 | `theorem` | [condExp_ae_eq_condExpL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-ae-eq-condexpl1--c0a8c3fa9ec8ffde776b7bab.md) | 155 | `result-track:c0a8c3fa9ec8ffde776b7bab3be0fc675b3a7e1055609608e9ce8a18e50fd887` |
| 8 | `theorem` | [condExp_ae_eq_condExpL1CLM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-ae-eq-condexpl1clm--95a6a5aedf65f2b07b9b8723.md) | 170 | `result-track:95a6a5aedf65f2b07b9b87232c8e6081a6dfc454ba7e743d9a14f710a6fac906` |
| 9 | `theorem` | [condExp_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-of-not-integrable--970c14420d58f177d64fb80a.md) | 177 | `result-track:970c14420d58f177d64fb80ad4189215c9741eff96a3ab86a2bba2070d6defa5` |
| 10 | `theorem` | [condExp_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-zero--40f59811c2e5f29f006acf15.md) | 188 | `result-track:40f59811c2e5f29f006acf15c201317308af7c4e9da0a86c4570b04b0dcf5773` |
| 11 | `theorem` | [stronglyMeasurable_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/stronglymeasurable-condexp--05d05389edc4b53140e9dc0a.md) | 197 | `result-track:05d05389edc4b53140e9dc0a422318545651ecb12d17a5fbd56bf1c8c1c77fa9` |
| 12 | `theorem` | [condExp_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-congr-ae--a066f82947087a58102530da.md) | 210 | `result-track:a066f82947087a58102530da551def7c0a9a39e95b47a33ebe87e8fc35cbe89d` |
| 13 | `lemma` | [condExp_congr_ae_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-congr-ae-trim--339998ba634c06d26d2cc2af.md) | 221 | `result-track:339998ba634c06d26d2cc2af373363b97af8544038e1b540f5bb0384acb5554a` |
| 14 | `theorem` | [condExp_of_aestronglyMeasurable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-of-aestronglymeasurable--c2ed106558e884694b1273bc.md) | 226 | `result-track:c2ed106558e884694b1273bc4c9d87720cb00aea58d1251cd2506ea2e9a77e0c` |
| 15 | `theorem` | [integrable_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/integrable-condexp--ae5a1975b0d13475407355a6.md) | 236 | `result-track:ae5a1975b0d13475407355a62fa4128a4b41d8630595eb7aea62d9717016bd35` |
| 16 | `theorem` | [setIntegral_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/setintegral-condexp--971450a24dd938548c92c9aa.md) | 247 | `result-track:971450a24dd938548c92c9aa094530d636196164d967117408c84fb38c661c4e` |
| 17 | `theorem` | [integral_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/integral-condexp--73af5e3f39181203e6510e05.md) | 254 | `result-track:73af5e3f39181203e6510e0598dda3220a5e3d62e55bbc2231e6c4accef85522` |
| 18 | `theorem` | [integral_condExp_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/integral-condexp-indicator--9bafde791f3fe84a88297b24.md) | 265 | `result-track:9bafde791f3fe84a88297b24956357a75a65c342907e1af60a908631974a9626` |
| 19 | `theorem` | [ae_eq_condExp_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/ae-eq-condexp-of-forall-setintegral-eq--9db36df55448598b49f748c6.md) | 275 | `result-track:9db36df55448598b49f748c69f20bf466affe7bd658c24ab07e32a24979e148f` |
| 20 | `theorem` | [condExp_bot'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-bot--9825d72c8be19fd4baa95e1a.md) | 288 | `result-track:9825d72c8be19fd4baa95e1a5e91afee8b3b39ad229f03df899894130d4babbf` |
| 21 | `theorem` | [condExp_bot_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-bot-ae-eq--5cf498d7f9f3b26471b12e84.md) | 308 | `result-track:5cf498d7f9f3b26471b12e84d6c2a29803cd721b85e04db5e1bdc95712f937c6` |
| 22 | `theorem` | [condExp_bot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-bot--3bdca0d94b26fef6f2e530e2.md) | 316 | `result-track:3bdca0d94b26fef6f2e530e2253a9776ebf430d2b70e3aeff225bfe2e3537ace` |
| 23 | `theorem` | [condExp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-add--ac35259b7a0852387fc0d7d6.md) | 322 | `result-track:ac35259b7a0852387fc0d7d666b5c1c6caec8b109664355eb14ae0f525faa278` |
| 24 | `theorem` | [condExp_finset_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-finset-sum--98a143274cfe8187d54cc35f.md) | 335 | `result-track:98a143274cfe8187d54cc35f5339c8dd3688c77a91cb4014b68657ee56337d08` |
| 25 | `theorem` | [condExp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-smul--eaf904454f8f17c121c83717.md) | 349 | `result-track:eaf904454f8f17c121c8371700e963e8d940cc33e9acdb857522620ae77a1922` |
| 26 | `theorem` | [condExp_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-neg--7afdbef3fac770da3e9a510b.md) | 363 | `result-track:7afdbef3fac770da3e9a510b40d742500a01ae4ba21de46164e972a9ad4817c6` |
| 27 | `theorem` | [condExp_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-sub--874992ea8a84450a9ea465e8.md) | 371 | `result-track:874992ea8a84450a9ea465e80a6629080138b67562c11f9db36196e4100e862a` |
| 28 | `theorem` | [condExp_condExp_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-condexp-of-le--2e1a925fa39ca0ad91a4dfc0.md) | 382 | `result-track:2e1a925fa39ca0ad91a4dfc0535827bf8528fc13a2b0d841101541a17f3ea6ba` |
| 29 | `lemma` | [MemLp.condExpL2_ae_eq_condExp'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/memlp-condexpl2-ae-eq-condexp--02b9ee30e84c1c0024d1de74.md) | 401 | `result-track:02b9ee30e84c1c0024d1de748de7dce5e2385b4a6541e36e4f20671a4dbe27e8` |
| 30 | `lemma` | [MemLp.condExpL2_ae_eq_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/memlp-condexpl2-ae-eq-condexp--fcbe165b95038561e5794eb6.md) | 413 | `result-track:fcbe165b95038561e5794eb634c66f70c23cfbc7d68d69d387e93caa0d7b0789` |
| 31 | `lemma` | [eLpNorm_condExp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/elpnorm-condexp-le--b6a9d16202d8dfd0c7879cf7.md) | 426 | `result-track:b6a9d16202d8dfd0c7879cf71c62db1127976d9bacb4809415864f76af66f355` |
| 32 | `lemma` | [MemLp.condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/memlp-condexp--bc67e2a9c5b36e20ba803d3e.md) | 442 | `result-track:bc67e2a9c5b36e20ba803d3e708cd9a8a80e6aded62521bc88838fa5a390f283` |
| 33 | `lemma` | [condExp_ofNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-ofnat--3262f2077e019c5fc4d9780d.md) | 458 | `result-track:3262f2077e019c5fc4d9780d8d6ffc73025070d6c38c386d344c780178df8b86` |
| 34 | `theorem` | [tendsto_condExpL1_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/tendsto-condexpl1-of-dominated-convergence--566a9789b2d54baf1d3fa122.md) | 470 | `result-track:566a9789b2d54baf1d3fa122cbfbb0473c0cee9cea05b486843599121ef4f837` |
| 35 | `theorem` | [tendsto_condExp_unique](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/tendsto-condexp-unique--01eaada0fc505b2d30551ec3.md) | 484 | `result-track:01eaada0fc505b2d30551ec3e69194375354df74454200c717a27937e2ce9512` |
| 36 | `lemma` | [condExp_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-mono--74947f97e2c6b212275bcde3.md) | 513 | `result-track:74947f97e2c6b212275bcde3abe0c8216b8e3065bbdbc6b3d2dece9693106308` |
| 37 | `lemma` | [condExp_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-nonneg--c31eb44b5ca3a6d1e9c2f6c0.md) | 522 | `result-track:c31eb44b5ca3a6d1e9c2f6c01806c187356b36263cabbd4a0d2be68edc617cc4` |
| 38 | `lemma` | [condExp_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/declarations/condexp-nonpos--ceb8d2e5696f6c631a3272d6.md) | 528 | `result-track:ceb8d2e5696f6c631a3272d647681297dae63920ae95989a0782bd2c1d632227` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
