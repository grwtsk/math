# Verification target: GRWTSK.Analysis.ErrorBounds.RationalWindowEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df6a65cf33ed8586d20420d185ddd9df5afd79d1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df6a65cf33ed8586d20420d185ddd9df5afd79d1`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalWindowEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalWindowEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow`](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjointDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/adjointdisk--2e84768ba58851d45b8948a8.md) | 45 | `declaration-track:2e84768ba58851d45b8948a8bc0d5dfd57bf5cfa0b5ccfb012be48badd984454` |
| 2 | `def` | [pullbackDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/pullbackdisk--59d137c26cdf343fc281b503.md) | 49 | `declaration-track:59d137c26cdf343fc281b5034315a5856f5601a4f3c8026234c2cee6afbadb16` |
| 3 | `def` | [mixedDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/mixeddisk--9b02e10fb096f7e7b17e8111.md) | 54 | `declaration-track:9b02e10fb096f7e7b17e811112e76daa1f7b984fae029205ee801dc8cc0eba24` |
| 4 | `def` | [correctionDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/correctiondisk--1da6f0478a9d5ed77e41b3f4.md) | 58 | `declaration-track:1da6f0478a9d5ed77e41b3f409e41d96aebf7d60215830f802fc161d3a14570f` |
| 5 | `def` | [stepDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/stepdisk--fba5e1635fc5cfbe7b2f9755.md) | 63 | `declaration-track:fba5e1635fc5cfbe7b2f9755a5241fee16113e5eea9c91bf5edf4b5d096c9d26` |
| 6 | `def` | [prefixDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/prefixdisk--4a81a16e175896c24c9be8aa.md) | 69 | `declaration-track:4a81a16e175896c24c9be8aaa2ddf4f464ffceb553993b45ff610d3d66fe19c0` |
| 7 | `def` | [windowDisk](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/windowdisk--73548bafc85e87295dc8a71f.md) | 78 | `declaration-track:73548bafc85e87295dc8a71f766572e56e9a82feabe5bd63eb6e7c7f897a33b1` |
| 8 | `theorem` | [adjointDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/adjointdisk-contains--9bf3ae20991d07d92c7cf5fa.md) | 91 | `result-track:9bf3ae20991d07d92c7cf5fab0f4bac42caaf1a8ad761bc5e84b12fca0fec52d` |
| 9 | `theorem` | [pullbackDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/pullbackdisk-contains--cfb032fb36a6cd20d5f27629.md) | 102 | `result-track:cfb032fb36a6cd20d5f27629a348ef40a6ab18732434ab964bb1cff402768d71` |
| 10 | `theorem` | [mixedDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/mixeddisk-contains--d6ece4ad8970b6f7aac86314.md) | 113 | `result-track:d6ece4ad8970b6f7aac86314dc5f76de727e08b7bf31099034cf275375f1886b` |
| 11 | `theorem` | [correctionDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/correctiondisk-contains--349140252a60cc9d29b473c4.md) | 126 | `result-track:349140252a60cc9d29b473c4a552a503ad87a23fd11e754ad0720d16d5f6cf3b` |
| 12 | `theorem` | [stepDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/stepdisk-contains--461242f7076b622a15d7aabd.md) | 140 | `result-track:461242f7076b622a15d7aabd52e3fe22d50406c8396997d50f87b698d7313239` |
| 13 | `theorem` | [prefixDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/prefixdisk-contains--6a6a7e52659c3122ba05e393.md) | 164 | `result-track:6a6a7e52659c3122ba05e393c7c423e454ca5e6a6ee37881bef97b04066162f5` |
| 14 | `def` | [windowValue](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/windowvalue--51ef89788350093b3029c375.md) | 184 | `declaration-track:51ef89788350093b3029c375ca12ee18e23f9dc73e51b829d91fdcfd20673600` |
| 15 | `theorem` | [windowDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/windowdisk-contains--d1dc3087de3fa60cca4999b7.md) | 193 | `result-track:d1dc3087de3fa60cca4999b7b8d9aab839c4dc197dbec8bd490cdd83b8792a93` |
| 16 | `theorem` | [windowValue_source_identity](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/windowvalue-source-identity--2926eee197a520b5302f3e0b.md) | 219 | `result-track:2926eee197a520b5302f3e0b4ffb49e5099ebe681063d8a69ef2ce6d4f071066` |
| 17 | `theorem` | [enclosed_window_source_lower](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/enclosed-window-source-lower--1cc7b05a27a036e8f96eb77e.md) | 230 | `result-track:1cc7b05a27a036e8f96eb77e9da7987d9e40778b6a2ddfccff8c9ba62ccae876` |
| 18 | `theorem` | [no_fixed_negative_of_rational_window](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/no-fixed-negative-of-rational-window--2ca72237e27ab56602bd8040.md) | 244 | `result-track:2ca72237e27ab56602bd8040a698fcb3a29a21da886d87b0a40b17e77aa64d91` |
| 19 | `theorem` | [erased_test_disk_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/erased-test-disk-fixture--9fbbfa9c349180a0cb2d4d56.md) | 273 | `result-track:9fbbfa9c349180a0cb2d4d56fb93f98e980d22563bbc99bc9722e6a31d9b54b6` |
| 20 | `theorem` | [correction_radius_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/correction-radius-fixture--a3aea9b21de6cf59e4422a4e.md) | 282 | `result-track:a3aea9b21de6cf59e4422a4e1d3a50dbe912aff33f3a072a55e2239afeb8b6ec` |
| 21 | `theorem` | [zero_step_retains_terms_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/zero-step-retains-terms-fixture--f50a53e6274ee7593f11d49c.md) | 289 | `result-track:f50a53e6274ee7593f11d49cde9855da4b4ab88fb0c1937e1a53b0e41a907b4e` |
| 22 | `theorem` | [tail_uncertainty_rejects_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/declarations/tail-uncertainty-rejects-fixture--5247a8bd5043088e3890e836.md) | 296 | `result-track:5247a8bd5043088e3890e836bc09fc87492e18457ef154c170d13d79c7c21f74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
