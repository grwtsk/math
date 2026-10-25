# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ingress.Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f315209b2720023fdfe03d25ea7809f24e4d9c1b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f315209b2720023fdfe03d25ea7809f24e4d9c1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Context` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IngressKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/declarations/ingresskind--f2f76263c26c25e9f899ce9f.md) | 9 | `declaration-track:f2f76263c26c25e9f899ce9f4680829e4d36ec6e3da864eb7811d77a1ef79ff2` |
| 2 | `structure` | [InvocationIntent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/declarations/invocationintent--190f6906f7eb62d0a728e99b.md) | 14 | `declaration-track:190f6906f7eb62d0a728e99baf5016d9ee3118ac00e27c10220c8ae881bc89b1` |
| 3 | `structure` | [CanonicalResolutionCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/declarations/canonicalresolutioncommand--8d537ca3a1067440f90c6291.md) | 20 | `declaration-track:8d537ca3a1067440f90c629162f6106dbe9305f75eba372f883402c8ccf6f381` |
| 4 | `def` | [canonicalizeIngress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/declarations/canonicalizeingress--c61e2415684f8318a7f79d77.md) | 24 | `declaration-track:c61e2415684f8318a7f79d774f600a9adbaa9c6a839906700b36e24fcb736138` |
| 5 | `theorem` | [browser_native_canonicalize_equally](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ingress/Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85.lean/declarations/browser-native-canonicalize-equally--6fb34d7914121018c69e7aae.md) | 30 | `result-track:6fb34d7914121018c69e7aae73e35a31a257a1186f1b1e2d785c4b5524c199c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
