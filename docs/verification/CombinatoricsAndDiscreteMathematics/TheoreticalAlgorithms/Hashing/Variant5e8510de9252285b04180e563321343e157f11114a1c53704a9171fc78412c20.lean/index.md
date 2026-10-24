# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashing.Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "289a9444e037583a2cf62be745915c771ea0ee9c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `289a9444e037583a2cf62be745915c771ea0ee9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.IO` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/hashmemo--d9027eaf3e9deb5109170f43.md) | 24 | `declaration-track:d9027eaf3e9deb5109170f43209a2e3a28f85d8d9034a32a989f1d6e74fa43f4` |
| 2 | `def` | [insertDeps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/insertdeps--9eebff59700c981e48a02e01.md) | 40 | `declaration-track:9eebff59700c981e48a02e0111c03166fe98f1035e4d36bf1ba3a0af12d039c2` |
| 3 | `def` | [HashMemo.filterByRootModules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/hashmemo-filterbyrootmodules--28329023cb0b5d8292ddd8b6.md) | 53 | `declaration-track:28329023cb0b5d8292ddd8b6a82f5078b7ace473ed8c909a2e5a3f1420a146e5` |
| 4 | `abbrev` | [HashM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/hashm--c99fcdb1b7c2a00c01a2dc82.md) | 63 | `declaration-track:c99fcdb1b7c2a00c01a2dc82765e0e59460a95d628aa7ec8d851aa307d1cf84c` |
| 5 | `def` | [getFileImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/getfileimports--1776245cdd4bd4a6dbc7a539.md) | 72 | `declaration-track:1776245cdd4bd4a6dbc7a53992ba3e6e2746602fc472ba69d98990ff242b398a` |
| 6 | `def` | [hashFileContents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/hashfilecontents--5e2583f688f916e18bcb0ff5.md) | 83 | `declaration-track:5e2583f688f916e18bcb0ff5f0ee44b9f4cd9cc1e3efe4a1d4c1266f4d11757d` |
| 7 | `def` | [getRootHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/getroothash--515302d78350c47626d187b4.md) | 98 | `declaration-track:515302d78350c47626d187b4a879b1280cdf91d63026fd314c3c10085d628b08` |
| 8 | `def` | [getHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/gethash--44a5fe0a16f5633228cdf9bb.md) | 117 | `declaration-track:44a5fe0a16f5633228cdf9bbc04b6e8a927e5f4216eed7168db792c7d125f92a` |
| 9 | `def` | [roots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/roots--5d4301d2a39d8bc240bfc281.md) | 160 | `declaration-track:5d4301d2a39d8bc240bfc281c76955a3cc163c9cf1e5a89c3ad10edb4d05bbbb` |
| 10 | `def` | [getHashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant5e8510de9252285b04180e563321343e157f11114a1c53704a9171fc78412c20.lean/declarations/gethashmemo--1f456b7bd7afcf425d0f67c3.md) | 165 | `declaration-track:1f456b7bd7afcf425d0f67c308057165b1cf7fe35dae32fe9fd088131b2c3a97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
