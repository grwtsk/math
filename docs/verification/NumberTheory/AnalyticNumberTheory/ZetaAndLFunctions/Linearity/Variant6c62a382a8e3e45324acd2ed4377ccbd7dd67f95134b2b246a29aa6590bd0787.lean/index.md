# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Linearity.Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ca3c1b7de2c97a536510efe2d185965954610d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ca3c1b7de2c97a536510efe2d185965954610d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeries.term_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-add--db5287c028384c0f92921aa3.md) | 30 | `result-track:db5287c028384c0f92921aa338909b919cab5ba7f06961425d7d4dfe71d68395` |
| 2 | `lemma` | [LSeries.term_add_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-add-apply--0a8ec8272711549d5a1d78d6.md) | 34 | `result-track:0a8ec8272711549d5a1d78d6d5b49ef0463d916e79280d210008ed7be379acd1` |
| 3 | `lemma` | [LSeriesHasSum.add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lserieshassum-add--a1a1252f69e586dbf77133d2.md) | 38 | `result-track:a1a1252f69e586dbf77133d29971024b2c4ffafec8d23f26cdba927b7c2b1007` |
| 4 | `lemma` | [LSeriesSummable.add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-add--d04aa39780b8cceb4a6c2962.md) | 43 | `result-track:d04aa39780b8cceb4a6c296203796003ea074a4752885ad4652d3af1917d4007` |
| 5 | `lemma` | [LSeries_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-add--2c2c29064cdac927d08ea512.md) | 49 | `result-track:2c2c29064cdac927d08ea512b1ef2ae9d55128933b6d4d91a8ad119a01803607` |
| 6 | `lemma` | [LSeries.term_neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-neg--721100c3b6c7dbb81e7e19ba.md) | 57 | `result-track:721100c3b6c7dbb81e7e19ba42af733a469e3e9fe1d0fc50a4b43a6dbb411521` |
| 7 | `lemma` | [LSeries.term_neg_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-neg-apply--8e31036a42d9010cc8fbba0a.md) | 61 | `result-track:8e31036a42d9010cc8fbba0aa3b1adfbee9c34acc468dccaff25aed3e084d14a` |
| 8 | `lemma` | [LSeriesHasSum.neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lserieshassum-neg--09208427fee1eb7732f19cea.md) | 64 | `result-track:09208427fee1eb7732f19cead515fbafc9025b635dbb21d691fe32dfd1572c8d` |
| 9 | `lemma` | [LSeriesSummable.neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-neg--349e7961cad62cdc27f12cec.md) | 68 | `result-track:349e7961cad62cdc27f12cec2056fbc3d7d7d572f4ed9715c0ddca44c3f22ad4` |
| 10 | `lemma` | [LSeriesSummable.neg_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-neg-iff--3447f6a88bfc4a71d9aca7e8.md) | 73 | `result-track:3447f6a88bfc4a71d9aca7e894a146599a251404086c256293f3c21eec83653f` |
| 11 | `lemma` | [LSeries_neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-neg--144f25d152ac8e561f772257.md) | 78 | `result-track:144f25d152ac8e561f7722573bb05428781100c36b360609b0a775e880198399` |
| 12 | `lemma` | [LSeries.term_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-sub--57834047a2957aa70743b30a.md) | 85 | `result-track:57834047a2957aa70743b30a92ad16eb4cdf4a38e05d19400f8c86b81d6e029b` |
| 13 | `lemma` | [LSeries.term_sub_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-sub-apply--cf3f3daf95cc2577e24880b5.md) | 88 | `result-track:cf3f3daf95cc2577e24880b5286016fcf2bd01b057cbaabf1be707647e7ae2bd` |
| 14 | `lemma` | [LSeriesHasSum.sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lserieshassum-sub--5bdb1fdd4d4a6373be167c1e.md) | 92 | `result-track:5bdb1fdd4d4a6373be167c1ec70748fa6c39cf0a3d92c5de82eb2e7f81b24865` |
| 15 | `lemma` | [LSeriesSummable.sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-sub--9b0cfc02042f448e26335a7d.md) | 97 | `result-track:9b0cfc02042f448e26335a7de6f0512b9613125fd50cfc5391caa833ade50167` |
| 16 | `lemma` | [LSeries_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-sub--d6e6175a0e5a0e4867d46b30.md) | 103 | `result-track:d6e6175a0e5a0e4867d46b30fe101ed691bf5755964903f3d4ea21ffb6dd4d08` |
| 17 | `lemma` | [LSeries.term_smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-smul--eaa15cb7136b811a14970621.md) | 111 | `result-track:eaa15cb7136b811a149706218134e3b2a82b6b0401efaeb22dfb5dea0c535a9c` |
| 18 | `lemma` | [LSeries.term_smul_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-smul-apply--bfb29fbfb37a421a20a88ac0.md) | 115 | `result-track:bfb29fbfb37a421a20a88ac0e0b893d390396a433b606ce7710d03361dc5f7f3` |
| 19 | `lemma` | [LSeriesHasSum.smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lserieshassum-smul--6e653acd39b8149da64608d7.md) | 119 | `result-track:6e653acd39b8149da64608d7919c70ce3c15ba81e288ba63374b26878c221ec9` |
| 20 | `lemma` | [LSeriesSummable.smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-smul--8f6799ccaedffd1462bb6649.md) | 123 | `result-track:8f6799ccaedffd1462bb66498bd2b21df08a7a1f518d0f8d02fccd2a6845583b` |
| 21 | `lemma` | [LSeriesSummable.of_smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-of-smul--4b5fbfdc417ddf822d4a8abd.md) | 127 | `result-track:4b5fbfdc417ddf822d4a8abdbfbdabb9277ac4b0b995c39c9384744a4d71c80c` |
| 22 | `lemma` | [LSeriesSummable.smul_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-smul-iff--3650c20b268c1d7c41bdc9c1.md) | 131 | `result-track:3650c20b268c1d7c41bdc9c1cb173de73a72db13e7041d05738f69464262b76a` |
| 23 | `lemma` | [LSeries_smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-smul--13f7c697edda5116b72b3959.md) | 136 | `result-track:13f7c697edda5116b72b395923108dd3ac10a4578b03d149035342f196cf40ac` |
| 24 | `lemma` | [LSeries.term_sum_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-sum-apply--c24ec82dbed54e63cebeb266.md) | 148 | `result-track:c24ec82dbed54e63cebeb2662ec7d64cf78b54ccb8d0438e34123e62fc1fc7c0` |
| 25 | `lemma` | [LSeries.term_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-term-sum--2a6c32a2a944d3d35541838e.md) | 153 | `result-track:2a6c32a2a944d3d35541838e47f8ab42cf27d78db9cff814e328b899fd7368c8` |
| 26 | `lemma` | [LSeriesHasSum.sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lserieshassum-sum--d4a826aba6781691cae94524.md) | 158 | `result-track:d4a826aba6781691cae94524100e867058cf39037da57435ac903c86a0125e05` |
| 27 | `lemma` | [LSeriesSummable.sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseriessummable-sum--8c33d9e3393d24ef6442f2bd.md) | 162 | `result-track:8c33d9e3393d24ef6442f2bddb36118bbacf3b806334733b27887229e172b5f2` |
| 28 | `lemma` | [LSeries_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variant6c62a382a8e3e45324acd2ed4377ccbd7dd67f95134b2b246a29aa6590bd0787.lean/declarations/lseries-sum--e6f928da168a7bbe9bc7ffdb.md) | 167 | `result-track:e6f928da168a7bbe9bc7ffdbc9a134eb201c73061462008d6bc197d1605aa4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
