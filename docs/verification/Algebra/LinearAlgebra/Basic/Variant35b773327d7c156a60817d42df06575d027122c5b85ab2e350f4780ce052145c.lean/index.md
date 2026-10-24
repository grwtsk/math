# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6d3a61f6cbfb95e727083ff9be7c026a7283e9f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6d3a61f6cbfb95e727083ff9be7c026a7283e9f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.Nondegenerate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exist_eq_reflection_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/exist-eq-reflection-of-mapsto--1c1d7c9f016a4a35ac99ce58.md) | 56 | `result-track:1c1d7c9f016a4a35ac99ce5892af7a3ad1cfc4ea470b5d455e37b0e5651c2301` |
| 2 | `theorem` | [choose_choose_eq_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/choose-choose-eq-of-mapsto--9c8fe1aa7d05146ca55ebf30.md) | 63 | `result-track:9c8fe1aa7d05146ca55ebf3059cc979e349e85a7651aed6d6a1e97bfc3ab2e6f` |
| 3 | `def` | [equiv_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/equiv-of-mapsto--a1409e8dec7e273abe0cb131.md) | 73 | `declaration-track:a1409e8dec7e273abe0cb1312cedacb7d34c5f5820ab5e0c81909ee2f8fa9e03` |
| 4 | `lemma` | [injOn_dualMap_subtype_span_root_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/injon-dualmap-subtype-span-root-coroot--5e2734359be01c97e3203aab.md) | 88 | `result-track:5e2734359be01c97e3203aab6030aabd91872df97761b30dff8599ec8cb27f95` |
| 5 | `lemma` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/ext--b4c255a26e9d576cb1c33f36.md) | 100 | `result-track:b4c255a26e9d576cb1c33f36a34a1d066441ea368b72c000dca15599b31ba68c` |
| 6 | `lemma` | [coroot_eq_coreflection_of_root_eq'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/coroot-eq-coreflection-of-root-eq--08873bddc8b51b2d5be03fb7.md) | 125 | `result-track:08873bddc8b51b2d5be03fb7391e96078f13c988898e23e7af7e5c8e756116c0` |
| 7 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/mk--f1babea25ee064d5a3614f37.md) | 167 | `declaration-track:f1babea25ee064d5a3614f3780764b9d04bf80bb23f510880c1ba1ee131c6466` |
| 8 | `lemma` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/ext--c5d95fe3fdfe4fbb2546ff8e.md) | 198 | `result-track:c5d95fe3fdfe4fbb2546ff8e1ebffc1408cdd8a2498d1e3556acf704d104460a` |
| 9 | `lemma` | [coroot_eq_coreflection_of_root_eq_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/coroot-eq-coreflection-of-root-eq-of-span-eq-top--281111e0821cb8b64ef005c6.md) | 221 | `result-track:281111e0821cb8b64ef005c6c7e2baf131bad0155ad889078ee278fa1539ab81` |
| 10 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/declarations/mk--34d5fa17327e55839a2b6b7c.md) | 255 | `declaration-track:34d5fa17327e55839a2b6b7c12be6e0cf7fd0460547cd5645bec3dab77708b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
