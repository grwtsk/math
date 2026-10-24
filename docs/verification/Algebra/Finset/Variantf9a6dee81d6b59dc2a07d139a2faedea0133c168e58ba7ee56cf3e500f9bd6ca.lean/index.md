# Verification target: GRWTSK.Algebra.Finset.Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03d4bcb4f3813f5d9f47c06592de3d36b6aad858",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03d4bcb4f3813f5d9f47c06592de3d36b6aad858`.

Source path: `GRWTSK/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distribNeg](../../../../mathematics/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean/declarations/distribneg--c2ea2b4c1621f2f0e89ab1ba.md) | 29 | `declaration-track:c2ea2b4c1621f2f0e89ab1ba9552113d7298f20ef738172f611070fe1e0e8b95` |
| 2 | `lemma` | [mul_add_subset](../../../../mathematics/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean/declarations/mul-add-subset--5ee80469891db27c959bc691.md) | 51 | `result-track:5ee80469891db27c959bc691003268f0a17ce7e6158506cd229df3da135f4b99` |
| 3 | `lemma` | [add_mul_subset](../../../../mathematics/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean/declarations/add-mul-subset--d5289ce75869e84532635ef2.md) | 54 | `result-track:d5289ce75869e84532635ef2226df19c0a7e8733e32216becc9765e25c477c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
