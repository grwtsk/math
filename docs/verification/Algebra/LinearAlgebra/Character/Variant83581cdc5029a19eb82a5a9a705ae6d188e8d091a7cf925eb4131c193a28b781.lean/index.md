# Verification target: GRWTSK.Algebra.LinearAlgebra.Character.Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b933b2207b0fcde7b303cc7c0336b59b1a12d34",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b933b2207b0fcde7b303cc7c0336b59b1a12d34`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Solvable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieCharacter](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/declarations/liecharacter--bceba85a1ac3ab10a284a997.md) | 43 | `declaration-track:bceba85a1ac3ab10a284a9977b79d030b4f8e4e7318577c11fd2f7239f345b0c` |
| 2 | `theorem` | [lieCharacter_apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/declarations/liecharacter-apply-lie--d6c2bc303fb80dc1aaca4f53.md) | 48 | `result-track:d6c2bc303fb80dc1aaca4f537bef792490ec9571aae3e5c5e078d8f5924b5f4b` |
| 3 | `theorem` | [lieCharacter_apply_lie'](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/declarations/liecharacter-apply-lie--5f46ec8de2663dbab6addfa9.md) | 52 | `result-track:5f46ec8de2663dbab6addfa913505af7cf8343594ca030865e7ad056fbd077cc` |
| 4 | `theorem` | [lieCharacter_apply_of_mem_derived](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/declarations/liecharacter-apply-of-mem-derived--0aa067d73192dcb8e5e1f33a.md) | 55 | `result-track:0aa067d73192dcb8e5e1f33a14b5f542d65aef977d8dac485fbf5bcdd1d75a77` |
| 5 | `def` | [lieCharacterEquivLinearDual](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant83581cdc5029a19eb82a5a9a705ae6d188e8d091a7cf925eb4131c193a28b781.lean/declarations/liecharacterequivlineardual--68e36e62166538ec4fac2a0e.md) | 67 | `declaration-track:68e36e62166538ec4fac2a0e50bdc0bdcc15d8126501b347649a89f8b35372c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
