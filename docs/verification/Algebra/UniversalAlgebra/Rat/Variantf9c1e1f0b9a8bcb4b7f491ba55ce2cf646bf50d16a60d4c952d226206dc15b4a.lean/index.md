# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f875f88aac8cfe471bf5e7919d5e57b6c0b08982",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f875f88aac8cfe471bf5e7919d5e57b6c0b08982`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/declarations/instisorderedaddmonoid--f224e8b0dab2ec7472aa888e.md) | 27 | `declaration-track:f224e8b0dab2ec7472aa888e6898b96322d38cb4286150dbcdc2b9a63d42c508` |
| 2 | `instance` | [instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/declarations/instzeroleoneclass--7489577d6277a1f4244c332b.md) | 30 | `declaration-track:7489577d6277a1f4244c332b57adc9a1f27d1da8dc28a066b838092fbadf0477` |
| 3 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/declarations/instisstrictorderedring--972f34a4c25ba65257d98840.md) | 33 | `declaration-track:972f34a4c25ba65257d98840785761fff6bb029b13a16ec33f1a8e5dec138ab1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
