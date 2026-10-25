# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteSimp.Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e3f30c08a6b6eebdcbfe2304895176ca2c8b22b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e3f30c08a6b6eebdcbfe2304895176ca2c8b22b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Bool.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Bool.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [if_true_right_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean/declarations/if-true-right-eq-or--006f01f09ff208b269419492.md) | 29 | `result-track:006f01f09ff208b2694194928af875efd9e4083b5b35fc6894b8bd139f890882` |
| 2 | `theorem` | [if_true_left_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean/declarations/if-true-left-eq-or--e7da8d484fcab0912571ae71.md) | 34 | `result-track:e7da8d484fcab0912571ae71b8a18591cd9e6db66a82590fbd6edd5b45a83c57` |
| 3 | `theorem` | [if_false_right_eq_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean/declarations/if-false-right-eq-and--71875e777453fd7bdcf81ed7.md) | 39 | `result-track:71875e777453fd7bdcf81ed7163b8b302f36b61becfb919eeac268d73d5bb5c0` |
| 4 | `theorem` | [if_false_left_eq_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variant68e2d8f0fbf6d39284994dec27ea9803b5c325e6af220ae42736b64b39bffe42.lean/declarations/if-false-left-eq-and--a522f202830f4f7072d9ffa0.md) | 44 | `result-track:a522f202830f4f7072d9ffa0854fdf0b741a22e043007329191c9f568d91c4dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
