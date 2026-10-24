# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c25a87034b9456e7a91675ca28b298d5c748675",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c25a87034b9456e7a91675ca28b298d5c748675`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/smulzeroclass--dff3f7a3d0b11e43d47681b5.md) | 34 | `declaration-track:dff3f7a3d0b11e43d47681b5c77de7f6a3cd3435e1c1426aa067e7c4fc227302` |
| 2 | `instance` | [smulZeroClass'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/smulzeroclass--b07e498ebbc48cf55fc14c68.md) | 38 | `declaration-track:b07e498ebbc48cf55fc14c68ed6ecd4c9f486ef184bed145d0dda1075bd12782` |
| 3 | `instance` | [distribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/distribsmul--ccb4c5b5af11310d6b116245.md) | 42 | `declaration-track:ccb4c5b5af11310d6b116245a94715ef3e6ca63c63dc77e27aa926630bec1590` |
| 4 | `instance` | [distribSMul'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/distribsmul--ebf8c82c2547b3a65ae71a4c.md) | 47 | `declaration-track:ebf8c82c2547b3a65ae71a4c8cc0713506a6834cd32956f62c1080f1dd45b6fd` |
| 5 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/distribmulaction--8fab33ccec774d9efeb57de2.md) | 53 | `declaration-track:8fab33ccec774d9efeb57de2e28e5e9ca876b727057a5087e79d7ccb59b6bf53` |
| 6 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/distribmulaction--2dfb4d9ab0e26fa7d3bf4867.md) | 57 | `declaration-track:2dfb4d9ab0e26fa7d3bf486787fe4aa061c42a6708ac51c0485e01358a5a2d0d` |
| 7 | `theorem` | [single_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/single-smul--c142aeb70e4002cdeb8722ca.md) | 62 | `result-track:c142aeb70e4002cdeb8722ca2917fd38f3c3f05023c11bb653a07a8a1e314ad4` |
| 8 | `theorem` | [single_smul'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/single-smul--a198226c6624e9bd3a9c4dfd.md) | 69 | `result-track:a198226c6624e9bd3a9c4dfde1302d94f1131bbb22481b0c5c7c4b83294e7835` |
| 9 | `theorem` | [single_smul₀](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/single-smul--5fb76e4395c18463de853956.md) | 73 | `result-track:5fb76e4395c18463de853956a136c7b813d8007b875b6c74bf03f8c56c062190` |
| 10 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/muldistribmulaction--841e2229654f4af45c227d8f.md) | 78 | `declaration-track:841e2229654f4af45c227d8f5d5560b75b7ea9a58225d5a9c97f869b6febde3a` |
| 11 | `instance` | [mulDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantafb20d61cee94f122fe8ff0ffb6410b04dad9dd633a24afd25222eb66d3c056f.lean/declarations/muldistribmulaction--100d3643cdfadcd81fcd5ba1.md) | 85 | `declaration-track:100d3643cdfadcd81fcd5ba1df0285930f0e102bbabb16eb72b796133e04c119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
