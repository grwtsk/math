# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34e3052b68b3a9559d0c945fa74f136157eaec89",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34e3052b68b3a9559d0c945fa74f136157eaec89`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/declarations/isorderedaddmonoid--f2a435d4b0af3695426bae8e.md) | 20 | `declaration-track:f2a435d4b0af3695426bae8e353a2a100faef75c29e792dfd8eee9bb64d043ba` |
| 2 | `instance` | [canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/declarations/canonicallyorderedadd--05cc09c0ba5afe2b5006e016.md) | 24 | `declaration-track:05cc09c0ba5afe2b5006e016dc110100ee960a7be1053189baa2ef0178739e85` |
| 3 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/declarations/isorderedaddmonoid--a71d9536bbec04ca86fcffa6.md) | 38 | `declaration-track:a71d9536bbec04ca86fcffa61e5a888c2663a33a1aaf916812b021d1ce98be3b` |
| 4 | `theorem` | [le_self_add](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/declarations/le-self-add--af175af2c168d1d8ad9b2cef.md) | 42 | `result-track:af175af2c168d1d8ad9b2cef9d6f747171966509e2390f7296600e60cc8e047c` |
| 5 | `theorem` | [le_add_self](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70.lean/declarations/le-add-self--14fdc6a486fe5c04d5929379.md) | 52 | `result-track:14fdc6a486fe5c04d59293795efb0ff1fc8fd72adcb1397047f057a940dcb6f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
