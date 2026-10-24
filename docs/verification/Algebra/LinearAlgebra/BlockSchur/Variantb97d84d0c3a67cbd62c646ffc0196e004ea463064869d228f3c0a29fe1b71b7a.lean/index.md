# Verification target: GRWTSK.Algebra.LinearAlgebra.BlockSchur.Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b227b10836aea0d2c67ac1fee7152eb60731e48c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b227b10836aea0d2c67ac1fee7152eb60731e48c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ScalarSchur` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/provenanceinclusion--16a8a529e2702fde74ea08c3.md) | 37 | `declaration-track:16a8a529e2702fde74ea08c3c159ddc1d58ad961e080617752ca38fe079bc4c1` |
| 2 | `def` | [autonomousInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/autonomousinclusion--be6b3ca884d0d0879852a721.md) | 45 | `declaration-track:be6b3ca884d0d0879852a72195a1c17d710ea46e38d64b06d895513524d27972` |
| 3 | `theorem` | [provenanceInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/provenanceinclusion-apply--2afafd95c69c27e4e4f7854a.md) | 53 | `result-track:2afafd95c69c27e4e4f7854a66fe5a6a210ef961b5f9647f8105feb66ed2c38e` |
| 4 | `theorem` | [autonomousInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/autonomousinclusion-apply--ef9fedc279e1554dd402981d.md) | 58 | `result-track:ef9fedc279e1554dd402981d6028e0a9c9f6d4b087eaae2bbda79ae2912ef9e7` |
| 5 | `structure` | [BlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/blockschursolver--c0ffb5eda59528d1890df539.md) | 66 | `declaration-track:c0ffb5eda59528d1890df539a2fc25cefd0d25ceaf688aecd84c2ad57dd361f2` |
| 6 | `def` | [project](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/project--eaab1a03a508485435457928.md) | 79 | `declaration-track:eaab1a03a50848543545792829d7f596f18f6119652eafe495d257cae89d0f1e` |
| 7 | `theorem` | [project_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/project-apply--cff9afba3e1911854ab6b630.md) | 87 | `result-track:cff9afba3e1911854ab6b6304ea4cba6ace52dbf71c7eb4fc90fbb972c6cdf19` |
| 8 | `theorem` | [project_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/project-idempotent--5afac810b9317555185463e7.md) | 92 | `result-track:5afac810b9317555185463e77313387a57f1ad43f3388d9390313043f5551c4f` |
| 9 | `theorem` | [project_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/project-orthogonal--bcc0863a450ba403e38bf7d5.md) | 97 | `result-track:bcc0863a450ba403e38bf7d53be4aec08d69ad26ed85943cab3d56d7295ec1c8` |
| 10 | `def` | [projector](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/projector--666eeb70436c775ee78ac656.md) | 106 | `declaration-track:666eeb70436c775ee78ac656c88773f10d3aaaa7258a9acc04f6ad82801bc0b7` |
| 11 | `theorem` | [project_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/project-autonomous--22b625b587df704fae2ac3c7.md) | 111 | `result-track:22b625b587df704fae2ac3c776d738f30e5bae9a9f23b7a601de14f15b3c1427` |
| 12 | `theorem` | [residual_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/residual-autonomous--1b11e4691f8a1f4c3291eda4.md) | 115 | `result-track:1b11e4691f8a1f4c3291eda461e6bf4b9681d79b081d15380b77d6dd29441232` |
| 13 | `def` | [schurForm](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/schurform--53a04873314174f038bc37a0.md) | 123 | `declaration-track:53a04873314174f038bc37a05a783605846b933a44d0f0cf703e59e2ff2f91d3` |
| 14 | `theorem` | [schurForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/schurform-nonnegative--cf1624d25bb038ba75c45d4f.md) | 127 | `result-track:cf1624d25bb038ba75c45d4fa1495a9129b206738f0c3feb1e19d9bb6e3685aa` |
| 15 | `theorem` | [schurForm_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/schurform-eq-sub--4096549e7b9009de817143a7.md) | 133 | `result-track:4096549e7b9009de817143a7fa5207fba9657dd3478ce220054b9dce997b8bd5` |
| 16 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/schur-diagonal-nonnegative--23bdeb9691da29a72d41f22e.md) | 145 | `result-track:23bdeb9691da29a72d41f22eb389eae9b0b944685b17e9530f2c05bbe162f9af` |
| 17 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/declarations/autonomous-energy-decomposition--0840634c0109b3b55c4f79c9.md) | 155 | `result-track:0840634c0109b3b55c4f79c9e380763b93e9f8a1ffb329a0a31bfd34d8246b3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
