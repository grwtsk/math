# Verification target: GRWTSK.Algebra.ZMod.Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd34d648367430cf863e1286b48d71012f06f33d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd34d648367430cf863e1286b48d71012f06f33d`.

Source path: `GRWTSK/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_inv_cancel_aux](../../../../mathematics/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean/declarations/mul-inv-cancel-aux--f71498b6e4a801928844bdba.md) | 24 | `result-track:f71498b6e4a801928844bdba830244d2452abc4f2cfb2b672e6adc9b068d6b08` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean/declarations/instance--56143a862c539f2f43b60d9b.md) | 31 | `declaration-track:56143a862c539f2f43b60d9b2f8d61eb649caf28db6beb4d0e1de59fc3be651e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZMod/Variant70ca9380158c7c60801574c402ad6cc42a83db7e12e015b6c5b68c1274c4e1ae.lean/declarations/instance--3680fa03e35cfbb329941c1a.md) | 40 | `declaration-track:3680fa03e35cfbb329941c1a601b0a4b19b37ec8eab20af1281eeb2b7b4b6aca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
