# Verification target: GRWTSK.Algebra.UniversalAlgebra.FreeNonUnitalNonAssocAlgebra.Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "735a6da97894f72eb5668fc2e855ed8d48d838b2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `735a6da97894f72eb5668fc2e855ed8d48d838b2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreeNonUnitalNonAssocAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/freenonunitalnonassocalgebra--030c98b34b6ab9b5c0b994e7.md) | 69 | `declaration-track:030c98b34b6ab9b5c0b994e74d2d440ca504970c4645b3a63e38b426291db310` |
| 2 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/of--f51c9091830cf18b160278dd.md) | 77 | `declaration-track:f51c9091830cf18b160278dd18bec95cdeb856de66972b3f2ea7a38e426c1926` |
| 3 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/lift--f73eefc0fda505b786a14a76.md) | 86 | `declaration-track:f73eefc0fda505b786a14a76dd9076b43d3ee9edc586171f648e4c31d03173d8` |
| 4 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/lift-symm-apply--b74eca66965d21fba471715f.md) | 90 | `result-track:b74eca66965d21fba471715ff7d182a0cc13df595c0b01f7bcf3260ceff03dcf` |
| 5 | `theorem` | [of_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/of-comp-lift--2e5bb3f21d121faa7403dccd.md) | 94 | `result-track:2e5bb3f21d121faa7403dccda204aa0b116a383178e6787914f55695981408af` |
| 6 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/lift-unique--f4dad51030fb8683d976a06e.md) | 98 | `result-track:f4dad51030fb8683d976a06e35b507e5af01f6657201f03bfd1102f1abb77c8d` |
| 7 | `theorem` | [lift_of_apply](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/lift-of-apply--17506035742a85977e192608.md) | 103 | `result-track:17506035742a85977e192608a8208a605fcbb00b24e077fdc9b355c58caf3237` |
| 8 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/lift-comp-of--b03e72f1de3553382f56bc10.md) | 107 | `result-track:b03e72f1de3553382f56bc104c6b4afb38436bc9b501c79645626a06d2f53b7b` |
| 9 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant5da32e09e70725c6b8efa1e0df3045af7a10cdf3a28cdb162b8d06c8e550a776.lean/declarations/hom-ext--1820470af5d6bc28366ee0c4.md) | 111 | `result-track:1820470af5d6bc28366ee0c4cdcd2e5311f58a7db7d7f0400314570071268a55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
