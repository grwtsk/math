# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCert.Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec32ec4f22dacca80979a462c9c23f83f5cc6cad",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec32ec4f22dacca80979a462c9c23f83f5cc6cad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeDict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/primedict--758f9e2523a237f634e78d9b.md) | 30 | `declaration-track:758f9e2523a237f634e78d9b42705c1ba23dcce2c5cbe214b73234ceb37b4447` |
| 2 | `def` | [PrimeDict.getM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/primedict-getm--9635fd0011b17497312f5160.md) | 32 | `declaration-track:9635fd0011b17497312f51600141f899dcbfec8609269f0968eb7f5b6e89f843` |
| 3 | `abbrev` | [PrimeCertMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/primecertmethod--1b3e0cb762559ce8176fbf79.md) | 37 | `declaration-track:1b3e0cb762559ce8176fbf79c6663e8761ac1af39190ade3725c10c2b87bbf86` |
| 4 | `structure` | [PrimeCertExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/primecertext--5c3273d9471ca50cba7c5133.md) | 41 | `declaration-track:5c3273d9471ca50cba7c5133d1a4b6ee931397d967a31d7c28fcabd69185c8ed` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/initialize--7afba3e5189948eba25118cf.md) | 48 | `declaration-track:7afba3e5189948eba25118cfed94b4713da09bd4b1e8868bd097061e0581c610` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/syntax--e60fd941eda0f27578ef2d46.md) | 61 | `declaration-track:e60fd941eda0f27578ef2d46b9c50a0ea39a9b042d415f6dec6a78512813ddf3` |
| 7 | `def` | [mkPrimeCertExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/mkprimecertext--7bb01253c8cda0f18b5459b4.md) | 64 | `declaration-track:7bb01253c8cda0f18b5459b4cc9776f5412a8aa11fecd7bec7aa05219a1f7a9f` |
| 8 | `def` | [PrimeCertExt.mkMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/primecertext-mkmethod--0bba1b7260d25294c8d2cc32.md) | 69 | `declaration-track:0bba1b7260d25294c8d2cc3261d7af38210746c265ffe8dd37697f75f651d8b6` |
| 9 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCertExt.Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.Lean.Name.toSyntaxCat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-prime--7048f69e6377408538f6b583.md) | 77 | `declaration-track:7048f69e6377408538f6b583381a09c82e65c4335dfeaa5011f1bd3ed289af74` |
| 10 | `def` | [mkSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/mksyntax--1ef0f30c6320a82e9f96d0e6.md) | 86 | `declaration-track:1ef0f30c6320a82e9f96d0e62917b2dcf0067bdd2f43674cacd142a39bb6d756` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/initialize--cb4bc8f5b7e2ee0728f4b59c.md) | 91 | `declaration-track:cb4bc8f5b7e2ee0728f4b59cf79d8f583997ac5984acaf2143652a54a5448254` |
| 12 | `def` | [parseStepGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/parsestepgroup--d44e095b121db0614a71b5a6.md) | 112 | `declaration-track:d44e095b121db0614a71b5a6d8da3b48fcb618c8fa77812e8f7c264d079ad579` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/declarations/elab--ce49e35bb2b2778c1b3de566.md) | 149 | `declaration-track:ce49e35bb2b2778c1b3de56675c8c89adabb223bec1dce85f65e44b423f88d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
