# Verification target: GRWTSK.AlgebraicGeometry.AffineSpecPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a393f915645a676998354d2d946b8b32c9f084c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/AffineSpecPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/index.md) · [Full source](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a393f915645a676998354d2d946b8b32c9f084c`.

Source path: `GRWTSK/AlgebraicGeometry/AffineSpecPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/AffineSpecPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Certified`](../../../mathematics/Topology/PortFiber/Certified.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.AlgebraicGeometry.Scheme` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [system](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/system--e701557d3446cc3fcefb40c6.md) | 15 | `declaration-track:e701557d3446cc3fcefb40c6b29f7e811363af14951b3f0f14bf2d6ff5fa3530` |
| 2 | `def` | [schemeMap](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/schememap--054158abb60ff78cd8e1913c.md) | 30 | `declaration-track:054158abb60ff78cd8e1913c4db655914db5b1cf31acd641c4bf7aa0bcae32cf` |
| 3 | `theorem` | [map_apply](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/map-apply--354434627dbced756feeb299.md) | 36 | `result-track:354434627dbced756feeb2994a8020ca7a9c82ef784a75a67a189e8302e48181` |
| 4 | `theorem` | [schemeMap_apply](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/schememap-apply--bb6eea9594789adeed043cfe.md) | 43 | `result-track:bb6eea9594789adeed043cfe863fb63cc59abf82bb154e1bee4bc149ec059b44` |
| 5 | `theorem` | [schemeMap_identity](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/schememap-identity--8ad4b8e2f36b62dd69b26024.md) | 50 | `result-track:8ad4b8e2f36b62dd69b2602412a4bd4ed23d56279be44eea8407403041aba97b` |
| 6 | `theorem` | [schemeMap_comp](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/schememap-comp--5a08a91c4fc6ed2fa18dadc3.md) | 56 | `result-track:5a08a91c4fc6ed2fa18dadc380564bbb6012c713ad115f8a7728aeaf33231ca4` |
| 7 | `def` | [continuousCertificate](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/continuouscertificate--c2560329930f25a8803ce9dc.md) | 62 | `declaration-track:c2560329930f25a8803ce9dca593e80250a447ef5c7236f43db5d4b781ae0de3` |
| 8 | `def` | [continuousProperty](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/continuousproperty--603442c91412669db7e72c8e.md) | 68 | `declaration-track:603442c91412669db7e72c8e8c66b835d6dda1a7173e21f1f259cf7b8de2f7f9` |
| 9 | `def` | [integers](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/integers--78031d34d424ab2f46d1df22.md) | 75 | `declaration-track:78031d34d424ab2f46d1df225763d032ad4f94a6ebff23f75d8c9e3f555d8e46` |
| 10 | `def` | [rationals](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/rationals--6188405e233cb631ffc1d5aa.md) | 76 | `declaration-track:6188405e233cb631ffc1d5aaf3bea689b5c1ff9254b7e980f943aff7bf4999c1` |
| 11 | `def` | [complex](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/complex--40ec6fc4d2b5c5cdff775970.md) | 77 | `declaration-track:40ec6fc4d2b5c5cdff775970d6bcda9994300937022be474ca73445c7fa1d33f` |
| 12 | `def` | [complexToRational](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/complextorational--fb2c0cebf00358e5180cec17.md) | 80 | `declaration-track:fb2c0cebf00358e5180cec174cdddcf6d411889d4b66ba6ed96a2598f3d12b3d` |
| 13 | `def` | [rationalToInteger](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/rationaltointeger--9723613b0adeedb3971fcc04.md) | 84 | `declaration-track:9723613b0adeedb3971fcc04f8bd62ea01341d78852a76e0145857309568c3ed` |
| 14 | `def` | [arithmeticTowerPath](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/arithmetictowerpath--6054714a7926f96800d4f29d.md) | 88 | `declaration-track:6054714a7926f96800d4f29d9a785cd37fece135b88f5873fe496e057fc0c6b7` |
| 15 | `def` | [arithmeticTowerSchemeMap](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/arithmetictowerschememap--768052e31afc40d7ef59a442.md) | 96 | `declaration-track:768052e31afc40d7ef59a44247d92a30bb0ee5961445800642e549c81a6bf7ef` |
| 16 | `theorem` | [arithmeticTower_continuous](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/arithmetictower-continuous--17c0511cee86ffe774a86a13.md) | 102 | `result-track:17c0511cee86ffe774a86a134eae5d2ada99c0377f0a78d68c482327397e5444` |
| 17 | `theorem` | [arithmeticTower_map](../../../mathematics/AlgebraicGeometry/AffineSpecPort.lean/declarations/arithmetictower-map--5a565c03d8cf1411a908b3ed.md) | 108 | `result-track:5a565c03d8cf1411a908b3edd72fac7a73883a81e8af7435528b1107d95952fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
