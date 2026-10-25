# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7ec3cce7730bc478ae64f64b77c3af8d0f10d02",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7ec3cce7730bc478ae64f64b77c3af8d0f10d02`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/xsq--f5ad8c6e5f5dbd3147c6e833.md) | 37 | `declaration-track:f5ad8c6e5f5dbd3147c6e8336ff66a6ec0f92eb8c8e5fa0c75fb91d933ce114c` |
| 2 | `def` | [xSq_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/xsq-supported--bb178c70285e37d1f048d7fb.md) | 40 | `declaration-track:bb178c70285e37d1f048d7fbe30a946184cb90684dabfd07fb43159b7a1e2732` |
| 3 | `def` | [exprSquare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/exprsquare--d32a8f2a06a7985a39baa2a0.md) | 44 | `declaration-track:d32a8f2a06a7985a39baa2a0a1327c5485f297b2ec0582ad420623e42c37803f` |
| 4 | `def` | [exprSquare_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/exprsquare-supported--f4384c8b2e5f342d37a24010.md) | 50 | `declaration-track:f4384c8b2e5f342d37a240103f4a690a51d643575a25c78b39926e0740425043` |
| 5 | `def` | [exprSinCos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/exprsincos--fe6c0c14c57743a9c2b25206.md) | 58 | `declaration-track:fe6c0c14c57743a9c2b2520632ab1623e7b2120c502d3f95337e72d387cb2e4c` |
| 6 | `def` | [exprSinCos_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/exprsincos-supported--f17f28c297ba3ee463fd29f7.md) | 62 | `declaration-track:f17f28c297ba3ee463fd29f78fc537f9add34026855b4de57422d977f9504103` |
| 7 | `def` | [I01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/i01--bd7a0bb7f223e12e563c747f.md) | 70 | `declaration-track:bd7a0bb7f223e12e563c747f3c5438246cd965c51ddc65686bd5a0d7565aa156` |
| 8 | `def` | [symInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/syminterval--a6caa74da017ce94552eab50.md) | 73 | `declaration-track:a6caa74da017ce94552eab5051d78a139f94a3afebf777ea10a273d7cfa96667` |
| 9 | `def` | [smallInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/smallinterval--1f006ab63654c51bb004e353.md) | 76 | `declaration-track:1f006ab63654c51bb004e35305d061d3c8d9c5d46457f232477e4cc002d60519` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--65b4ee2dbf2f089a7a65d0d0.md) | 80 | `declaration-track:65b4ee2dbf2f089a7a65d0d03de0e2017bda7a8e659abfbfa5fce48379dd3b87` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--7ccb74cb6f2c38dce4d55053.md) | 84 | `declaration-track:7ccb74cb6f2c38dce4d550530af28171125ac5a5e40f7930676a631b0a7848fa` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--f6671dbeaab8fee67ad630cc.md) | 91 | `declaration-track:f6671dbeaab8fee67ad630cc1c6ded66364106375fa5c5d975d51aa3397a37a0` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--4510f32eb510c6edf3e13545.md) | 96 | `declaration-track:4510f32eb510c6edf3e1354505860c7d45e3a4da6cb36da4903ab4957d351069` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--4c5430dd2460a33568f858c1.md) | 104 | `declaration-track:4c5430dd2460a33568f858c1984036406215177d13d892fca7c2232c5f004fac` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--a1f8b177bd0150ed129c4d33.md) | 109 | `declaration-track:a1f8b177bd0150ed129c4d338ad34bbd76c119bb4db74382558c39fdc7b853ea` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--3d2da684d6a4b8997ad64bc0.md) | 114 | `declaration-track:3d2da684d6a4b8997ad64bc01d552157dfd348cbe4b6209207c2490851cca1f5` |
| 17 | `def` | [xSq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/xsq--f13cacdacbc11fb024701d59.md) | 121 | `declaration-track:f13cacdacbc11fb024701d5953659eac68b06859e88532190d3328f739a1b9ee` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--bd0e53177adb5a1a650915da.md) | 125 | `declaration-track:bd0e53177adb5a1a650915da79b555976bf4d11432765dae51e84b184931a68e` |
| 19 | `def` | [exprXY](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/exprxy--cf031d84d85f7c955e5de5e7.md) | 132 | `declaration-track:cf031d84d85f7c955e5de5e77f03682b00b1052568b1141e2a5122608ea2736a` |
| 20 | `def` | [exprXY_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/exprxy-supported--40f96791385a362af6edbf0c.md) | 134 | `declaration-track:40f96791385a362af6edbf0c208994ef6082b5246dfcbcbc503e6a1ba4c2e03b` |
| 21 | `def` | [ρ_xy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/xy--26c4a5c399bd43bb691ca473.md) | 138 | `declaration-track:26c4a5c399bd43bb691ca4731ad67fec0d96c6173663484d4cd94e5def984f8b` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f719a31d16d52673ca3a89c902ec054599126887ec952010230bca35802443f.lean/declarations/example--a709444c29743d52705bccbc.md) | 141 | `declaration-track:a709444c29743d52705bccbc7058c74f091f081c7eec1519272943870065e694` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
