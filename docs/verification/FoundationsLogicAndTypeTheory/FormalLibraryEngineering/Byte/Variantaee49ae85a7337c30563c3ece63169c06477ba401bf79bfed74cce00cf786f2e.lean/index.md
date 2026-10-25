# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Byte.Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d15a988249c9c3ddecbffb28dead03046c491a83",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d15a988249c9c3ddecbffb28dead03046c491a83`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Byte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/declarations/byte--f1211575287f60df84e9014e.md) | 18 | `declaration-track:f1211575287f60df84e9014efef3b1bd60245a2806b9c398dac285e71b71bc0e` |
| 2 | `def` | [toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/declarations/tonat--30db68c2d53768405edd68da.md) | 22 | `declaration-track:30db68c2d53768405edd68dad610b1418b26c307248e94d2267c77c7a0856c31` |
| 3 | `def` | [ofNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/declarations/ofnat--efaf16f52568be18ae49ae9d.md) | 24 | `declaration-track:efaf16f52568be18ae49ae9dbfac3760bc8e3fe1ca922039787ddc5cded8bf3e` |
| 4 | `structure` | [ByteCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/declarations/bytecodec--2708c94a556ac44f778a772a.md) | 27 | `declaration-track:2708c94a556ac44f778a772a6f27483c2685f182c6f655e99e6d64296d2de2ce` |
| 5 | `theorem` | [byteCodec_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/declarations/bytecodec-roundtrip--8184e32be32a6a1ba025cf94.md) | 32 | `result-track:8184e32be32a6a1ba025cf94f3be20ad3bf6014f84c5ff753d018baddd2f519a` |
| 6 | `def` | [msb0CodecTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e.lean/declarations/msb0codectarget--0e63bbbe2f8ddc0afe885c30.md) | 38 | `declaration-track:0e63bbbe2f8ddc0afe885c30a00dc436097f2d613bd746fcbeb93f5ea74bd93d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
