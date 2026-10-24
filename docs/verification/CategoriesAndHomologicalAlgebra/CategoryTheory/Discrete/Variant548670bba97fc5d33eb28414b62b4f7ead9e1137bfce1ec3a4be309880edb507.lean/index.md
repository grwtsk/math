# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94af4d272755dc0c1148cc54ca6700cad3a3012c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94af4d272755dc0c1148cc54ca6700cad3a3012c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DiscreteCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Discrete.monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/declarations/discrete-monoidal--bd931c8082bf30558c29bfae.md) | 37 | `declaration-track:bd931c8082bf30558c29bfae825a635e7205ccf3ca07f19a4433842ab81d131e` |
| 2 | `lemma` | [Discrete.monoidal_tensorUnit_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/declarations/discrete-monoidal-tensorunit-as--ee063d7024be9541ad89f69f.md) | 51 | `result-track:ee063d7024be9541ad89f69f9b79a76eec827b0a83eb833c4a1992fcf5dc1ebc` |
| 3 | `def` | [Discrete.monoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/declarations/discrete-monoidalfunctor--6c48dfb7fe94a231cbb54e95.md) | 60 | `declaration-track:6c48dfb7fe94a231cbb54e9552212826dd31a994e01b061907770d1e7d38d90b` |
| 4 | `def` | [Discrete.monoidalFunctorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/declarations/discrete-monoidalfunctorcomp--96f3213b6a60d8ab575a46b5.md) | 79 | `declaration-track:96f3213b6a60d8ab575a46b50927cb31a4f2079a643e0e27491fb7cfe8c06222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
