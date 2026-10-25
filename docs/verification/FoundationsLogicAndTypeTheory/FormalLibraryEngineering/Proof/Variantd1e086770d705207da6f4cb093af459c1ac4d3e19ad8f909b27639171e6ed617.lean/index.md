# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeea013d8a2415f7bc914622da66304d9ef2f0e4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeea013d8a2415f7bc914622da66304d9ef2f0e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.RArray` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.ToExpr` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.VarRename` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/proofm-state--e37c4294a170df848408ce73.md) | 28 | `declaration-track:e37c4294a170df848408ce73b01c89c8cf21b816109b86970520ba4b62584a6b` |
| 2 | `structure` | [ProofM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/proofm-context--9ef8074954b898b4181a8db4.md) | 34 | `declaration-track:9ef8074954b898b4181a8db47231fffafd2a9fd75de7c93e09ddbbc3bc39e79b` |
| 3 | `abbrev` | [ProofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/proofm--f7b9e59602aca845135fad15.md) | 37 | `declaration-track:f7b9e59602aca845135fad150d75bcab095780321d11444615464304a107284a` |
| 4 | `def` | [getContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/getcontext--5ba96ccf9d4d361a4d0b966b.md) | 40 | `declaration-track:5ba96ccf9d4d361a4d0b966b47b47dc305663c2a299ef8430e35b1bf673bc36a` |
| 5 | `abbrev` | [caching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/caching--084ea9f95753f4c51eb9c672.md) | 43 | `declaration-track:084ea9f95753f4c51eb9c672fabf04ebade12a4c6fe84de5d63b2ed37b17dc06` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/macro--a34bd299de7ce9b45dd9c96e.md) | 52 | `declaration-track:a34bd299de7ce9b45dd9c96e1aca58e31f8bbd9a5844f5fa20f4068d6b56a8a7` |
| 7 | `def` | [mkVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkvardecl--e1bf6fac04677acd0343b93d.md) | 59 | `declaration-track:e1bf6fac04677acd0343b93dc63d34847eea273b6819922066f726f7c2f14039` |
| 8 | `def` | [mkSeqDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkseqdecl--c7275270c79d417ea406bcbf.md) | 62 | `declaration-track:c7275270c79d417ea406bcbf23c74f2709811034268edf5f03edffef3e3ac348` |
| 9 | `def` | [mkExprDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkexprdecl--658b869f4a3c85af80f336b2.md) | 65 | `declaration-track:658b869f4a3c85af80f336b2ef63bd0f82938b885727fe8a4d85bf3271d73206` |
| 10 | `def` | [getCommInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/getcomminst--ca452035d2c72ebf926f7547.md) | 68 | `declaration-track:ca452035d2c72ebf926f754765a159dd2ed4b7b9484d911a6b9605d912829801` |
| 11 | `def` | [getIdempotentInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/getidempotentinst--9e77a587075aa6506432ea66.md) | 72 | `declaration-track:9e77a587075aa6506432ea6672df945b7d8d84b14379f622df4066ddd73e8162` |
| 12 | `def` | [getNeutralInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/getneutralinst--6e4d0fed5efb26270d0a6b48.md) | 76 | `declaration-track:6e4d0fed5efb26270d0a6b485d22c13d327c083bfdf5643a084b4a9668642d34` |
| 13 | `def` | [mkPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkprefix--f7cb8d92915b07521e0f04a8.md) | 80 | `declaration-track:f7cb8d92915b07521e0f04a848971b71596eedefb69fc37ddf3859a67866a740` |
| 14 | `def` | [mkAPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkaprefix--0f9026ead9bbd2dca04170f3.md) | 84 | `declaration-track:0f9026ead9bbd2dca04170f35c4c8336c441fda8394b74fc6dbbfa744f7d4598` |
| 15 | `def` | [mkACPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkacprefix--1ae803adfa37213af8a0ec6a.md) | 88 | `declaration-track:1ae803adfa37213af8a0ec6a3792686a7d2897ed5729672c5405a531f4e868ac` |
| 16 | `def` | [mkAIPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkaiprefix--d24f578cc19ca260737c2111.md) | 92 | `declaration-track:d24f578cc19ca260737c211145e213cb626ba4f7f4648dce701ad095953fbdce` |
| 17 | `def` | [mkACIPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkaciprefix--3d71fa7268c144f385a8b517.md) | 96 | `declaration-track:3d71fa7268c144f385a8b517f9ef70349ab6af3ea0f9f33a2113624070347d56` |
| 18 | `def` | [mkADPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkadprefix--39f77c63df6d22939f79d270.md) | 100 | `declaration-track:39f77c63df6d22939f79d270ac871abafa566ff94b247866ec6ad17d9eea2b98` |
| 19 | `def` | [mkACDPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkacdprefix--36e0658f8889a70ac25ae78e.md) | 104 | `declaration-track:36e0658f8889a70ac25ae78e42ae20fa8176bd86c8fa2820e75d38594ed4c0e8` |
| 20 | `def` | [toContextExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/tocontextexpr--4bb67a9ce21130b91e7720ea.md) | 108 | `declaration-track:4bb67a9ce21130b91e7720eacdb247066ead2dac2edfd3f2d4aec3695cf71cc7` |
| 21 | `def` | [mkContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkcontext--6d87a4cce153b40461cc8ef6.md) | 114 | `declaration-track:6d87a4cce153b40461cc8ef6f4fc467042ffa10704fe4d42d8775081f9128349` |
| 22 | `abbrev` | [withProofContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/withproofcontext--3913762daf61565955fb53dd.md) | 140 | `declaration-track:3913762daf61565955fb53ddb27b63af433bacba59cb8a46db63508da1e5a57b` |
| 23 | `def` | [EqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/eqcnstr-toexprproof--bd06c80776eefc8423e84aaf.md) | 147 | `declaration-track:bd06c80776eefc8423e84aafcc74fb0108bd87f9303d09ae5e2d00cb93d5c908` |
| 24 | `def` | [DiseqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/diseqcnstr-toexprproof--38b1a27dae264b5b0e568f68.md) | 221 | `declaration-track:38b1a27dae264b5b0e568f6832b23ae39310d6bf540c6222f14c9f0dce3f0680` |
| 25 | `def` | [DiseqCnstr.setUnsat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/diseqcnstr-setunsat--cba3afa2a28540b328f4a03d.md) | 261 | `declaration-track:cba3afa2a28540b328f4a03d895d3db839fea5da232b6e035ab84643535d4218` |
| 26 | `def` | [mkExprEqSeqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/mkexpreqseqproof--a0cd00cdb92616fc910eeca6.md) | 266 | `declaration-track:a0cd00cdb92616fc910eeca6744fa0834e7fae1cbe6dc415cd4a82a452c035eb` |
| 27 | `def` | [propagateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/declarations/propagateeq--7d0ba148773b6b21a89b3cc7.md) | 284 | `declaration-track:7d0ba148773b6b21a89b3cc74d8e0e4f74baefde87a70c24bd6c733266c2469a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
