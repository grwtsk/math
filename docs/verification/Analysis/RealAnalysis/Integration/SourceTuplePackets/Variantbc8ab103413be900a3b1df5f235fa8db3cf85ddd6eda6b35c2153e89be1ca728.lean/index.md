# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceTuplePackets.Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "047a3eed860fb4cb08795b5b83cc02dd83bf16e0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `047a3eed860fb4cb08795b5b83cc02dd83bf16e0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMultiplicativePackets` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SignTuple](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/signtuple--ca223197b86d509d7e8416bf.md) | 40 | `declaration-track:ca223197b86d509d7e8416bfc83f97f15e73a5ed54e0d462c09a67890e41fbbd` |
| 2 | `instance` | [signTupleFintype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/signtuplefintype--3f0d43429987481c182918c9.md) | 44 | `declaration-track:3f0d43429987481c182918c90910f88148f1ad2488c79824c7da4d014a7dd8db` |
| 3 | `theorem` | [signTuple_card](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/signtuple-card--725873f30aa753974018e06d.md) | 52 | `result-track:725873f30aa753974018e06d096ca309a95186d9c0e89eed49e6837c6d9710df` |
| 4 | `def` | [signedShift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/signedshift--68b04af219874a35f1991cfa.md) | 64 | `declaration-track:68b04af219874a35f1991cfa3bc0b8e040fbade36f402c797fa73a5fb37a7b38` |
| 5 | `def` | [tupleWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/tupleweight--9b17e04b94b6a84d9ac0a427.md) | 67 | `declaration-track:9b17e04b94b6a84d9ac0a427ee1974e66c6b4e95ed065b87fc8c89b3601de582` |
| 6 | `def` | [tupleShift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/tupleshift--b15daf96ea7cc09e6535b456.md) | 72 | `declaration-track:b15daf96ea7cc09e6535b45616538c3072228cb63a59c58a8790f1fe7b567a0e` |
| 7 | `def` | [tupleObservation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/tupleobservation--b691fa53e2c004ce224030b7.md) | 77 | `declaration-track:b691fa53e2c004ce224030b7fab2794fedf373e038eda9552c5ff1bb02bd856f` |
| 8 | `def` | [finiteSymbol](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/finitesymbol--952df3cd1b70bfab32f1cfd4.md) | 83 | `declaration-track:952df3cd1b70bfab32f1cfd45bcb69f06741861822b39fd9aaad895f46a7a8a4` |
| 9 | `theorem` | [tupleObservation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/tupleobservation-zero--7d44becfb97a684e2f595e45.md) | 86 | `result-track:7d44becfb97a684e2f595e45524f0cb862603a87f31c3cc41ae6b57c5c180884` |
| 10 | `theorem` | [tupleObservation_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/tupleobservation-succ--14156a3ede5be5336ae85f07.md) | 94 | `result-track:14156a3ede5be5336ae85f0710919345d06844203972e1466867c2c903cf64a4` |
| 11 | `theorem` | [cosine_two_signs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/cosine-two-signs--7c046d3026467f056546d266.md) | 119 | `result-track:7c046d3026467f056546d266a642910795b3f3a3756ccbd7c02a82d4c9213167` |
| 12 | `theorem` | [finiteSymbol_pow_mul_cos_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/finitesymbol-pow-mul-cos-eq-tuples--ee96b8cf3d96f8499621f381.md) | 129 | `result-track:ee96b8cf3d96f8499621f3815a3c684479e05e340725e5be06ad2ca7f2d525e7` |
| 13 | `theorem` | [finiteSymbol_pow_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/finitesymbol-pow-eq-tuples--6dea6b5bf7319a6a72987337.md) | 151 | `result-track:6dea6b5bf7319a6a72987337d7090af25589185222aab29da8286fddef414935` |
| 14 | `theorem` | [power_density_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/power-density-eq-tuples--07ca29be6649a4b51d8c985d.md) | 158 | `result-track:07ca29be6649a4b51d8c985d0893042f7032856338dd6f0ef65291229960b2e9` |
| 15 | `theorem` | [weighted_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/weighted-power-integrable--d49a2edde6148b70940387fa.md) | 172 | `result-track:d49a2edde6148b70940387fab40ebaa5bd39aff604ba16d69c1a3e56bb63f1fa` |
| 16 | `theorem` | [weighted_moment_eq_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/weighted-moment-eq-tuples--7f57c54b962233561bef3792.md) | 184 | `result-track:7f57c54b962233561bef379270f7d5f8ea45dcefd8b2bb2e9ca8b62e93b1217a` |
| 17 | `abbrev` | [SourceIndex](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/sourceindex--3cdec46484800c50a8cc52ae.md) | 198 | `declaration-track:3cdec46484800c50a8cc52ae58b085bf673d4b150dafcc9ddf0093a144c8f2f1` |
| 18 | `theorem` | [sourceSymbol_eq_finiteSymbol](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/sourcesymbol-eq-finitesymbol--59e15b939f379436e64554f6.md) | 200 | `result-track:59e15b939f379436e64554f698b8bf4e8989ff5b72866effcd46664852ad05d4` |
| 19 | `theorem` | [source_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/source-power-integrable--e904da5b6aefe72d95e14eca.md) | 209 | `result-track:e904da5b6aefe72d95e14ecaf3c31787580127573aeee4213dba7d6a53c20f80` |
| 20 | `theorem` | [source_moment_eq_signed_tuples](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/source-moment-eq-signed-tuples--a1f5fd7120656e6189d5f84f.md) | 217 | `result-track:a1f5fd7120656e6189d5f84f244ad9a5a79f17a6729c238791c81103bf667e28` |
| 21 | `theorem` | [source_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceTuplePackets/Variantbc8ab103413be900a3b1df5f235fa8db3cf85ddd6eda6b35c2153e89be1ca728.lean/declarations/source-moment-zero--92bc0eeae54aa4e9e99bde2c.md) | 233 | `result-track:92bc0eeae54aa4e9e99bde2c1f8229b9ff986e7b6a6ae949587bd67cefab82f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
