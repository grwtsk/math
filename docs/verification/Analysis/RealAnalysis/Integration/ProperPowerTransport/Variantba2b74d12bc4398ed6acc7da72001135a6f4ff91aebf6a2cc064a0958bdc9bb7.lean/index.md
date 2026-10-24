# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ProperPowerTransport.Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ccd9fea83c925c437de1f6720a7b6b8661d930c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ccd9fea83c925c437de1f6720a7b6b8661d930c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/poweronset--d6fad931e0137b09b6cbe7a0.md) | 25 | `declaration-track:d6fad931e0137b09b6cbe7a019b42bfda171840e652305762f502b30683bc81b` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/powerweight--a03409417b5f8bdf9a4cfae0.md) | 28 | `declaration-track:a03409417b5f8bdf9a4cfae0dca788b7e7746fa73470b00852b04c9fa00757b2` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom--799fbeabe5e909a3bfc7fa2f.md) | 31 | `declaration-track:799fbeabe5e909a3bfc7fa2f1e760523f8275f538fb7be41adfdebc150b39211` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail--7064d188b3fc80b843155454.md) | 34 | `declaration-track:7064d188b3fc80b84315545421f5640427290a6df0374438725b1a9efa25c253` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/poweronset-pos--3ac95b807957db9fea545b93.md) | 37 | `result-track:3ac95b807957db9fea545b939d3b78cd22fe06969f08f7defef3446d35e7d43a` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/powerweight-nonneg--f932913333e26193c412dc5e.md) | 41 | `result-track:f932913333e26193c412dc5e6f18cbcc8895b73cb1bb6fe99ff0f84caa3840f0` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom-nonneg--128db63908c7da45825c58cb.md) | 46 | `result-track:128db63908c7da45825c58cb9bb4a12a25977800e2746b321e9f3a43b20bf95e` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom-measurable--41c8d09ec49087f5e3e99128.md) | 50 | `result-track:41c8d09ec49087f5e3e9912844e1aa7df27d32b52d2269b46864a9e142e28aac` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom-integrable--7c3144bfcb66155aaee4373e.md) | 54 | `result-track:7c3144bfcb66155aaee4373edb5092fb9de1b48c58db90eec4604c77939cacf1` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom-integral--4dfd69f682974ec6cf1a7ea6.md) | 61 | `result-track:4dfd69f682974ec6cf1a7ea67808c71fcf1fd7929eab991c617b00c9efa2c765` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom-eq-omitted--d783eb208501f047b9fa8403.md) | 69 | `result-track:d783eb208501f047b9fa840323e5529115e0d6ae80d18d59862923e96293065b` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsetatom-le-zeromoment--2a7e86ed7e9a866275a8e6bc.md) | 77 | `result-track:2a7e86ed7e9a866275a8e6bc2cca4f56488378fccc48026b4f1589eb82746e1f` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-summable--87a33e53791968daedc6e166.md) | 84 | `result-track:87a33e53791968daedc6e1660d2e532baa87eed681c89a74b75b187c385efbe1` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-nonneg--e84a16285cde67dee96f5ec5.md) | 89 | `result-track:e84a16285cde67dee96f5ec58cf58e0edbd97cedc4c2fc5b716dad34080ec5a8` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-measurable--d6c2859f6234170e5cb0c50e.md) | 92 | `result-track:d6c2859f6234170e5cb0c50ea3416c662c633a409871b3e8d16b26c9f433fc6a` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-eq-indicator--e240ddd65257c9b361bcbb09.md) | 95 | `result-track:e240ddd65257c9b361bcbb099a334e066c2c32bf35edb5bc86e33d1a2d49f27f` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-lintegral--bce819e982c499993fad204b.md) | 105 | `result-track:bce819e982c499993fad204bf48b73afe8e25a747a7ecd0a491bee9324daf067` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-integrable--e2b68cf418472ba43e075dce.md) | 129 | `result-track:e2b68cf418472ba43e075dce9e7ec49b75c2955503dd90d8bae1d9a0292c17b1` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/positiveonsettail-integral--165e10f1ec3c8601afca4177.md) | 135 | `result-track:165e10f1ec3c8601afca4177fc323b61208e94b92ec20b59c8cf506b64b69ecc` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/omittedonsettail-integrable-positive--d73d748b3f29674c1911182e.md) | 142 | `result-track:d73d748b3f29674c1911182ec8e6e0c42ab5de9895efa0a257e9795fedd093f7` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/omittedonsettail-integral-eq-b1--e8a72fe41bf29f4ecc9f7d2e.md) | 147 | `result-track:e8a72fe41bf29f4ecc9f7d2ea3aee132284492d8a54c75eef6d08db452018015` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetatom--62aac43a40a6c2b1538fee33.md) | 153 | `declaration-track:62aac43a40a6c2b1538fee33f4dc90310af547ee31a8acee66409fe2c3ae2a4d` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetprefix--7d5cc80efde47cb465ce5bdd.md) | 156 | `declaration-track:7d5cc80efde47cb465ce5bddd6d7273ad0fc3399182639f583af9b2b598176b7` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetatom-nonneg--eff8e84fe32088407adf49f8.md) | 159 | `result-track:eff8e84fe32088407adf49f8a28936b73eedde5a3ac65bcb453b66bec56f1f9e` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetatom-le-zeromoment--e13d052b29f07bf5fed35ddf.md) | 166 | `result-track:e13d052b29f07bf5fed35ddf82ceeca6145aa710fe9d585b704a1de9ad6b151f` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetprefix-summable--356ca11957a0b2fc05e89d0a.md) | 173 | `result-track:356ca11957a0b2fc05e89d0a4bd57dde30f10717c43558ad755555e081c7687f` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetatom-add-omitted--d769b5a703711a64a238fb37.md) | 178 | `result-track:d769b5a703711a64a238fb3758388baeaa529bee8cf6a2e64716c6caa67d04e1` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetprefix-add-tail--874a688ec98ee4975cae6a76.md) | 185 | `result-track:874a688ec98ee4975cae6a7643b204df315110b1e917004dac218769d99e7221` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/properpowermoment-sub-closedprefix--6ba5e3a2e65490a3a0086e2f.md) | 192 | `result-track:6ba5e3a2e65490a3a0086e2f2d3f88af3209e49e8d656f7df23d46f3727f421f` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetatom-touching--c68351e24f6e2e86bde10f07.md) | 196 | `result-track:c68351e24f6e2e86bde10f077ac8fbfd90833999ef455c2a47a3a9decd3eeadb` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/poweronset-ge-first--9d4c6aae979de3d941b36487.md) | 201 | `result-track:9d4c6aae979de3d941b36487ed8ddb68b24cd25f914b9be662f291517a6bbce2` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/closedonsetprefix-below-first--5a79b01d2cc0eaeba59dc269.md) | 208 | `result-track:5a79b01d2cc0eaeba59dc269d9324590c1024203dd4369d43b2579b1b4d0fa7e` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/declarations/omittedonsettail-below-first--90ff6a58d37fcfc2547d9c01.md) | 216 | `result-track:90ff6a58d37fcfc2547d9c01bd31ed73d97203b0d37dca2c317dec682c334f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
