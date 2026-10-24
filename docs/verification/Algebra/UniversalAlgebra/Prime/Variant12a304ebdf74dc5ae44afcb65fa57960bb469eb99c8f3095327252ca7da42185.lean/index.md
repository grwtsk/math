# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prime.Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a767ac9176cfd1f57c9c7261cd7c69392803ac8b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a767ac9176cfd1f57c9c7261cd7c69392803ac8b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_eq_mul_prime_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean/declarations/mul-eq-mul-prime-prod--af542ef2c01b69078e093710.md) | 27 | `result-track:af542ef2c01b69078e093710b6f9a95480c31e924e3059cf8758162498170805` |
| 2 | `theorem` | [mul_eq_mul_prime_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean/declarations/mul-eq-mul-prime-pow--4b28ef01c00920fb07ce0e96.md) | 49 | `result-track:4b28ef01c00920fb07ce0e9699f744c3cc3a7b9ee53e6ab82f5086886005b754` |
| 3 | `theorem` | [Prime.neg](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean/declarations/prime-neg--554d7b89ea111182064173fb.md) | 62 | `result-track:554d7b89ea111182064173fb28ec4cb91f371a4e72eb09ffc217b926f69c70d0` |
| 4 | `theorem` | [Prime.abs](../../../../../mathematics/Algebra/UniversalAlgebra/Prime/Variant12a304ebdf74dc5ae44afcb65fa57960bb469eb99c8f3095327252ca7da42185.lean/declarations/prime-abs--b6ab26aefdd28455679165af.md) | 66 | `result-track:b6ab26aefdd28455679165af10051667c09af2ac4e05bfc030bed33f7ec0a4bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
