# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CondVar.Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f3a2b06e8f7e1b3b4026499c31386f3600dbd7d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f3a2b06e8f7e1b3b4026499c31386f3600dbd7d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean.json)

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
| 1 | `def` | [condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar--3ea5ff2bc2fca986ef35753a.md) | 40 | `declaration-track:3ea5ff2bc2fca986ef35753a8118ab737cc4217990cb72e6e131874c930a81c5` |
| 2 | `lemma` | [condVar_of_not_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-of-not-le--54d63de0473abfc6134b898f.md) | 51 | `result-track:54d63de0473abfc6134b898fe4bd2e70eece29b402767c813e936cd6fbf5242b` |
| 3 | `lemma` | [condVar_of_not_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-of-not-sigmafinite--900b14981bcb3af5ad0c0eb8.md) | 53 | `result-track:900b14981bcb3af5ad0c0eb89e24005c75c05d3fefee02516539405551528693` |
| 4 | `lemma` | [condVar_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-of-sigmafinite--6c19e54636d0dad3923626d5.md) | 57 | `result-track:6c19e54636d0dad3923626d5eb0a3c019b9aaab03cb9ff364742a4a1cc424c0a` |
| 5 | `lemma` | [condVar_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-of-stronglymeasurable--14a14289b86a487f8181d493.md) | 65 | `result-track:14a14289b86a487f8181d493d477034bd8c4fa1d38a7a435d123e92f0c5a52cd` |
| 6 | `lemma` | [condVar_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-of-not-integrable--2d02639d4f1ce8dc3b97b699.md) | 70 | `result-track:2d02639d4f1ce8dc3b97b699e01c487efd6139712ee7a8c310d474a42cf8a3c2` |
| 7 | `lemma` | [condVar_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-zero--540ef1e99423dd3f01392e8d.md) | 73 | `result-track:540ef1e99423dd3f01392e8def9802311d52f723dfeccf8f189e66314636d494` |
| 8 | `lemma` | [condVar_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-const--c5ab9c4f5c4fcd90b3a52908.md) | 76 | `result-track:c5ab9c4f5c4fcd90b3a52908f76cdcbca9f9e42fb8e61918b940102ec7e22402` |
| 9 | `lemma` | [stronglyMeasurable_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/stronglymeasurable-condvar--38c71739e3a9dc71cd6a0ca2.md) | 84 | `result-track:38c71739e3a9dc71cd6a0ca28ceb42f2f5edfce5ca497c803770a03803632ac0` |
| 10 | `lemma` | [condVar_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-congr-ae--764aa5fa8029428758169ba0.md) | 87 | `result-track:764aa5fa8029428758169ba07cc22779d90d3c3575ecaab99f01f0fb2ac10ce9` |
| 11 | `lemma` | [condVar_of_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-of-aestronglymeasurable--e576f4c67a3a499a7e6922e5.md) | 90 | `result-track:e576f4c67a3a499a7e6922e5e12f07109a710b66710d2b77c3fb36b904e8f653` |
| 12 | `lemma` | [integrable_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/integrable-condvar--df36335955511e2f5b5de191.md) | 96 | `result-track:df36335955511e2f5b5de191911d0129aa65ea3081fafe5285b69d853119fcd5` |
| 13 | `lemma` | [setIntegral_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/setintegral-condvar--1f449456d2cc2b8bd585748f.md) | 100 | `result-track:1f449456d2cc2b8bd585748fa31ef7d75ee0d639064457e8fa0b48daecb44fa8` |
| 14 | `lemma` | [condVar_ae_eq_condExp_sq_sub_sq_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-ae-eq-condexp-sq-sub-sq-condexp--bb363e65f54078608a9964fe.md) | 108 | `result-track:bb363e65f54078608a9964fe99abbfae08a9e42336721112e9314e971c11d1ad` |
| 15 | `lemma` | [condVar_ae_le_condExp_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-ae-le-condexp-sq--8ca7cc8bd8edb00408d8b77f.md) | 128 | `result-track:8ca7cc8bd8edb00408d8b77f20cb941ce216bc9738f0bafacc7b05dfaf8aed2e` |
| 16 | `lemma` | [integral_condVar_add_variance_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/integral-condvar-add-variance-condexp--6308edb27d87449d7b93690c.md) | 135 | `result-track:6308edb27d87449d7b93690c9b07f94f00b67b94fc7b33a3b8e24a342f1d911f` |
| 17 | `lemma` | [condVar_bot'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-bot--1e37d52b6493c37b55baae83.md) | 148 | `result-track:1e37d52b6493c37b55baae835c3551aec24b439f16769b8505dbd0d3c6905337` |
| 18 | `lemma` | [condVar_bot_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-bot-ae-eq--71dedc904582afc129d4bbb7.md) | 152 | `result-track:71dedc904582afc129d4bbb705555044c71217588ec78810474e0c03e3562bb4` |
| 19 | `lemma` | [condVar_bot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-bot--e525511d26623aa5d3106379.md) | 160 | `result-track:e525511d26623aa5d3106379a3db54d959580d995ddd54665798262d512100d5` |
| 20 | `lemma` | [condVar_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-smul--45bfd173dffb81cff33e438e.md) | 164 | `result-track:45bfd173dffb81cff33e438e8795b14ead6843988e5b8134e9a31f39a40fc736` |
| 21 | `lemma` | [condVar_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/declarations/condvar-neg--cc7cd184285cd7df16cd50cc.md) | 174 | `result-track:cc7cd184285cd7df16cd50ccc817258f42c273c4bfba3f8c618f8707aff19941` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
