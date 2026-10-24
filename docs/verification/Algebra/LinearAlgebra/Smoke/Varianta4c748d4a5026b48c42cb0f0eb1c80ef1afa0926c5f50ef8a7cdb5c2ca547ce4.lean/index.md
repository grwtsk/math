# Verification target: GRWTSK.Algebra.LinearAlgebra.Smoke.Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "264f5fb9b9da83680dfeea923ca27a8f08f6cfb6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `264f5fb9b9da83680dfeea923ca27a8f08f6cfb6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Kernel.Residue` — import line 7; external provider; requires a separately pinned dependency.
- `Think.Kernel.Checked` — import line 8; external provider; requires a separately pinned dependency.
- `Think.Pipeline.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Manuscript.All` — import line 10; external provider; requires a separately pinned dependency.
- `Think.Targets.RH` — import line 11; external provider; requires a separately pinned dependency.
- `Think.Targets.Modularity` — import line 12; external provider; requires a separately pinned dependency.
- `Think.Targets.PrimeGaps` — import line 13; external provider; requires a separately pinned dependency.
- `Think.Targets.NavierStokes` — import line 14; external provider; requires a separately pinned dependency.
- `Think.Targets.Kakeya` — import line 15; external provider; requires a separately pinned dependency.
- `Think.Targets.AnalyticContinuation` — import line 16; external provider; requires a separately pinned dependency.
- `Think.Targets.SieveTheory` — import line 17; external provider; requires a separately pinned dependency.
- `Think.Targets.AutomorphicForms` — import line 18; external provider; requires a separately pinned dependency.
- `Think.Targets.FiniteDataAsymptotics` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBridge](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitbridge--bdeca351cf0bbbffe30a7c16.md) | 30 | `declaration-track:bdeca351cf0bbbffe30a7c1609697ffa35611824d74df3e72921c5bd46781cfd` |
| 2 | `theorem` | [unitBridge_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitbridge-bijective--0bf1af40e781e742b42d4698.md) | 36 | `result-track:0bf1af40e781e742b42d4698e1b8a11cbce415a0d7fd6493672dae8a796433e9` |
| 3 | `def` | [unitModularStage](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitmodularstage--895fcef1b78d7fc3a30dcf93.md) | 46 | `declaration-track:895fcef1b78d7fc3a30dcf93d5db069171a70250496b3190eec86d2933e78cc3` |
| 4 | `theorem` | [unitModularStage_isProved](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitmodularstage-isproved--b69a25128432e42298d91dca.md) | 64 | `result-track:b69a25128432e42298d91dca98ab5218a3d325efe46d3b16f61623cbb2c0ba5a` |
| 5 | `def` | [unitBridge](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitbridge--a4e944d8234fada01d0ab726.md) | 69 | `declaration-track:a4e944d8234fada01d0ab726417335476f98a282c6bcc1715d8f22ac337647f6` |
| 6 | `def` | [unitQuotientStage](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitquotientstage--a97946fa8a097a4a92d56e71.md) | 75 | `declaration-track:a97946fa8a097a4a92d56e71a8e72251318761990dc7caeb6d840b3d747269bb` |
| 7 | `theorem` | [unitQuotientStage_isProved](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitquotientstage-isproved--5dd1190863f4fc1dc4ae6955.md) | 82 | `result-track:5dd1190863f4fc1dc4ae69553ab8b096f6b74049a6f3b2cdbd7d166c400b453a` |
| 8 | `theorem` | [unitCompactShell_hasResidue](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitcompactshell-hasresidue--9b99919e4c0f1ae35f550196.md) | 87 | `result-track:9b99919e4c0f1ae35f550196e5977d8b2791241075d5f1563a508b8c9fcf3f34` |
| 9 | `def` | [unitFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitfredholm--68fdcf574a35dc873154326b.md) | 92 | `declaration-track:68fdcf574a35dc873154326bc8b77944058c85b7254f188ecba37ffd55626c1b` |
| 10 | `theorem` | [unitFredholm_isProved](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/unitfredholm-isproved--028a372f5f6308b1ba3d32c2.md) | 98 | `result-track:028a372f5f6308b1ba3d32c207200d1208bffab77c4e866ba9d43e7f9332937a` |
| 11 | `def` | [smokeContext](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/smokecontext--8ba5351fe0f098aded2a1b14.md) | 142 | `declaration-track:8ba5351fe0f098aded2a1b1412fe2d1e2bb5f2a91d1ba6599b1f60d09ccbf1fd` |
| 12 | `theorem` | [centerWeightedPipeline_hasResidue](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/centerweightedpipeline-hasresidue--55d5be329ca6042c79c16377.md) | 146 | `result-track:55d5be329ca6042c79c16377d1900d852bd028982d072f19fc54d06bc0925cef` |
| 13 | `theorem` | [centerWeightedPipeline_residueCount](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/centerweightedpipeline-residuecount--9efc480c1b2b5d50ae3d9f5a.md) | 150 | `result-track:9efc480c1b2b5d50ae3d9f5a67b6fa786b3c6714e3ebe201bf4afe51ef27c815` |
| 14 | `def` | [dummyResidue](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/dummyresidue--0dcdd269d2ca19bf5c6caff9.md) | 180 | `declaration-track:0dcdd269d2ca19bf5c6caff9ffbb6700c5c500902de58b1604faad952031677c` |
| 15 | `def` | [dummyChecked](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/dummychecked--2e19684062baba653a5585b0.md) | 187 | `declaration-track:2e19684062baba653a5585b07274c1ef53e3ac5c66359d7c05d031cab1799a32` |
| 16 | `theorem` | [dummyChecked_hasResidue](../../../../../mathematics/Algebra/LinearAlgebra/Smoke/Varianta4c748d4a5026b48c42cb0f0eb1c80ef1afa0926c5f50ef8a7cdb5c2ca547ce4.lean/declarations/dummychecked-hasresidue--d9c5528898109974609d540a.md) | 190 | `result-track:d9c5528898109974609d540a5ded6413be565cc60d127e1def92b74338ddf080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
