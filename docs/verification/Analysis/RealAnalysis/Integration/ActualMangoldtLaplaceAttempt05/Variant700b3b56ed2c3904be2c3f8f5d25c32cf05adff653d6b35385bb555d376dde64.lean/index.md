# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt05.Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b60a8c031a1b0292ff751f1560af73abbf736c47",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b60a8c031a1b0292ff751f1560af73abbf736c47`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/mangoldtweight--ba20db8973d38280c6c361bf.md) | 19 | `declaration-track:ba20db8973d38280c6c361bf693cc2cd66f02cd2a0d16e4c9c176fc36e59aa23` |
| 2 | `def` | [laplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/laplaceatom--813e6e6b543a0465092e5e6b.md) | 22 | `declaration-track:813e6e6b543a0465092e5e6b1c385289d348218c101f60ee55310c50f64c9b1c` |
| 3 | `theorem` | [onset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/onset-pos--f4a784075d137d7540f82a62.md) | 26 | `result-track:f4a784075d137d7540f82a62fcce479e211eec83ec5938304e7e37fe1805807f` |
| 4 | `theorem` | [weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/weight-nonneg--940c6faee6d3f7a5ae63d201.md) | 29 | `result-track:940c6faee6d3f7a5ae63d201ce5028d52b89add5552d018febb711cf3b2ff99d` |
| 5 | `theorem` | [atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atom-nonneg--8f52b4b2394cbb12f87345ef.md) | 33 | `result-track:8f52b4b2394cbb12f87345ef10deae0019b68269eb281fdaa0314da764ac5cc3` |
| 6 | `theorem` | [atom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atom-measurable--3140c677692c8dac9b7dccc2.md) | 36 | `result-track:3140c677692c8dac9b7dccc2d4d3b9169e11d2c3a1e45a9f9809694d3708664a` |
| 7 | `theorem` | [atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atom-integrable--741d609475a3293fb96c58a8.md) | 42 | `result-track:741d609475a3293fb96c58a876738ddefe398788b44ff56bea482cbc337003b1` |
| 8 | `theorem` | [atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atom-integral--5f243edc68313e1ab8979941.md) | 49 | `result-track:5f243edc68313e1ab897994140b148e557c929315eecb4c62e7af3f86690bacc` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/weighted-exp-eq-norm-term--b1e297eaff4da51bb0e32f87.md) | 57 | `result-track:b1e297eaff4da51bb0e32f87ac3b4d1dad6f1ebf4f00497df148c3dc1c39eece` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atom-norm-integrals-summable--16f590c28a1a69d5d21993b9.md) | 70 | `result-track:16f590c28a1a69d5d21993b92c355311d932f53b6b611fd23878d232c9671421` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/onset-closed-iff--eee28a2d2a11e3339b136c33.md) | 83 | `result-track:eee28a2d2a11e3339b136c33f63fd3ecb4b9915bafb6215d6cba90250c1eef69` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atom-zero-outside--4ba55fe74e31cd18c6057ffd.md) | 88 | `result-track:4ba55fe74e31cd18c6057ffdc2884b99f7000d0f8a8d970dfdd51d8c7329adad` |
| 13 | `theorem` | [atoms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atoms-summable--737f1addf6ddb44ad767d41a.md) | 97 | `result-track:737f1addf6ddb44ad767d41ae1c99a7fb0f73c710a7f06f1e8720a99d73b1e6b` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atoms-tsum-eq-actual--592cd1f4e54fe00352172dac.md) | 100 | `result-track:592cd1f4e54fe00352172dacacccdb787a712552bdc6ede1dea42e2795dc23ce` |
| 15 | `theorem` | [atoms_tsum_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atoms-tsum-eq-indicator--7795b4ea66980a6ee75d4b10.md) | 126 | `result-track:7795b4ea66980a6ee75d4b108a86dcfe69b60ed9969a92b285857cd3c42173b7` |
| 16 | `theorem` | [atoms_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atoms-integrals-summable--abd0150cf4aa2953c68b3b54.md) | 140 | `result-track:abd0150cf4aa2953c68b3b548e20e2b0919e1de027da2cea06da5320e079d99c` |
| 17 | `theorem` | [atoms_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/atoms-lintegral--1a48f4148353d7de6639d9aa.md) | 145 | `result-track:1a48f4148353d7de6639d9aaad858c9e63582f5311eee36d4b564829b8c05312` |
| 18 | `theorem` | [actual_prefix_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/actual-prefix-laplace-integrable--8e7d026c9e3da2becb992c47.md) | 163 | `result-track:8e7d026c9e3da2becb992c473e62ded9c6e4b8ba265e328914f57ef524623718` |
| 19 | `theorem` | [actual_prefix_laplace_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/actual-prefix-laplace-eq-tsum--136fbe06c2795c6a1d8073e7.md) | 173 | `result-track:136fbe06c2795c6a1d8073e73315ff582b1202d0002e5dfc26095598511f12db` |
| 20 | `theorem` | [weighted_exp_eq_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/weighted-exp-eq-term--52a08e709912d14315d45d12.md) | 182 | `result-track:52a08e709912d14315d45d12ef3ae69aef1930523a6568995f0124b7a5b4bae8` |
| 21 | `theorem` | [actual_prefix_laplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/declarations/actual-prefix-laplace-eq-lseries--d1c5ed1626a6b98a7857d65a.md) | 194 | `result-track:d1c5ed1626a6b98a7857d65a748ee348c18c49f969b21dc44e987f40cdf3d778` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
