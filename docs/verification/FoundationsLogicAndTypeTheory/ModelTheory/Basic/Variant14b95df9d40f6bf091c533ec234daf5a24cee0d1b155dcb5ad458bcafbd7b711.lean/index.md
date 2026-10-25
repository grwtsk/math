# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Basic.Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0f9bcc74995ea159be1d6a19fed6f38caed836d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0f9bcc74995ea159be1d6a19fed6f38caed836d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Syntax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.MinimalAxioms` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FieldAxiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/fieldaxiom--f81e002204156c18a8a3e267.md) | 47 | `declaration-track:f81e002204156c18a8a3e26792550ea3759b723aa4caa1ebdc8d86876a66382b` |
| 2 | `def` | [FieldAxiom.toSentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/fieldaxiom-tosentence--f9c5f8f93cf320be4a2d2e78.md) | 60 | `declaration-track:f9c5f8f93cf320be4a2d2e78a61f281078fa1140c369383724c08fc597aeac90` |
| 3 | `def` | [FieldAxiom.toProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/fieldaxiom-toprop--efea39e19c716f7252215a23.md) | 73 | `declaration-track:efea39e19c716f7252215a234f43aecb30fa058f557729ac127faae682118409` |
| 4 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FieldAxiom.Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.FirstOrder.Language.Theory.field](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/root-grwtsk-foundationslogicandtypetheory-modeltheory-fieldaxiom-variant--0ff11aec1ced08964a6704d4.md) | 86 | `declaration-track:0ff11aec1ced08964a6704d4bc401214842448902d9b1b5ae48b37a0a5b98a40` |
| 5 | `theorem` | [FieldAxiom.realize_toSentence_iff_toProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/fieldaxiom-realize-tosentence-iff-toprop--03dc276d3ae6e4c601ca3c50.md) | 89 | `result-track:03dc276d3ae6e4c601ca3c504a7745b220451c03822fe779d5215143d4075c63` |
| 6 | `theorem` | [FieldAxiom.toProp_of_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/fieldaxiom-toprop-of-model--4da90bba822a44c2df13c8d2.md) | 96 | `result-track:4da90bba822a44c2df13c8d262a60725c77f29b1d79ea2e8a247f04fcdb0e8f9` |
| 7 | `abbrev` | [fieldOfModelField](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/fieldofmodelfield--c14bde1682fabd7c5d830bca.md) | 110 | `declaration-track:c14bde1682fabd7c5d830bcaddfa1568e4af360603368a8b23b622a2f9769df6` |
| 8 | `abbrev` | [compatibleRingOfModelField](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/compatibleringofmodelfield--7ce92bd9ec71e6b52721b7dd.md) | 145 | `declaration-track:7ce92bd9ec71e6b52721b7dda6d2788e3dcbd43a5b19786cc5e18da74b097c3b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant14b95df9d40f6bf091c533ec234daf5a24cee0d1b155dcb5ad458bcafbd7b711.lean/declarations/instance--456c64a5d8a2b06d6574c9c3.md) | 151 | `declaration-track:456c64a5d8a2b06d6574c9c321d9fa8969a0a86e5bfeedf8b1b7d248d2524b2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
