# Verification target: GRWTSK.Algebra.UniversalAlgebra.Canonical.Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bc57762a777ef2278f264662fc55a182fe4dc50",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bc57762a777ef2278f264662fc55a182fe4dc50`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicallyLinearOrderedSemifield](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean/declarations/canonicallylinearorderedsemifield--bf54b441becdd42395cb39a2.md) | 27 | `declaration-track:bf54b441becdd42395cb39a29be9090c4c9c374e1294500077e72d0fc524c79e` |
| 2 | `abbrev` | [CanonicallyOrderedAdd.toLinearOrderedCommGroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean/declarations/canonicallyorderedadd-tolinearorderedcommgroupwithzero--d85f1f9c679393ca2efb0c17.md) | 36 | `declaration-track:d85f1f9c679393ca2efb0c17c52d2a95f49e55d9f7452c7064cbaf15db22013d` |
| 3 | `theorem` | [tsub_div](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantaa3c319b6e345176f9701c850768134d1e01dcca8672376681fe3550535b1366.lean/declarations/tsub-div--53d7c5ec0ffd43b2c59bd5f4.md) | 47 | `result-track:53d7c5ec0ffd43b2c59bd5f4561191768a8675f01136903f37ca8adb6040401b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
