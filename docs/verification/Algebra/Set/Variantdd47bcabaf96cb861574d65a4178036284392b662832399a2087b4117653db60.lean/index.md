# Verification target: GRWTSK.Algebra.Set.Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e8b79519378430c5ede515aab54ddb733ad3908",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean/index.md) · [Full source](../../../../mathematics/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e8b79519378430c5ede515aab54ddb733ad3908`.

Source path: `GRWTSK/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasDistribNeg](../../../../mathematics/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean/declarations/hasdistribneg--9a09ec2b2a282403e95a0f5d.md) | 38 | `declaration-track:9a09ec2b2a282403e95a0f5d7cbc479635d70a8db63c7713070fd6f818569b08` |
| 2 | `lemma` | [mul_add_subset](../../../../mathematics/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean/declarations/mul-add-subset--4b4e07300444c112066b74a4.md) | 53 | `result-track:4b4e07300444c112066b74a4b028cf4ea970d6ba0614244bab8dda427786353b` |
| 3 | `lemma` | [add_mul_subset](../../../../mathematics/Algebra/Set/Variantdd47bcabaf96cb861574d65a4178036284392b662832399a2087b4117653db60.lean/declarations/add-mul-subset--72ee6d7907f38ec8e9690548.md) | 54 | `result-track:72ee6d7907f38ec8e96905488ab971412fd104ce4a66950136d8ca4832edf8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
