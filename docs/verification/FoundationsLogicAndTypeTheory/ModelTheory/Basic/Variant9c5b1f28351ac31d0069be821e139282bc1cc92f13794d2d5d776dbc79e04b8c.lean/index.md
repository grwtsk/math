# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Basic.Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "751f335adf8496f6c3f8b93fdef7a8e59b8a6e37",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `751f335adf8496f6c3f8b93fdef7a8e59b8a6e37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Syntax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.MinimalAxioms` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FieldAxiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/fieldaxiom--76cb61192ccfb9d4c30f8240.md) | 39 | `declaration-track:76cb61192ccfb9d4c30f8240f4ef1f2387db20374c7f4abc395b35752e984f01` |
| 2 | `def` | [FieldAxiom.toSentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/fieldaxiom-tosentence--7f8f608bfe0b384117e4c47b.md) | 52 | `declaration-track:7f8f608bfe0b384117e4c47b60e72262553db6d691fab5fc66b3f011c0bbed7b` |
| 3 | `def` | [FieldAxiom.toProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/fieldaxiom-toprop--efaaf6fc8b435518fef22322.md) | 65 | `declaration-track:efaaf6fc8b435518fef22322799b1e99273541ff07c9163a192af9ed41e6f7a4` |
| 4 | `def` | [_root_.FirstOrder.Language.Theory.field](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/root-firstorder-language-theory-field--26ca83a04ec529379d9fbc6e.md) | 78 | `declaration-track:26ca83a04ec529379d9fbc6e768512138431b87e2e27eea86221b8a79d0476e5` |
| 5 | `theorem` | [FieldAxiom.realize_toSentence_iff_toProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/fieldaxiom-realize-tosentence-iff-toprop--f01b1b9648a292cf3f6b3110.md) | 81 | `result-track:f01b1b9648a292cf3f6b3110b93f0a17faf2925578181e9db8cdde7f1a4e9bd2` |
| 6 | `theorem` | [FieldAxiom.toProp_of_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/fieldaxiom-toprop-of-model--d33d8fdc1813212d835c435a.md) | 88 | `result-track:d33d8fdc1813212d835c435a38e8f565062b4c17660ef13128d02d90a775760a` |
| 7 | `abbrev` | [fieldOfModelField](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/fieldofmodelfield--fba2d22061cacf063f6199c5.md) | 102 | `declaration-track:fba2d22061cacf063f6199c529a9825d49cd2cd80276b7ea9ff547a2a85715c0` |
| 8 | `abbrev` | [compatibleRingOfModelField](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/compatibleringofmodelfield--820ee727fe062ba6f826cd0b.md) | 137 | `declaration-track:820ee727fe062ba6f826cd0b72d77a7cee5cf8e549212e50d99c7fbc7d40c73d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/declarations/instance--88652c539a58b0e84108b089.md) | 143 | `declaration-track:88652c539a58b0e84108b089d617999e24d296d12d1998cdc2020f36c12280f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
