# Verification target: GRWTSK.Algebra.Quotient.Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a01082aeb9277f4ac22a4088729ad48adeb5743a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a01082aeb9277f4ac22a4088729ad48adeb5743a`.

Source path: `GRWTSK/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Actions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [module_finite_of_liesOver](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/declarations/module-finite-of-liesover--8f0970574c73d6cc02d9243c.md) | 19 | `declaration-track:8f0970574c73d6cc02d9243ca12ccb4fe33133a6c10a1419a64b91661afbe4e7` |
| 2 | `example` | [(anonymous)](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/declarations/example--b7b288b0c3cd12d2c6957e65.md) | 22 | `declaration-track:b7b288b0c3cd12d2c6957e65caf3ad80819c2fbe391bba1918888c1939e2d17c` |
| 3 | `instance` | [algebra_finiteType_of_liesOver](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/declarations/algebra-finitetype-of-liesover--9810c6288be027b05ab231ed.md) | 25 | `declaration-track:9810c6288be027b05ab231edfa0d77e03513d963d52a6b7b6819c256e99f8e0c` |
| 4 | `instance` | [isNoetherian_of_liesOver](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/declarations/isnoetherian-of-liesover--4b3e2b3e1ca065801b4457c0.md) | 30 | `declaration-track:4b3e2b3e1ca065801b4457c0470e4d18f6e09b8be728c642de52f28f6b28c774` |
| 5 | `instance` | [QuotientMapQuotient.isNoetherian](../../../../mathematics/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/declarations/quotientmapquotient-isnoetherian--efdfae03f777e856b98d3237.md) | 33 | `declaration-track:efdfae03f777e856b98d323723b78e4d8f280a7467eaa37a593b801da5694a7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
