# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CondVar.Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ea338ccc3360458c5380b13a51e8cc9cffab8be",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ea338ccc3360458c5380b13a51e8cc9cffab8be`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar--f16a3683d57183c9f1759dec.md) | 48 | `declaration-track:f16a3683d57183c9f1759dec4f4b90f97201f32d9dee22b6713d92bce5e46a1f` |
| 2 | `lemma` | [condVar_of_not_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-of-not-le--9a9c4ea8ddbe7c494fc399a3.md) | 59 | `result-track:9a9c4ea8ddbe7c494fc399a3fbd96a79c921a12fffe1710bb8c093c89b0df6a5` |
| 3 | `lemma` | [condVar_of_not_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-of-not-sigmafinite--4252f1ec6ae8b728a470c0af.md) | 61 | `result-track:4252f1ec6ae8b728a470c0afd4c639f270c9ad4826856c371c38ac53edb486a7` |
| 4 | `lemma` | [condVar_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-of-sigmafinite--198e1c7509849d2f79aa086a.md) | 65 | `result-track:198e1c7509849d2f79aa086afbb4b21b81a22d627fe610ef95646f868a1fd859` |
| 5 | `lemma` | [condVar_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-of-stronglymeasurable--58349b56a8c25620ba63256c.md) | 73 | `result-track:58349b56a8c25620ba63256cd792587fb6bafb3c8ba5b4d5a30372602a4a43bc` |
| 6 | `lemma` | [condVar_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-of-not-integrable--1ae38f86ffd615764df1455f.md) | 78 | `result-track:1ae38f86ffd615764df1455f98dfb04502de2188ff5e3fced116f4ec6260ac18` |
| 7 | `lemma` | [condVar_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-zero--301e7787a3e30bfb042284c7.md) | 81 | `result-track:301e7787a3e30bfb042284c7244a3945845f8436d259aea43200d113b3b0f90d` |
| 8 | `lemma` | [condVar_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-const--81ae29c280c42fb8c826cd90.md) | 84 | `result-track:81ae29c280c42fb8c826cd90296b2aa8faf25b16bfe240d76acbb7cb4c9ca514` |
| 9 | `lemma` | [stronglyMeasurable_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/stronglymeasurable-condvar--a8c381efd7aa7d6d07bf80e0.md) | 92 | `result-track:a8c381efd7aa7d6d07bf80e057530f03866a261fc1f724722b9908309287ec11` |
| 10 | `lemma` | [condVar_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-congr-ae--6a33c321241b9069a10ef584.md) | 95 | `result-track:6a33c321241b9069a10ef5842ab77890494c34736269011d13c3a0e98fa35f2e` |
| 11 | `lemma` | [condVar_of_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-of-aestronglymeasurable--0e98fe340b950e42346721fb.md) | 98 | `result-track:0e98fe340b950e42346721fb8453a67566450f95ec686c76ad7c8048535eb2ff` |
| 12 | `lemma` | [integrable_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/integrable-condvar--a2135607af93cbabdafb81b9.md) | 104 | `result-track:a2135607af93cbabdafb81b96497672d7d5a3e77d63ab51a1264d8c280ec9c9c` |
| 13 | `lemma` | [setIntegral_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/setintegral-condvar--29a2c360d6708e96da94ccf1.md) | 108 | `result-track:29a2c360d6708e96da94ccf1fed5d0849066ccedf7ee830bc92a375b7fd3ae35` |
| 14 | `lemma` | [condVar_ae_eq_condExp_sq_sub_sq_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-ae-eq-condexp-sq-sub-sq-condexp--f161ebf8ce94296488e02bf7.md) | 116 | `result-track:f161ebf8ce94296488e02bf718f0cb09b8ec73cfa640835f4968406de527a809` |
| 15 | `lemma` | [condVar_ae_le_condExp_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-ae-le-condexp-sq--e7aaad474b1bceff6c6740c5.md) | 136 | `result-track:e7aaad474b1bceff6c6740c572bf7fa2f2dd0b0a40eb65acb1c1e0894a19afa5` |
| 16 | `lemma` | [integral_condVar_add_variance_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/integral-condvar-add-variance-condexp--b7e69e852bcf3e2970994ab9.md) | 143 | `result-track:b7e69e852bcf3e2970994ab9f55072c4a8b98df184678d716c73a51af7b09598` |
| 17 | `lemma` | [condVar_bot'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-bot--80deb6d7d5bf45ab631d918e.md) | 156 | `result-track:80deb6d7d5bf45ab631d918eee4af162bfb83d716fac7e829cb4a9f6934de825` |
| 18 | `lemma` | [condVar_bot_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-bot-ae-eq--d9456a70325d6ddece678267.md) | 160 | `result-track:d9456a70325d6ddece67826735d5147adaab3c76c162f9454dd0ebcdb6570a16` |
| 19 | `lemma` | [condVar_bot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-bot--30aa362e26fd9a971e73c054.md) | 168 | `result-track:30aa362e26fd9a971e73c054b908acdcf829d647e72130c497298757460cd751` |
| 20 | `lemma` | [condVar_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-smul--1b45365a9723a2be4917ba3b.md) | 172 | `result-track:1b45365a9723a2be4917ba3b136d8124b105a55e62f2a5b710f747b493d1461e` |
| 21 | `lemma` | [condVar_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant084d635602c1a9aedd7bcb903d077a456adfafd13fd9624bbe6046bd71d56cb1.lean/declarations/condvar-neg--011c9ff6c52acadb911dbfcb.md) | 182 | `result-track:011c9ff6c52acadb911dbfcb8d33e3015896be9f71d0a181c5cb552797e38c16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
