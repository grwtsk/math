# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FBinop.Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e58cb0849763232931b7bd05c571e3bfebcb553",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e58cb0849763232931b7bd05c571e3bfebcb553`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.App` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToExpr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/initialize--2b6c3ba476d662322c978f5a.md) | 33 | `declaration-track:2b6c3ba476d662322c978f5ac06dcb9ea285e0f948c34368e44fdf56007b2a74` |
| 2 | `inductive` | [Tree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/tree--1a4e5fdfe8f68254293722a7.md) | 40 | `declaration-track:1a4e5fdfe8f68254293722a79d575ddc51c5e70c5e43402c4dd5ffe4963c2e83` |
| 3 | `def` | [toTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/totree--87ce6fe4583dd3af05878b44.md) | 51 | `declaration-track:87ce6fe4583dd3af05878b44ea5de56a94952c0f508cd855305c07cf11a17cda` |
| 4 | `structure` | [SRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/srec--2fa9a017daea447930df76da.md) | 84 | `declaration-track:2fa9a017daea447930df76daa08122fb865301517188e879174e4a64323795d3` |
| 5 | `def` | [extractS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/extracts--012a68f95b18ad6532d4c38a.md) | 93 | `declaration-track:012a68f95b18ad6532d4c38a63691c9b9391d95dfaa7db16f020dd0ba8b5398c` |
| 6 | `def` | [applyS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/applys--281fad3ccb73a73bf3354adb.md) | 115 | `declaration-track:281fad3ccb73a73bf3354adbe01d2a909b50b161d0898a524ce6ccaea3c8f010` |
| 7 | `def` | [hasCoeS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/hascoes--b71605e7a42464df9ade6b4f.md) | 127 | `declaration-track:b71605e7a42464df9ade6b4f6c406707e6ecacad0b950f77f262173247d60591` |
| 8 | `structure` | [AnalyzeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/analyzeresult--5f4f0982301895f65a7c0565.md) | 138 | `declaration-track:5f4f0982301895f65a7c0565151d4b1fc62e52ff8c53946f53b626999412b8ac` |
| 9 | `def` | [analyze](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/analyze--e436de5a0b58784e14f9ef1f.md) | 144 | `declaration-track:e436de5a0b58784e14f9ef1f017ff71a98ebe9366e30a8b8fe6846f4cea61b25` |
| 10 | `def` | [mkBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/mkbinop--ae0a2273dd29961160e7aed7.md) | 178 | `declaration-track:ae0a2273dd29961160e7aed706f32f69cafbb7c4f94fc932ce26ee773efb80d2` |
| 11 | `def` | [toExprCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/toexprcore--2974d17c61b0778807604916.md) | 183 | `declaration-track:2974d17c61b0778807604916972a1a7a28aa01afbc84f395188faa0d4a9a7a2e` |
| 12 | `def` | [applyCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/applycoe--cc7920d4d119a7930032e64d.md) | 198 | `declaration-track:cc7920d4d119a7930032e64d607154a64517454e28af75b4014b8768cb08efd7` |
| 13 | `def` | [toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/toexpr--ed338456ee5c95814d653c3a.md) | 230 | `declaration-track:ed338456ee5c95814d653c3a029b1d02b360d9a80dff0fefc345330d8e1768b1` |
| 14 | `def` | [elabBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/declarations/elabbinop--92ec2428f2074ffe94b1e4de.md) | 242 | `declaration-track:92ec2428f2074ffe94b1e4de3ac1f33c8cacb26b5c1c920ac50649dce619abe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
