# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cache.Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bacebafa9cdc5e64a490627edef51f1a95a1777c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bacebafa9cdc5e64a490627edef51f1a95a1777c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.DiscrTree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/cache--11486339605e8465270bdf80.md) | 51 | `declaration-track:11486339605e8465270bdf80535fcc0d10fe122f883e3f43f33d99dc988cc313` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/instance--88888675ec2a2d6195f06db8.md) | 55 | `declaration-track:88888675ec2a2d6195f06db8d8931ce8b01a5fdfaaafdc92d9688729710b2891` |
| 3 | `def` | [Cache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/cache-mk--c7457fd776a2324be757ab2b.md) | 59 | `declaration-track:c7457fd776a2324be757ab2b992a0c829e133f5bc51b849bf98dac53701401c2` |
| 4 | `def` | [Cache.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/cache-get--488ad074486d3ba8e7797f78.md) | 68 | `declaration-track:488ad074486d3ba8e7797f7828d0b455555ae99c325047d004ab49eb413995ac` |
| 5 | `structure` | [DeclCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/declcache--3dcf3e7acf39744bf17800ad.md) | 98 | `declaration-track:3dcf3e7acf39744bf17800ad4f2c8b67e8bfb1ea1652aa366a1b7688f6ecf937` |
| 6 | `def` | [DeclCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/declcache-mk--1bc138366f9c2f7884a35439.md) | 115 | `declaration-track:1bc138366f9c2f7884a354399b2e228c87db013b3a6a3a6321d262678622f3a0` |
| 7 | `def` | [DeclCache.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/declcache-get--ed1b452b9cfbe856e479b5ff.md) | 133 | `declaration-track:ed1b452b9cfbe856e479b5ff23ca46bed29e20868efe54d63d1a3422e61ee2d3` |
| 8 | `def` | [DiscrTreeCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/discrtreecache--286f62e48f8d75091a7c0647.md) | 144 | `declaration-track:286f62e48f8d75091a7c0647a3c67e6584e80abb89337f9eb81553f3f60452cb` |
| 9 | `def` | [DiscrTreeCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/discrtreecache-mk--f2e77e11c4ad9c044c70ff81.md) | 151 | `declaration-track:f2e77e11c4ad9c044c70ff81540d0cd20dd0f37ea1153cde31c0036b9e819ac8` |
| 10 | `def` | [DiscrTreeCache.getMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/discrtreecache-getmatch--df0e697dbc87afd027575203.md) | 178 | `declaration-track:df0e697dbc87afd0275752036ac2160c77c38e5299a5002a8f115ea6a2c8f994` |
| 11 | `structure` | [CachedData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant890a1461f52da625e56fb7dce4f0083b45a982055d5ed0d4217b00ad0008bc37.lean/declarations/cacheddata--dfc5588af20e62888a5f0d2f.md) | 188 | `declaration-track:dfc5588af20e62888a5f0d2f896577c3f6379d34341123b72a734ed6497a69d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
