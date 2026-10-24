# Verification target: GRWTSK.Algebra.LinearAlgebra.KarnaughMap.Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ff818204f4ef8c37b4daa4501ef3d896ff5d9c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ff818204f4ef8c37b4daa4501ef3d896ff5d9c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.TruthTable` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.Hypercube.Gray` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KarnaughMap.KMap](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-kmap--5ca550e2393ebec8da716625.md) | 11 | `declaration-track:5ca550e2393ebec8da7166259d97c0a3c1a0253781565d620d767c8c1f32d150` |
| 2 | `def` | [KarnaughMap.rowBit](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-rowbit--f9a06c0d5973acd1838a6967.md) | 15 | `declaration-track:f9a06c0d5973acd1838a6967f2a314c620e8b7d7d7bed5efaee821e7d5008c59` |
| 3 | `def` | [KarnaughMap.colBit](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-colbit--7e98f071d13dc66de27d72aa.md) | 23 | `declaration-track:7e98f071d13dc66de27d72aae4a23eff01d193bbf15323a6e42eeca1b0da43ae` |
| 4 | `def` | [KarnaughMap.input](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-input--25dd6e25a8c9be3b254a67fe.md) | 36 | `declaration-track:25dd6e25a8c9be3b254a67fe48415fa238b3eb5addcab2c29c999762f76ff9f6` |
| 5 | `def` | [KarnaughMap.fromTruthTable](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-fromtruthtable--54b953a62fe151fa3ca2e7ed.md) | 48 | `declaration-track:54b953a62fe151fa3ca2e7ed4ec92688898ed8916238bed300a113364f2e4437` |
| 6 | `def` | [KarnaughMap.rowAxis](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-rowaxis--4445dd4c77cbc91b1101e666.md) | 54 | `declaration-track:4445dd4c77cbc91b1101e666b4f7c6174fc3fd05f49f6fc5336c22fbd333124c` |
| 7 | `def` | [KarnaughMap.colAxis](../../../../../mathematics/Algebra/LinearAlgebra/KarnaughMap/Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960.lean/declarations/karnaughmap-colaxis--ec68796a2df8344da91df940.md) | 59 | `declaration-track:ec68796a2df8344da91df940a648c119e806b03caf21c71c3818daff3b74eb4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
