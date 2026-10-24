# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Discriminant.Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "345cbe97065f18528b9c2f079af9b567e211cdbf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `345cbe97065f18528b9c2f079af9b567e211cdbf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/macro-rules--ed32c86dafed6b23678681bc.md) | 34 | `declaration-track:ed32c86dafed6b23678681bc069ca4b081fd532556bc25bda29b8a23d2287cf1` |
| 2 | `theorem` | [discr_zeta_eq_discr_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/discr-zeta-eq-discr-zeta-sub-one--d81e7672f9504d2b79b64f02.md) | 48 | `result-track:d81e7672f9504d2b79b64f02c457527ad2626c981e5f3021498aae79fa86fae0` |
| 3 | `theorem` | [discr_prime_pow_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/discr-prime-pow-ne-two--9392eeffe0c21477cb425cdd.md) | 73 | `result-track:9392eeffe0c21477cb425cdd3a66ca45ef841b77cf04ecc11fbbbd35554e040e` |
| 4 | `theorem` | [discr_prime_pow_ne_two'](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/discr-prime-pow-ne-two--56d38e11f06e825d3e3b360c.md) | 140 | `result-track:56d38e11f06e825d3e3b360ce31c7ca31264faff94ae9b359e5aa2d19dd147ed` |
| 5 | `theorem` | [discr_prime_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/discr-prime-pow--82f80a87271992c33b47af75.md) | 152 | `result-track:82f80a87271992c33b47af751bafdb00a7d5d70b1bfd20c1c884192165f23f92` |
| 6 | `theorem` | [discr_prime_pow_eq_unit_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/discr-prime-pow-eq-unit-mul-pow--105deba6a312ca5fc67e5b4e.md) | 194 | `result-track:105deba6a312ca5fc67e5b4eb9dd15dc1b966da9b2dcd3fb0c053ec9ab642f96` |
| 7 | `theorem` | [discr_odd_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Discriminant/Variant6d12c3ad803d94dfb5c3fda7a956789fa1f84f3efca6369a92ee1135076cf103.lean/declarations/discr-odd-prime--0196e1e8ac6909ae22554a58.md) | 208 | `result-track:0196e1e8ac6909ae22554a58c86d5817c442cb727fe8143839d365797a0ed8e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
