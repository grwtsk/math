# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22ef4750415e12e311c402755afecc21ef492158",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22ef4750415e12e311c402755afecc21ef492158`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Interval` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiscoveryConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/discoveryconfig--75e0838d183ed7bc6fbc31af.md) | 45 | `declaration-track:75e0838d183ed7bc6fbc31af03013ea8716e354007947eed6204f1856ff6237f` |
| 2 | `def` | [DiscoveryConfig.toGlobalOptConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/discoveryconfig-toglobaloptconfig--fa29545015a8ee877acdad3c.md) | 59 | `declaration-track:fa29545015a8ee877acdad3cf9dee396e700e6643d4cdad69492ba2a7525d173` |
| 3 | `def` | [DiscoveryConfig.toEvalConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/discoveryconfig-toevalconfig--052580b82c515b664727e122.md) | 66 | `declaration-track:052580b82c515b664727e1220960318f0410e37858c7ae980f03fb0fbb6c607a` |
| 4 | `structure` | [VerifiedGlobalMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedglobalmin--9ab89505145e263a25e139c3.md) | 81 | `declaration-track:9ab89505145e263a25e139c3a50146f70c197c7b423740764d55104e5d6f3f33` |
| 5 | `def` | [VerifiedGlobalMin.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedglobalmin-width--62e73751c26aaeb502811f04.md) | 96 | `declaration-track:62e73751c26aaeb502811f04542ba9af9a8320fe6d2499b5ac30338623418ca5` |
| 6 | `def` | [VerifiedGlobalMin.isTight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedglobalmin-istight--d00bbfba959d819fe374ea80.md) | 100 | `declaration-track:d00bbfba959d819fe374ea801c121d23f52ebf734ffbf34a5d3ac6027b2e7667` |
| 7 | `structure` | [VerifiedGlobalMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedglobalmax--c54468942bde10604a05e040.md) | 112 | `declaration-track:c54468942bde10604a05e040cdfabbe979c2aed3ed6329af2244419e1d54207f` |
| 8 | `def` | [VerifiedGlobalMax.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedglobalmax-width--60bf451fd40f346006a43930.md) | 127 | `declaration-track:60bf451fd40f346006a4393030cfe7733d96f23584508aa4fe65ba6f2656bbad` |
| 9 | `inductive` | [VerifiedRootStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedrootstatus--f0e2ab2340db0982354ee211.md) | 133 | `declaration-track:f0e2ab2340db0982354ee2116e4328d608c6cb56e263d510542121ac863a995e` |
| 10 | `structure` | [VerifiedRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedroot--4ab4c319095b1a9a2f4db7c6.md) | 147 | `declaration-track:4ab4c319095b1a9a2f4db7c64c48c0758dc98ee4faf6496c64dc13e2437c4288` |
| 11 | `def` | [VerifiedRoot.approxLocation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedroot-approxlocation--2c2c6d15f4df1c7af1fc05cf.md) | 156 | `declaration-track:2c2c6d15f4df1c7af1fc05cf9f3448ae20074b5f23de2b57ad36cf610ea66ccf` |
| 12 | `def` | [VerifiedRoot.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedroot-width--335c9b5de5ca4282fc39221d.md) | 160 | `declaration-track:335c9b5de5ca4282fc39221d9e51b526e5b3f4157786fd4671a54e1fc2eb0183` |
| 13 | `structure` | [UniqueVerifiedRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/uniqueverifiedroot--bbc2ef3910872c6ffa3266d2.md) | 164 | `declaration-track:bbc2ef3910872c6ffa3266d28dad98d2be4f7b2e29c916c561c4f8c3b20b5697` |
| 14 | `structure` | [VerifiedIntegral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedintegral--0af490fea5b31bef07b09b1e.md) | 179 | `declaration-track:0af490fea5b31bef07b09b1e075541b126ba47274f9a6e6657387e7c5bfc566c` |
| 15 | `def` | [VerifiedIntegral.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedintegral-width--b93f59b2457b956cca3b8c35.md) | 192 | `declaration-track:b93f59b2457b956cca3b8c353022d8f1475cf1becf036a777f1824998ea4ec96` |
| 16 | `structure` | [VerifiedUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedupperbound--6362d96e154766d7569bfa8f.md) | 201 | `declaration-track:6362d96e154766d7569bfa8fe429e53a5a1d65ed185a8eb5875f1a05b294a16e` |
| 17 | `structure` | [VerifiedLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedlowerbound--845e2cf4d90b56cadcf91a67.md) | 211 | `declaration-track:845e2cf4d90b56cadcf91a67330efdc4c72dcf1b3944bdb23ec52c8dd798c4dc` |
| 18 | `structure` | [VerifiedBoxBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantb277cf9c704c65e2fc32185a881772880e2aa201303964e60a8080ed84862b15.lean/declarations/verifiedboxbound--d2b24c05900e9e643dccd1fb.md) | 220 | `declaration-track:d2b24c05900e9e643dccd1fb110f133098722746a7923a3892d2c9d3fdd41ea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
