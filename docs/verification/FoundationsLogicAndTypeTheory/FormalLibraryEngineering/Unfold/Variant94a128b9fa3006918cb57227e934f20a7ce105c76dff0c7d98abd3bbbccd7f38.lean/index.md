# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c04707fc63665af2199315f9f817e69d73183885",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c04707fc63665af2199315f9f817e69d73183885`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSimpUnfoldContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/declarations/getsimpunfoldcontext--0c74a972a14ee8cd44a5af51.md) | 22 | `declaration-track:0c74a972a14ee8cd44a5af517daebfbc959ef2d9ed22cc508bdfa75dbc848da5` |
| 2 | `def` | [unfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/declarations/unfold--36427fc17d11c2e5e0108d5b.md) | 27 | `declaration-track:36427fc17d11c2e5e0108d5b9ae9beea3fea2469f344a7fa4faffbf2d0805613` |
| 3 | `def` | [unfoldTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/declarations/unfoldtarget--9019bd5a9c98242dc605cf91.md) | 41 | `declaration-track:9019bd5a9c98242dc605cf91d350cf43f2a6f73d5aa8103683b7dadd2ed7c178` |
| 4 | `def` | [unfoldLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/declarations/unfoldlocaldecl--b5e5eb1e153ca43a7a685523.md) | 47 | `declaration-track:b5e5eb1e153ca43a7a6855232b27b97b0619a38afd1f8b8a35cf71f96d32e041` |
| 5 | `def` | [zetaDeltaTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/declarations/zetadeltatarget--aead426ce0c598911d591bb9.md) | 54 | `declaration-track:aead426ce0c598911d591bb9257cc1038255f6b280035f06817d30d8e62bcf26` |
| 6 | `def` | [zetaDeltaLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant94a128b9fa3006918cb57227e934f20a7ce105c76dff0c7d98abd3bbbccd7f38.lean/declarations/zetadeltalocaldecl--c02b5511a28cac935ce5505b.md) | 60 | `declaration-track:c02b5511a28cac935ce5505be4d998921b08b40f1fc97bea65b65b31a104c23b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
