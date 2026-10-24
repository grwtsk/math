# Verification target: GRWTSK.Topology.GeneralTopology.Ordered.Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04d703d0c699554f695a27adaf22a3feeaab935d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04d703d0c699554f695a27adaf22a3feeaab935d`.

Source path: `GRWTSK/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.ProjIcc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abs](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/abs--161ec4850ed9ba11ebb2e72c.md) | 37 | `declaration-track:161ec4850ed9ba11ebb2e72c80e2c386e04b87cc119120e811798eedbea38df4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/instance--804023f5c304c4640e9157b1.md) | 41 | `declaration-track:804023f5c304c4640e9157b194216850687dddc65d942e8b3bed2fa36dc7678c` |
| 3 | `theorem` | [abs_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/abs-apply--accac7e1ad978a894cb3f571.md) | 45 | `result-track:accac7e1ad978a894cb3f5714bf00d8ef9c92facd7a242d67894a0846d674cfa` |
| 4 | `instance` | [partialOrder](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/partialorder--7f2d86060ddd274b1e55b9a4.md) | 59 | `declaration-track:7f2d86060ddd274b1e55b9a411a1914a547120fbb5c0e6138ebdd76cf2f68a9e` |
| 5 | `theorem` | [le_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/le-def--b6a2d78f45d7d2b5b7b01c95.md) | 64 | `result-track:b6a2d78f45d7d2b5b7b01c95b486887c30dcfe89c7e2d4e549a474c5cfab9e24` |
| 6 | `theorem` | [lt_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/lt-def--f4eea27285d1296f58a87861.md) | 68 | `result-track:f4eea27285d1296f58a87861f8b5f8c5109a6f078881296b6dbd134f727356d8` |
| 7 | `instance` | [sup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/sup--4782281f2d30fe90a031663a.md) | 72 | `declaration-track:4782281f2d30fe90a031663ab646b6c5d0892b0fcd66944ffd9df6c1c6cfa81e` |
| 8 | `theorem` | [sup_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/sup-coe--71114dd0a8e460a7d9c5fb67.md) | 77 | `result-track:71114dd0a8e460a7d9c5fb67560cf50554264ef825a76ae9fec149c7e5e58d85` |
| 9 | `theorem` | [sup_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/sup-apply--c67b6d069e9019301b44e7e0.md) | 83 | `result-track:c67b6d069e9019301b44e7e02e8a2a5c30aeeef0db2425a1b2941cec03c63849` |
| 10 | `instance` | [semilatticeSup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/semilatticesup--e00a73cce91dc390c1a277cf.md) | 88 | `declaration-track:e00a73cce91dc390c1a277cf265fe1b5da3418805e56f785db65f5f72b1010f5` |
| 11 | `instance` | [inf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/inf--715560c737b86f5df539f19d.md) | 95 | `declaration-track:715560c737b86f5df539f19dc3d45fc6c37b56baf64ce38e122b3bbcf4b9c3c6` |
| 12 | `theorem` | [inf_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/inf-coe--242db51a71962d7a86a15f2c.md) | 100 | `result-track:242db51a71962d7a86a15f2c402f2f06da007a8426e5ab23d3d21b2330bd02a4` |
| 13 | `theorem` | [inf_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/inf-apply--0f48e510e95943a8ac7454b3.md) | 106 | `result-track:0f48e510e95943a8ac7454b321d37cfbfb1c64d8ba631cb3eff8046a00d0c4a8` |
| 14 | `instance` | [semilatticeInf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/semilatticeinf--2ae62c33b501b3dd614d83cd.md) | 111 | `declaration-track:2ae62c33b501b3dd614d83cd643cf0d98f8eecb77b5145038a52b505a4027321` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/instance--6a25aea79eb09288f0268b68.md) | 118 | `declaration-track:6a25aea79eb09288f0268b68b37f8804803cfa048d68a0f32557b08c3a30e355` |
| 16 | `theorem` | [sup'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/sup-apply--13f3cdd2b4e4c9a4e65958a6.md) | 126 | `result-track:13f3cdd2b4e4c9a4e65958a6bfa67f917132292eafd4892c0d4838265d738669` |
| 17 | `theorem` | [sup'_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/sup-coe--ae4660b560958d40cf48ae3d.md) | 132 | `result-track:ae4660b560958d40cf48ae3d4817c59cfc82d8a76bf1f90aeb8268f977e94388` |
| 18 | `theorem` | [inf'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/inf-apply--5884f890d5a6e2501ff7b369.md) | 144 | `result-track:5884f890d5a6e2501ff7b36961d4eaa785d3b09981799c93ab4d8230a8d06b41` |
| 19 | `theorem` | [inf'_coe](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/inf-coe--6e9d3e50482f92af400aae79.md) | 150 | `result-track:6e9d3e50482f92af400aae79640cdf63d1101ab24f6379c0c4de5f001c1cd528` |
| 20 | `def` | [IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/iccextend--48ad3baf07e1431848920cf0.md) | 164 | `declaration-track:48ad3baf07e1431848920cf06522c0733a4a0ca4fe842cfe66ef4d966fa00438` |
| 21 | `theorem` | [coe_IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/declarations/coe-iccextend--13b9ee1a9fe0ddcc4316bc18.md) | 169 | `result-track:13b9ee1a9fe0ddcc4316bc18ddccda458ccbe663366a14516034fb716906c832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
