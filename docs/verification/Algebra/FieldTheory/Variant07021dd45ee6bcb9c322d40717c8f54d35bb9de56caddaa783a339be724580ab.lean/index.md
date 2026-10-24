# Verification target: GRWTSK.Algebra.Field.Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5c22cd5ee136474941a56557c902480ee3e5321",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5c22cd5ee136474941a56557c902480ee3e5321`.

Source path: `GRWTSK/Algebra/Field/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_inj](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/declarations/coe-inj--7d0f5626bfc90ed664e8d7c8.md) | 22 | `result-track:7d0f5626bfc90ed664e8d7c897889567a605f0134b19b63ccdaeaa62c185fe9b` |
| 2 | `theorem` | [lift_map_eq_zero_iff](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/declarations/lift-map-eq-zero-iff--572f0577b9fedf1d4a39cbc7.md) | 26 | `result-track:572f0577b9fedf1d4a39cbc7832afa19d5318c51120d8ceccdce72b637628852` |
| 3 | `theorem` | [coe_inv](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/declarations/coe-inv--b66ce2dbf12b54e3727b6056.md) | 35 | `result-track:b66ce2dbf12b54e3727b60563d7c62cd2f0dbff2b47b27ab1eef2c184495b580` |
| 4 | `theorem` | [coe_div](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/declarations/coe-div--719f31a78647eab042acf919.md) | 39 | `result-track:719f31a78647eab042acf919d98aa51a99f33f9435900209cc0ddbb61000cb8b` |
| 5 | `theorem` | [coe_zpow](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/declarations/coe-zpow--595fac4df0faaa201b841d53.md) | 43 | `result-track:595fac4df0faaa201b841d53b1f22bdaa08a2e99d60d8c6660bd01249d7317d0` |
| 6 | `theorem` | [coe_ratCast](../../../../mathematics/Algebra/FieldTheory/Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab.lean/declarations/coe-ratcast--98b3be57d77e9ea118943d02.md) | 53 | `result-track:98b3be57d77e9ea118943d0268be1ad5014c67cff93993d23bf405a0cb17c727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
