# Verification target: GRWTSK.Algebra.UniversalAlgebra.PUnit.Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd0ef6e9383473dfed58065c758b14c02fd70263",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd0ef6e9383473dfed58065c758b14c02fd70263`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.PUnit` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [normalizedGCDMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean/declarations/normalizedgcdmonoid--50529bafa9f71a0aa269de4f.md) | 19 | `declaration-track:50529bafa9f71a0aa269de4fb814f2821fc45139fa23842e511fa549d1cf8bc7` |
| 2 | `theorem` | [gcd_eq](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean/declarations/gcd-eq--4f21edc1ef7e44a27240c089.md) | 36 | `result-track:4f21edc1ef7e44a27240c089f415df0b1cd9437d0651d8da996125a46a87084c` |
| 3 | `theorem` | [lcm_eq](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean/declarations/lcm-eq--faf9f6c37445789f4848b9fc.md) | 40 | `result-track:faf9f6c37445789f4848b9fc55b03d189f1cca831ecb39310c9a5cb04cfd2c7b` |
| 4 | `theorem` | [norm_unit_eq](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2.lean/declarations/norm-unit-eq--ea33c8137200db3ad605935a.md) | 44 | `result-track:ea33c8137200db3ad605935a93ed4da5648f5db69db885050f463f77b302f1e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
