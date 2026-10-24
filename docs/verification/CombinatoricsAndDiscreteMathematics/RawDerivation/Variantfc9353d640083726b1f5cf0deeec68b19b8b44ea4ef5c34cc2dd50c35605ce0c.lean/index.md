# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RawDerivation.Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c9e4af7b47f152a2e9d88dc4af91e4e66bd6c37",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c9e4af7b47f152a2e9d88dc4af91e4e66bd6c37`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Atomize.Formal.IndexedAll` — import line 1; external provider; requires a separately pinned dependency.
- `Atomize.Formal.KernelPresentation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RawDer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/rawder--08e18cbe77475fd41e2b854d.md) | 79 | `declaration-track:08e18cbe77475fd41e2b854dc15d50d5957ba5fada5cdfb2e33da5d6407965ee` |
| 2 | `def` | [root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/root--ea88523161503b56d4b1df2a.md) | 100 | `declaration-track:ea88523161503b56d4b1df2a2d2757f7f73a22d520d32e8fae67d22b67f8bc5a` |
| 3 | `def` | [size](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/size--3569276d15f190693b76df7f.md) | 116 | `declaration-track:3569276d15f190693b76df7fcc5d4ac1fc178fd782698638319645b892e06ac3` |
| 4 | `def` | [sizeAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/sizeall--2d0355f4114e9449139b1007.md) | 132 | `declaration-track:2d0355f4114e9449139b1007f42bf9155a5463481b40edcc5bbc18a9029f7c92` |
| 5 | `def` | [height](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/height--d4f3feac0f4f602fffdf3b92.md) | 151 | `declaration-track:d4f3feac0f4f602fffdf3b921f85f65bde075cc6e55d648ac2dfdbf218c723ab` |
| 6 | `def` | [heightAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/heightall--617c6544d20c8cee1d8087a3.md) | 167 | `declaration-track:617c6544d20c8cee1d8087a3b7cb6f6e2fd9bf7214d28a3ffe1e578d05c32bef` |
| 7 | `def` | [constantReferences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/constantreferences--f64da59ffe1ea1638c6a873a.md) | 186 | `declaration-track:f64da59ffe1ea1638c6a873ab46bdb53ed2a9b44e4544a12f6852cfdc24205b4` |
| 8 | `def` | [constantReferencesAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/constantreferencesall--d1e9a77e5e83ba915bccb0c2.md) | 204 | `declaration-track:d1e9a77e5e83ba915bccb0c2879139306e92d63c74b2c50a0ab0bb6ef599886c` |
| 9 | `def` | [rootVariables](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/rootvariables--2824196f8b282710c46daa24.md) | 226 | `declaration-track:2824196f8b282710c46daa2455f6fa20488e2a36f9bb76b1158173febe735076` |
| 10 | `def` | [rootVariablesAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/rootvariablesall--2021d7a459edf6d031c0d5f4.md) | 244 | `declaration-track:2021d7a459edf6d031c0d5f459dd5b2ff0a60a45aec0cdf2a7a1554f8b93b964` |
| 11 | `def` | [leafOrigins](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/leaforigins--86adfdfed25da3e2cd520222.md) | 266 | `declaration-track:86adfdfed25da3e2cd520222545257a29106ed9e58ca2f85e5d541cef3b15c52` |
| 12 | `def` | [leafOriginsAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/declarations/leaforiginsall--044bf95f2f7d81453cdc1e1e.md) | 284 | `declaration-track:044bf95f2f7d81453cdc1e1ecbc59787a789a9993639f83b14ed1a3849454e30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
