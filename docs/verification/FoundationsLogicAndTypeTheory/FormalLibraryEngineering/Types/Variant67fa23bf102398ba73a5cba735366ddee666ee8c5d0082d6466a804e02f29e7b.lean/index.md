# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d27d01921b9b06bf6c9fdcc91da9637dd54677c7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d27d01921b9b06bf6c9fdcc91da9637dd54677c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiscoveryConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/discoveryconfig--c4778c7b9ffc95cbea348249.md) | 53 | `declaration-track:c4778c7b9ffc95cbea3482498d8b9f9546491e6316f7664ef4bfe987d71e3d88` |
| 2 | `def` | [DiscoveryConfig.toGlobalOptConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/discoveryconfig-toglobaloptconfig--5f71b87c8f8903d48ac0c839.md) | 67 | `declaration-track:5f71b87c8f8903d48ac0c8391ade4eae9e64835b4d92fb3755792b25273316f5` |
| 3 | `def` | [DiscoveryConfig.toEvalConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/discoveryconfig-toevalconfig--d9b3d7f3f5d17e3a6b9fab16.md) | 74 | `declaration-track:d9b3d7f3f5d17e3a6b9fab169d61533d3bd1e68eca438b5f95aea53b6e0cf6d5` |
| 4 | `structure` | [VerifiedGlobalMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedglobalmin--efdea8c65c9823849718e523.md) | 89 | `declaration-track:efdea8c65c9823849718e52389a8174b6e9edeeecb0626e07b6373b9d01af95e` |
| 5 | `def` | [VerifiedGlobalMin.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedglobalmin-width--fb83ac011eece8f37d753420.md) | 104 | `declaration-track:fb83ac011eece8f37d75342088dbbf636aedf5d62dc4fdf25b20a95b62d129fa` |
| 6 | `def` | [VerifiedGlobalMin.isTight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedglobalmin-istight--f32a418f6975b1fe9b8a4b60.md) | 108 | `declaration-track:f32a418f6975b1fe9b8a4b60a8368b85f4f4ba0e9b96255a4bd297c578a3377a` |
| 7 | `structure` | [VerifiedGlobalMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedglobalmax--37fe0a40bdf56407385df850.md) | 120 | `declaration-track:37fe0a40bdf56407385df85024f78ea05cb67b680240a743522e1be37817871d` |
| 8 | `def` | [VerifiedGlobalMax.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedglobalmax-width--0d40cc96aefa2a74345db55d.md) | 135 | `declaration-track:0d40cc96aefa2a74345db55daa2e05eab3a0f96dc5d09f01d15d1278b47e82ac` |
| 9 | `inductive` | [VerifiedRootStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedrootstatus--b0628164213ca11dc0c1075f.md) | 141 | `declaration-track:b0628164213ca11dc0c1075f672ba0e7e9e8f75f3347cfc445db5e7b3c43d0bc` |
| 10 | `structure` | [VerifiedRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedroot--73f35cb7340e1574e560130a.md) | 155 | `declaration-track:73f35cb7340e1574e560130aadf2fcfccc42d5b771b319831306538c6a05f52b` |
| 11 | `def` | [VerifiedRoot.approxLocation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedroot-approxlocation--494f489dae9f510129363f1a.md) | 164 | `declaration-track:494f489dae9f510129363f1a04239da28fb1aa49f0e5ad4f0f1a8d80f378b615` |
| 12 | `def` | [VerifiedRoot.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedroot-width--4d7fcc4fd01ec4031b5fa093.md) | 168 | `declaration-track:4d7fcc4fd01ec4031b5fa0936da35aadccb099b0c29a0d49fe4c5b0625a8332e` |
| 13 | `structure` | [UniqueVerifiedRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/uniqueverifiedroot--879a25dd994ca1d346e302bf.md) | 172 | `declaration-track:879a25dd994ca1d346e302bfff1ab3611f9efa58411c26b9b1930a9984d436d1` |
| 14 | `structure` | [VerifiedIntegral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedintegral--a74278d00a596f544f2c0eae.md) | 187 | `declaration-track:a74278d00a596f544f2c0eae0c7024a6cb1700b20b979241b84ec06c1ef6b177` |
| 15 | `def` | [VerifiedIntegral.width](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedintegral-width--23f69392cbd646f4a512f172.md) | 200 | `declaration-track:23f69392cbd646f4a512f172675240a909874ac1d5530178e295b39c9cc17cd7` |
| 16 | `structure` | [VerifiedUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedupperbound--0ece1e6214e1eecdbf30bed1.md) | 209 | `declaration-track:0ece1e6214e1eecdbf30bed1d0ebcda11781e7fde92f9e551f4c0c1037fadc0d` |
| 17 | `structure` | [VerifiedLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedlowerbound--a7a9e6bb492f4c43281c8a7d.md) | 219 | `declaration-track:a7a9e6bb492f4c43281c8a7db1bf8d345e8131cdea4aca936ef651df651bbc5d` |
| 18 | `structure` | [VerifiedBoxBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/declarations/verifiedboxbound--af6c30b14327fdbfa80c639e.md) | 228 | `declaration-track:af6c30b14327fdbfa80c639eed07a61d9e3f3f73ac190765e06ee6fd9d7d2474` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
