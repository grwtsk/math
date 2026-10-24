# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerWalkConcat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3aaa6b1f7b042d1548fb141708399427e99b3b5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3aaa6b1f7b042d1548fb141708399427e99b3b5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountedWalk.concat](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-concat--d7e364cf2e0cb6e5f4a7395a.md) | 22 | `declaration-track:d7e364cf2e0cb6e5f4a7395aeac350aad7d7f534b4cdbae52198f7447728a9fb` |
| 2 | `theorem` | [CountedWalk.concat_edges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-concat-edges--961c5b4212623d50bb8e3f72.md) | 35 | `result-track:961c5b4212623d50bb8e3f72a0063749e312c8a0c8f263e2ba5cf2a78fe646c7` |
| 3 | `def` | [CountedWalk.insertClosedAtEnd](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-insertclosedatend--6e335ff0eca5f82fc6aa3849.md) | 49 | `declaration-track:6e335ff0eca5f82fc6aa3849f772d1bfd3b727d1194c4e6b27fb67e2e687e030` |
| 4 | `theorem` | [CountedWalk.concat_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-concat-used--13256674bd1bcac74e69bed6.md) | 59 | `result-track:13256674bd1bcac74e69bed6cc78e6f16f53e13237aa1cdc22221efa5e0d8c2b` |
| 5 | `theorem` | [CountedWalk.concat_nodup](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-concat-nodup--f48b8ecd9f849575183f636f.md) | 73 | `result-track:f48b8ecd9f849575183f636fd9545a7f1fcc237fe1dd46d040942724b000e2e6` |
| 6 | `def` | [FreshCountedTrail.concat](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-concat--e48b00a11b3747fd797012a4.md) | 92 | `declaration-track:e48b00a11b3747fd797012a4e611ecccdb14a3f0a382456ca84d6e28fba08be4` |
| 7 | `theorem` | [FreshCountedTrail.concat_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-concat-used--c4ffc4be729165236a2f1e0b.md) | 105 | `result-track:c4ffc4be729165236a2f1e0b827141b6616bca7961e9d03ecf801253068ac344` |
| 8 | `theorem` | [FreshCountedTrail.concat_used_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-concat-used-card--b3df46d27ff19cd9b19bd4d8.md) | 118 | `result-track:b3df46d27ff19cd9b19bd4d8e4fc22c9ca5c64e33b8767be4ea8c244f7025f61` |
| 9 | `theorem` | [FreshCountedTrail.concat_unused_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-concat-unused-card--cd0602e0d27d54b946365368.md) | 130 | `result-track:cd0602e0d27d54b946365368f2f65c2476b7e68fc112d54de92b0f1f42e724c1` |
| 10 | `def` | [FreshCountedTrail.spliceClosedAtFinish](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceclosedatfinish--7245211a2e6d3c625ee7f121.md) | 155 | `declaration-track:7245211a2e6d3c625ee7f121e29095318c38e27958e6d71b92174b6b85089938` |
| 11 | `theorem` | [FreshCountedTrail.spliceClosedAtFinish_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceclosedatfinish-used--5443968b786b539b9ae0d29d.md) | 166 | `result-track:5443968b786b539b9ae0d29d848dfcfafabf342069975fd059bb7a2accb32622` |
| 12 | `theorem` | [FreshCountedTrail.spliceClosedAtFinish_strict](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceclosedatfinish-strict--d98b31f92c30aa6f5a4bc0a7.md) | 177 | `result-track:d98b31f92c30aa6f5a4bc0a7010b75fc3193729eac74807ee4d46891912285a2` |
| 13 | `def` | [FreshCountedTrail.spliceAtFactorization](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceatfactorization--56b2bd0f97bfbf2a42498313.md) | 196 | `declaration-track:56b2bd0f97bfbf2a42498313c607a57ecc2858cbf6fbf42b93c92788a74faa51` |
| 14 | `theorem` | [FreshCountedTrail.spliceAtFactorization_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceatfactorization-used--f7bf736190a6e7469757dcb8.md) | 214 | `result-track:f7bf736190a6e7469757dcb83921d1f868b405880494a9232d9606ed01d6ab17` |
| 15 | `theorem` | [FreshCountedTrail.spliceAtFactorization_strict](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceatfactorization-strict--8e94aa158c4a6ebb2d60c2fc.md) | 234 | `result-track:8e94aa158c4a6ebb2d60c2fc7ff37358b622fbb1bb326a4615fadaafb035f2f5` |
| 16 | `theorem` | [FreshCountedTrail.spliceAtFactorization_endpoint](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceatfactorization-endpoint--be262530b91258098155e5a6.md) | 270 | `result-track:be262530b91258098155e5a6211554e9d264cd20b0ff629da17c6e8d7a3d3295` |
| 17 | `theorem` | [FreshCountedTrail.spliceAtFactorization_closed](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-spliceatfactorization-closed--b3f30ec54122670cc63924c0.md) | 285 | `result-track:b3f30ec54122670cc63924c0510b046fcaaf6b057426817e87ad2fac429ed9b4` |
| 18 | `def` | [FreshCountedTrail.factorAtStart](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-factoratstart--9261801ec3feaf5376bf506a.md) | 303 | `declaration-track:9261801ec3feaf5376bf506a0b065667f7203619b82ec274849e4c96889e5b84` |
| 19 | `theorem` | [FreshCountedTrail.factorAtStart_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-factoratstart-used--a5ec92753cae4b585f71de0e.md) | 313 | `result-track:a5ec92753cae4b585f71de0e1fb88933273776ba57bfe337a66ce047dd2a1af2` |
| 20 | `def` | [FreshCountedTrail.factorAtFinish](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-factoratfinish--1e2a1b45f6897ff39c042db9.md) | 327 | `declaration-track:1e2a1b45f6897ff39c042db915cf017d82c1260b677210ae84f0ccd64c0f7d30` |
| 21 | `theorem` | [FreshCountedTrail.factorAtFinish_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-factoratfinish-used--610ee28afe404787239cf7fc.md) | 337 | `result-track:610ee28afe404787239cf7fc36e3101b8f23f9621e9d2d776b52b763addb1c28` |
| 22 | `def` | [CountedWalk.Visits](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-visits--6da8dadc6594c3a57f0e04a7.md) | 354 | `declaration-track:6da8dadc6594c3a57f0e04a78d8e498e4cdd7882d30266d7d847d83d21cd4d6b` |
| 23 | `theorem` | [CountedWalk.factor_of_visits](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-factor-of-visits--26f6f722aadb05fdd20595c4.md) | 364 | `result-track:26f6f722aadb05fdd20595c4eb226e8e194609cbe86b1eca8f9ffe892f60df22` |
| 24 | `theorem` | [CountedWalk.visits_finish](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-visits-finish--efe7164fc20d1d6234188497.md) | 378 | `result-track:efe7164fc20d1d62341884978ef12d18aa56b8b8367632476ad55a9ad1e7aa3a` |
| 25 | `theorem` | [CountedWalk.visits_start](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-visits-start--436047801901ed10b99b800d.md) | 387 | `result-track:436047801901ed10b99b800dca20e162e369881d71e749222662a0bc677c2d56` |
| 26 | `theorem` | [CountedWalk.visits_append_of_visits](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-visits-append-of-visits--d2403341cacc9f38e68cd52b.md) | 399 | `result-track:d2403341cacc9f38e68cd52b8361ee5b876f9af5ffffcdf05c2c2c47be30cb3c` |
| 27 | `theorem` | [CountedWalk.visits_previous_finish](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/countedwalk-visits-previous-finish--71fa9d724b8579d6a52820de.md) | 415 | `result-track:71fa9d724b8579d6a52820de5cd431a0e69d97f667aee4296fce76ada64c128b` |
| 28 | `theorem` | [FreshCountedTrail.factor_of_visits](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-factor-of-visits--1b4a8a8b2d3e0c5150fe21a8.md) | 430 | `result-track:1b4a8a8b2d3e0c5150fe21a80e3530d363aba05c3ef2383fbc01dfce3abe2983` |
| 29 | `theorem` | [FreshCountedTrail.exists_splice_of_visit](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-exists-splice-of-visit--6bb0bdaba5048396d86b4c24.md) | 470 | `result-track:6bb0bdaba5048396d86b4c244e180d19d424dadbd2649e766806963a4bde9c03` |
| 30 | `theorem` | [FreshCountedTrail.exists_strict_splice_of_visit](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/declarations/freshcountedtrail-exists-strict-splice-of-visit--aaeec8b085448985891cb5c0.md) | 499 | `result-track:aaeec8b085448985891cb5c0bce134d7e001f234f17f829fa4623111bf2f2184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
