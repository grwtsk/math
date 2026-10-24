# Verification target: GRWTSK.Algebra.WeilPairing.Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d452f31160b5e32ddbf0e8a6ea2a3061e4c8dfd8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean/index.md) · [Full source](../../../../mathematics/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d452f31160b5e32ddbf0e8a6ea2a3061e4c8dfd8`.

Source path: `GRWTSK/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Torsion` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Cellular.Phase` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MTorsionPoint](../../../../mathematics/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean/declarations/mtorsionpoint--b8a8602e4129735703f12c20.md) | 20 | `declaration-track:b8a8602e4129735703f12c20a110ab8b1cd56bd5f2fababfbcf68e810579bc5b` |
| 2 | `structure` | [WeilPairingContract](../../../../mathematics/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean/declarations/weilpairingcontract--bf24ebbb2f106452b6665e05.md) | 28 | `declaration-track:bf24ebbb2f106452b6665e0500e36f8982e601e088fad067fd9bc619ec47bdf3` |
| 3 | `theorem` | [weil_pairing_alternating](../../../../mathematics/Algebra/WeilPairing/Variant1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662.lean/declarations/weil-pairing-alternating--978bfe8ab51ceca70dc3b84a.md) | 44 | `result-track:978bfe8ab51ceca70dc3b84a6712134b048d69893c200029da19c7e97d35f631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
