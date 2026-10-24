# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Moments.Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0a72213f287ba46ecb30238049494931b51c24e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0a72213f287ba46ecb30238049494931b51c24e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.QuarticWindow.Quartic` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.WindowLocalHyps` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edge_estimate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/edge-estimate--921fd3089bf111a5681ba8f5.md) | 42 | `result-track:921fd3089bf111a5681ba8f539564e3bb52b17e121b49b05c9e2e590a982ea1b` |
| 2 | `theorem` | [integral_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/integral-scale--e1eb40e06e800a091f810586.md) | 139 | `result-track:e1eb40e06e800a091f810586325068407a4a33684e79070fe5610cb55e9d6350` |
| 3 | `def` | [mQ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/mq--10c0b694114a361472bdc7f7.md) | 148 | `declaration-track:10c0b694114a361472bdc7f7fded7d5b8980c59834230566c0d5f9ae1fe7bfec` |
| 4 | `lemma` | [mQ_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/mq-nonneg--e1b38171681dc6b0974b17b3.md) | 150 | `result-track:e1b38171681dc6b0974b17b344a9e92979c1a6a2b40c6bc1c22b5d2c45a75e88` |
| 5 | `lemma` | [mQ_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/mq-le-one--f2fa0aead50e3a240236e729.md) | 151 | `result-track:f2fa0aead50e3a240236e72984758572f840d1ea20c475b9e735d2831c4bc6e1` |
| 6 | `lemma` | [abs_mQ_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/abs-mq-le-one--9a485051a0371a870e4ac751.md) | 152 | `result-track:9a485051a0371a870e4ac751bbb136e916791f98b6bbfcd95d3b8dd2ba852b43` |
| 7 | `lemma` | [mQ_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/mq-continuous--3ac0d957a9413d4dce113786.md) | 153 | `result-track:3ac0d957a9413d4dce1137861b11e93f753beeed9f3cfc2d154a1e44504bdd4d` |
| 8 | `lemma` | [fQ_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/fq-sq--3061ac0b51afb6fe71112ed1.md) | 155 | `result-track:3061ac0b51afb6fe71112ed13caecccc49d4064eaebb4bb894ae3ed3f8a2f93a` |
| 9 | `lemma` | [mQ_core](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/mq-core--678d12feb8ecf0094f535c7b.md) | 156 | `result-track:678d12feb8ecf0094f535c7bb8f4231aba62d55f218b7266803d15c54f1f18c5` |
| 10 | `lemma` | [phiMQ_sq_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/phimq-sq-eq--bed2fa71a729dd5b09e34b68.md) | 159 | `result-track:bed2fa71a729dd5b09e34b68c5e24dfb750a79197ea2020907c7c112a9dd838a` |
| 11 | `lemma` | [phiMQ_pow_four_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/phimq-pow-four-eq--82b630c18dcade478dc0a935.md) | 162 | `result-track:82b630c18dcade478dc0a93592dabe361020b29d9c37a21435da0fd65da08a2d` |
| 12 | `theorem` | [aQ_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/aq-close--c19e4ac6c21508fefd24c2be.md) | 169 | `result-track:c19e4ac6c21508fefd24c2be93a61ff317b58fb18f77f712ac43cae8f52385ec` |
| 13 | `theorem` | [bQ_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/bq-close--df199cece5556fbb901f6ae9.md) | 199 | `result-track:df199cece5556fbb901f6ae9d2e1b880bbc386cf29c4dee8a65f80f44f49ef7a` |
| 14 | `def` | [sharpQ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/sharpq--c5bcc25c79a5e029fd7f0e05.md) | 236 | `declaration-track:c5bcc25c79a5e029fd7f0e05f8c6f3c7c3d838793b2b0285a62e3b78278b7e0f` |
| 15 | `theorem` | [sharpQ_autocorr_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/sharpq-autocorr-eq--4b89d5889b0dc7b817f32415.md) | 238 | `result-track:4b89d5889b0dc7b817f32415609f429a5a9530e756ebcf19549d6d3ab5b43da6` |
| 16 | `theorem` | [integral_abs_phiMQsq_sub_sharp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/integral-abs-phimqsq-sub-sharp--dd2585ce51c43a3cb480d44e.md) | 272 | `result-track:dd2585ce51c43a3cb480d44e799b1b443aaac1b9c64b0c18feea6862c1944d0c` |
| 17 | `theorem` | [autocorr_phiMQsq_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/autocorr-phimqsq-close--d4bb5f595970d5af7821c0e8.md) | 377 | `result-track:d4bb5f595970d5af7821c0e81f1a4cd9986907796a474724680bb8ed6f30f1a2` |
| 18 | `theorem` | [aV_quartic_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/av-quartic-close--ef2892da1b2657a4e486e7a3.md) | 494 | `result-track:ef2892da1b2657a4e486e7a32b8bfadf2234a152d4acd87124a6623baca02a6b` |
| 19 | `theorem` | [bV_quartic_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/bv-quartic-close--bc59e1001a6e598d0a3f6e98.md) | 498 | `result-track:bc59e1001a6e598d0a3f6e98968ad1c99cb48aa4e9c8dc9815c8cbcbc242ee61` |
| 20 | `theorem` | [bV_quartic_ge_half](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/bv-quartic-ge-half--c2e49c24cf562f913a8390fb.md) | 503 | `result-track:c2e49c24cf562f913a8390fb26af3b46eca5076874a0836ae77ac9dc285b1419` |
| 21 | `theorem` | [gV_quartic_close_at](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/gv-quartic-close-at--c9c3023a1da18c48afa309c4.md) | 510 | `result-track:c9c3023a1da18c48afa309c4bdc6793fd07394fdbdcbee0b3f5de9516990ae5e` |
| 22 | `theorem` | [gV_quartic_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/gv-quartic-close--6c8fc29f32efb69bc305c2b4.md) | 515 | `result-track:6c8fc29f32efb69bc305c2b4f7820a27df905bcbb8b12a26dd04e7d75ad40664` |
| 23 | `theorem` | [gV_quartic_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/gv-quartic-continuous--b384820c93e8d7e62ec92399.md) | 521 | `result-track:b384820c93e8d7e62ec92399a68ca432cc38a03fc84f6c5d3198e103d5489859` |
| 24 | `theorem` | [localHypsCoreQ_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant61fdd77fd0513a4195e9af9d2be1c32c8a7bd90407cf7ba5f1992460dac7a681.lean/declarations/localhypscoreq-eventually--6f4ac8d6727b57dbd00a2b4b.md) | 526 | `result-track:6f4ac8d6727b57dbd00a2b4be96771657b3989c458bcf5adbfe50c8903b359b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
