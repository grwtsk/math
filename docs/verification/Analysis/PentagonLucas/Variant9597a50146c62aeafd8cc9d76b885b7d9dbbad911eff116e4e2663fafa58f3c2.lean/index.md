# Verification target: GRWTSK.Analysis.PentagonLucas.Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97f9c850a5fef6bc1b5696be1e0e642b4b053fc7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/index.md) · [Full source](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97f9c850a5fef6bc1b5696be1e0e642b4b053fc7`.

Source path: `GRWTSK/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Real.GoldenRatio` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [α](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/anonymous--cae967f111c9e655e317fb78.md) | 53 | `declaration-track:cae967f111c9e655e317fb78a10749cf85dcede420ca6a1f7404c4a796a3f469` |
| 2 | `def` | [β](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/anonymous--ee69a1f1475104c22f18c6ed.md) | 56 | `declaration-track:ee69a1f1475104c22f18c6ed499f84a2de8a04a8e222aaa6866a5b6479c90ff8` |
| 3 | `def` | [pentagonSeq](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq--b97f6b36a367c4974e191c54.md) | 61 | `declaration-track:b97f6b36a367c4974e191c54315799e77ed081d929660dd99d60abd115986f1f` |
| 4 | `theorem` | [pentagonSeq_zero](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq-zero--d305ae58110ad76a0b97dbe6.md) | 66 | `result-track:d305ae58110ad76a0b97dbe6034073b2cce7173353fc6c08bad0338e7a8fb8f5` |
| 5 | `theorem` | [pentagonSeq_one](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq-one--763e64a615bc3a2ad408dde3.md) | 70 | `result-track:763e64a615bc3a2ad408dde30770cdda89f1e9eebe31ad0058af9698b16bfbbf` |
| 6 | `theorem` | [pentagonSeq_two](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq-two--26e3e535631c36c4dc664a57.md) | 75 | `result-track:26e3e535631c36c4dc664a575b5938bce354582f3e6c948d0457a99f23749ff8` |
| 7 | `theorem` | [pentagonSeq_product](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq-product--3e1fb0940bbe5ebc061549a7.md) | 86 | `result-track:3e1fb0940bbe5ebc061549a747514d7730da042a2fc665536d08ac89893f5364` |
| 8 | `theorem` | [pentagonSeq_recurrence](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq-recurrence--10be8377b7c05362e709b6eb.md) | 99 | `result-track:10be8377b7c05362e709b6eb839219bd1038bd9ecf7755e953894855f8b0bc55` |
| 9 | `theorem` | [cos_pi_div_five_eq_goldenRatio_div_two](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/cos-pi-div-five-eq-goldenratio-div-two--0023efba67f5d260b36faa3c.md) | 108 | `result-track:0023efba67f5d260b36faa3c8e982f48b2d98a26cf43d79674efcf342c47ff47` |
| 10 | `theorem` | [sin_pi_div_ten](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/sin-pi-div-ten--bae7bb2beb1f87548a7badfa.md) | 116 | `result-track:bae7bb2beb1f87548a7badfa549d06d3ad86fdf69730e2b1341c875317379d93` |
| 11 | `theorem` | [two_sin_pi_div_ten_eq_inv_goldenRatio](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/two-sin-pi-div-ten-eq-inv-goldenratio--bb3ae420669845beb2d2661b.md) | 147 | `result-track:bb3ae420669845beb2d2661bf6ff9e8052234c4764db359a31eb1e2bc17b3741` |
| 12 | `theorem` | [β_eq_inv_goldenRatio](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/eq-inv-goldenratio--fbcf4a5b99651eac7a223b97.md) | 155 | `result-track:fbcf4a5b99651eac7a223b97dc1c1a4e082f5344ae0ec079291f8c967f01840a` |
| 13 | `theorem` | [α_eq](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/eq--bf0afd41ee65c57d6e67f829.md) | 159 | `result-track:bf0afd41ee65c57d6e67f82924c03f732edea1fe1cd9a8686d29e7515daf81c9` |
| 14 | `theorem` | [pentagonSeq_recurrence'](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonseq-recurrence--1f86a9008658288bc633ced9.md) | 165 | `result-track:1f86a9008658288bc633ced914dcfd2e2e8c0e25a4a56dbd2719892ac3beabd9` |
| 15 | `theorem` | [β_lt_one](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/lt-one--757ad7f094e12729e012bfcd.md) | 174 | `result-track:757ad7f094e12729e012bfcd0579abbcea0bd2c6ed978fd4ea1527672ae62167` |
| 16 | `theorem` | [β_pos](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pos--9896a13246fb2459c5e29742.md) | 178 | `result-track:9896a13246fb2459c5e297427c208107d25999f4d15a82371a6011562378c01a` |
| 17 | `theorem` | [α_is_root_char_poly](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/is-root-char-poly--00096e0f0ba71580ef39c675.md) | 185 | `result-track:00096e0f0ba71580ef39c6753ea2abaa537502b1a94098665a4997d298e0387d` |
| 18 | `theorem` | [β_is_root_char_poly](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/is-root-char-poly--52524eab5dc918e8c23bfef5.md) | 188 | `result-track:52524eab5dc918e8c23bfef5da234318aa61ba8b40c51a01857d15daff7068d4` |
| 19 | `def` | [pentagonSeqU](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonsequ--21948bcb6db0b6f434fa942f.md) | 194 | `declaration-track:21948bcb6db0b6f434fa942fc2536915f94ef6c685ee1254b4e8cd6c8a0ca1ef` |
| 20 | `theorem` | [pentagonSeqU_zero](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonsequ-zero--0468f204f8d0fe8be0a1185f.md) | 196 | `result-track:0468f204f8d0fe8be0a1185f4f2c41176ab925d9a4f115549c2502be3e8cbc96` |
| 21 | `theorem` | [pentagonSeqU_one](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonsequ-one--d5fbe8d726c043cbd4cc9dba.md) | 199 | `result-track:d5fbe8d726c043cbd4cc9dba683eecb0d2454b7ca55ce6fae59a17e0a5d9ccbd` |
| 22 | `theorem` | [pentagonSeqU_recurrence](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/pentagonsequ-recurrence--c75eb5c22abdb207101dfef0.md) | 202 | `result-track:c75eb5c22abdb207101dfef040f67226a5d9375fd3c7f1c89bc901970f25a8d6` |
| 23 | `theorem` | [alpha_pow_eq](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/alpha-pow-eq--503970b58f9509c6eb2f871c.md) | 208 | `result-track:503970b58f9509c6eb2f871cea91dd7b9f05bbf939da48bb9f2e4cac44edf2c5` |
| 24 | `theorem` | [beta_pow_eq](../../../../mathematics/Analysis/PentagonLucas/Variant9597a50146c62aeafd8cc9d76b885b7d9dbbad911eff116e4e2663fafa58f3c2.lean/declarations/beta-pow-eq--a4f27d8ba73905e4a3e26265.md) | 213 | `result-track:a4f27d8ba73905e4a3e262658e4a7afa7bcc308abe03b0bb7fbc9a9805a2768f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
