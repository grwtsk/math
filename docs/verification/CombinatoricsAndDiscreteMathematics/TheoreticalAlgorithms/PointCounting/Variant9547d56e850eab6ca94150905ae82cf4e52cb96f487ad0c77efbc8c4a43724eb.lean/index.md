# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointCounting.Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9525805c07dc70cc0ce1f2787811572ecc5c5bd0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9525805c07dc70cc0ce1f2787811572ecc5c5bd0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.GroupLaw` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GoodReductionCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/goodreductioncertificate--e660aed3f68377b64ac23fdf.md) | 16 | `declaration-track:e660aed3f68377b64ac23fdfcebcaa7fb234e9cd195b2b278d6663091158d917` |
| 2 | `structure` | [PointCountData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/pointcountdata--6966405a0e476cd4eefd3041.md) | 25 | `declaration-track:6966405a0e476cd4eefd30416e1edf9fd1dd3ef1edb6b2e95ae57d163986c4c4` |
| 3 | `def` | [appendMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/appendmap--bd99f326db8f10a0e588ff5b.md) | 34 | `declaration-track:bd99f326db8f10a0e588ff5bc631c5149cac4917b8bd5f70969262f2b598bcff` |
| 4 | `def` | [affineSolutions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/affinesolutions--7408d8eb96c3c26ea00f1192.md) | 40 | `declaration-track:7408d8eb96c3c26ea00f1192eb4a2bc4d89dcfa2aed34a9594cc7a085a4ae425` |
| 5 | `def` | [pointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/pointcount--2d3f84f2ba38e6b64778e7e5.md) | 54 | `declaration-track:2d3f84f2ba38e6b64778e7e5de4136ec8861fb6168c044051c37cb1eeb822d31` |
| 6 | `def` | [ap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/ap--f9bffb9fb06cbbe78a61db20.md) | 61 | `declaration-track:f9bffb9fb06cbbe78a61db20a14f71b1ad8597705ce126a58c8a63e5b2245927` |
| 7 | `theorem` | [pointCount_includes_infinity_once](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/pointcount-includes-infinity-once--a621f249e0f14fc9dee5a3be.md) | 67 | `result-track:a621f249e0f14fc9dee5a3be22099f4a3f1fa5280fe563adb9ad11d6c3aef4a0` |
| 8 | `def` | [exampleF2PointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/examplef2pointcount--f4fc7459c3f45f6053b79708.md) | 76 | `declaration-track:f4fc7459c3f45f6053b797089b2d3f08cec932d5b29b60f9d7ba302c6d9e153e` |
| 9 | `def` | [exampleF3PointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/examplef3pointcount--baa49c90c25aff3c9ff02cef.md) | 80 | `declaration-track:baa49c90c25aff3c9ff02cef8dd9af9632eb1004cdc0ddb254263c79521fd619` |
| 10 | `def` | [exampleF5PointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/examplef5pointcount--1b4935b4a3473781376cfbab.md) | 84 | `declaration-track:1b4935b4a3473781376cfbab53250e9bba048eff81918e7579d9feaf6594f014` |
| 11 | `theorem` | [exampleF2PointCount_eq_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/examplef2pointcount-eq-three--11191d9bd807937e962db092.md) | 87 | `result-track:11191d9bd807937e962db0923f0d2571b5572009a7b634edfe0bbb266ab4035f` |
| 12 | `theorem` | [exampleF3PointCount_eq_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/examplef3pointcount-eq-four--1a6070506c3e2e8e406e31e3.md) | 91 | `result-track:1a6070506c3e2e8e406e31e3e7668ce48a2641566ce53cbc63ff1f3af254c798` |
| 13 | `theorem` | [exampleF5PointCount_eq_nine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variant9547d56e850eab6ca94150905ae82cf4e52cb96f487ad0c77efbc8c4a43724eb.lean/declarations/examplef5pointcount-eq-nine--c164b75c9ae60a1c6e201acd.md) | 95 | `result-track:c164b75c9ae60a1c6e201acd985bb808ebb088875f8e723dbedac6b1ca000fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
