# Verification target: GRWTSK.Algebra.FiniteField.GF128.Exponentiation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22890b9b5803d84f5a610d3798cb1a988a527f66",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Exponentiation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22890b9b5803d84f5a610d3798cb1a988a527f66`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Exponentiation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Exponentiation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.Bitwise`](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rustPowFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/declarations/rustpowfuel--39266a347d13aa409e623366.md) | 6 | `declaration-track:39266a347d13aa409e6233661b7d1f8e224a442b90ab6159933dfe5ac425c469` |
| 2 | `theorem` | [powFuel_zero_exponent](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/declarations/powfuel-zero-exponent--559fa9c2afce321f85dfa6c8.md) | 16 | `result-track:559fa9c2afce321f85dfa6c849c6a788b07d4563c87a17cf19c92f6c8df79c32` |
| 3 | `theorem` | [rustPowFuel_eq_powFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/declarations/rustpowfuel-eq-powfuel--c344ff3321b2a2be4b42114e.md) | 21 | `result-track:c344ff3321b2a2be4b42114e5898333174e5716aaf49971e3e7203b3dc6a1468` |
| 4 | `def` | [rustInv](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/declarations/rustinv--83b67bef91dbfb08a51dd8e7.md) | 34 | `declaration-track:83b67bef91dbfb08a51dd8e77200827294b36a4649c56a988a97c42ce3801416` |
| 5 | `theorem` | [rustInv_eq_inv](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Exponentiation.lean/declarations/rustinv-eq-inv--52a56b7ac64515ae6735830d.md) | 38 | `result-track:52a56b7ac64515ae6735830d2352ea4b663eb6c7361356505e094087a30e5538` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
