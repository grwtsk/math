# Verification target: GRWTSK.Analysis.Operator.UnboundedPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "915b034a9bfad4796c51a92376e442b16cfc4603",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/UnboundedPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `915b034a9bfad4796c51a92376e442b16cfc4603`.

Source path: `GRWTSK/Analysis/Operator/UnboundedPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/UnboundedPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UnboundedOperator](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/unboundedoperator--3d185144a2090873345062b5.md) | 11 | `declaration-track:3d185144a2090873345062b51798ac1aa51b39ce9c03b70e2440670698089977` |
| 2 | `def` | [apply](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/apply--c29a6e3b67c80789ed3128f7.md) | 23 | `declaration-track:c29a6e3b67c80789ed3128f7b2c8ef25fd20af71153e102733918332a151fe5a` |
| 3 | `structure` | [Port](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/port--b91995b4eff6444eeabdcda4.md) | 29 | `declaration-track:b91995b4eff6444eeabdcda44931bc657865f7d1447c6d3916f81d681f67cd76` |
| 4 | `def` | [domainMap](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/domainmap--5db082678d7c8218fda6533c.md) | 50 | `declaration-track:5db082678d7c8218fda6533c70f460ecc4690d5c7198f8a0fe772a00fde75ffc` |
| 5 | `theorem` | [coe_domainMap](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/coe-domainmap--6afa64eddb41ddf77e950ad3.md) | 60 | `result-track:6afa64eddb41ddf77e950ad3f3ecaa2b725a74a841ab15a4ed01211f90fd4323` |
| 6 | `def` | [defect](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/defect--4b63fd27e01fd175eb456a26.md) | 64 | `declaration-track:4b63fd27e01fd175eb456a26d43881a62b32cd073a3c7c067705f022de17fb60` |
| 7 | `def` | [Intertwines](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/intertwines--fa4d741d5b82a4f1b267de26.md) | 68 | `declaration-track:fa4d741d5b82a4f1b267de266fe9d8a7a9b7003d3bd25b505e71b38ca7dfea51` |
| 8 | `theorem` | [intertwines_iff_defect_eq_zero](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/intertwines-iff-defect-eq-zero--9de68030269876e923afac6a.md) | 72 | `result-track:9de68030269876e923afac6ad1f392d503d26f8f6a54d056dd59cc6aa86f95c0` |
| 9 | `def` | [identity](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/identity--dd2d899cce37bb71d3ab2ca4.md) | 77 | `declaration-track:dd2d899cce37bb71d3ab2ca48e14acfb0ebb20e51476379db1865b7565ec8239` |
| 10 | `theorem` | [identity_intertwines](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/identity-intertwines--8525d28b8a59628aa628faee.md) | 82 | `result-track:8525d28b8a59628aa628faee25aa164af7d7886f5ac4522aa52fe86ce5ac160f` |
| 11 | `def` | [comp](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/comp--0ff8b020cdfa56e749cd196e.md) | 89 | `declaration-track:0ff8b020cdfa56e749cd196e0c20c54da99d6d9f563170b50822ec2eeed715cb` |
| 12 | `theorem` | [domainMap_comp_apply](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/domainmap-comp-apply--83bd01cd81b3832bc30bbf91.md) | 94 | `result-track:83bd01cd81b3832bc30bbf91ff64c400f0c7a6dc2e9f4dc6dac1bad4aa2ce2d7` |
| 13 | `theorem` | [defect_comp_apply](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/defect-comp-apply--bef0669531e6e92db82ded09.md) | 101 | `result-track:bef0669531e6e92db82ded09c90f750fbe1247b1bf523300fa0ce6f36b2229a6` |
| 14 | `theorem` | [defect_comp](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/defect-comp--4fa363e0e3b496dfbb2c877f.md) | 108 | `result-track:4fa363e0e3b496dfbb2c877f7c98b2cddabd73b10929c5683fdd59b8bf91c659` |
| 15 | `theorem` | [Intertwines.comp](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/intertwines-comp--138cefb16434313ce1a069b0.md) | 116 | `result-track:138cefb16434313ce1a069b095836aa803fcd8558d7bf8d0f46526a10ca1ee2f` |
| 16 | `structure` | [ExactLift](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/exactlift--f48786a96ca2cc213304802e.md) | 125 | `declaration-track:f48786a96ca2cc213304802e13ebb7aaf09b1790eed5f43be1872d9d095a33c1` |
| 17 | `def` | [comp](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/comp--a0ae2b7deb8e97abe4382ead.md) | 132 | `declaration-track:a0ae2b7deb8e97abe4382ead93ab9fc36a3d9c44267aeb3d12a9363e7c486439` |
| 18 | `structure` | [FramedPort](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/framedport--4c2c0407bdfbb3169d48265c.md) | 141 | `declaration-track:4c2c0407bdfbb3169d48265c85c8e8869db5fd567c9f398609797a0ae7b21c0b` |
| 19 | `def` | [toPort](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/toport--3c9adeb7a1c8a07330961245.md) | 148 | `declaration-track:3c9adeb7a1c8a0733096124514a8a7af90be4af26258fc6411d9ccabc986fc76` |
| 20 | `def` | [Intertwines](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/declarations/intertwines--4cd7fa7293c6f86028a018db.md) | 153 | `declaration-track:4cd7fa7293c6f86028a018db045c48383d1e2385819192787d849ec7ec54411b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
