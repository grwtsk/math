# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "454cec1072af6fd3a05b41eafd027ec6bf59049f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `454cec1072af6fd3a05b41eafd027ec6bf59049f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_nat_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/declarations/coe-nat-dvd--926eeb5afaa77b3b74e1bc6d.md) | 29 | `result-track:926eeb5afaa77b3b74e1bc6d0e1700d5e64fbd21ff2223d875536d539f8a1113` |
| 2 | `theorem` | [coe_nat_dvd_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/declarations/coe-nat-dvd-left--8b7c90b8df3c4cc176e34c6a.md) | 41 | `result-track:8b7c90b8df3c4cc176e34c6add3eb6df1483a477cfe51b77d8e5a40b6ec1d129` |
| 3 | `theorem` | [coe_nat_dvd_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf.lean/declarations/coe-nat-dvd-right--28b28ca6881150885e44abe8.md) | 45 | `result-track:28b28ca6881150885e44abe839375404e108f58c747dd9e519c0b9f4efd4bd4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
