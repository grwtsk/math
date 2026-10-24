# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f78ae50e56e76874042119be641571d941d23986",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f78ae50e56e76874042119be641571d941d23986`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.GCD.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveAdditiveTriple](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/primitiveadditivetriple--97682cb2bb288062404c2ac9.md) | 13 | `declaration-track:97682cb2bb288062404c2ac9e126314086e6b55eef81e33a70cfcc09603fdcef` |
| 2 | `theorem` | [c_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/c-pos--c1fd6c058638ea48dedba4c0.md) | 27 | `result-track:c1fd6c058638ea48dedba4c0d6aef9487e3336f4d33a02ce6baa8a4355433a0e` |
| 3 | `theorem` | [two_le_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/two-le-c--3d7abbd59aa333f82effecc7.md) | 31 | `result-track:3d7abbd59aa333f82effecc7ce3bf7694799d55b6cd23822c3a68f77b1e49f53` |
| 4 | `theorem` | [a_lt_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/a-lt-c--2d222b75b499ead7cda613a4.md) | 37 | `result-track:2d222b75b499ead7cda613a4874f703bf38573057567043c665d0f50fe200640` |
| 5 | `theorem` | [b_lt_c](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/b-lt-c--50a36d51eaf2fae188cdf5f3.md) | 41 | `result-track:50a36d51eaf2fae188cdf5f3715d5da0941a71ba4469c3541396869ea5b84e33` |
| 6 | `theorem` | [coprime_ac](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/coprime-ac--3928123f03275924ddeb8ddf.md) | 45 | `result-track:3928123f03275924ddeb8ddf45ecfca995c0abb77f7983fa2bda67a227a86d17` |
| 7 | `theorem` | [coprime_bc](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/coprime-bc--382b54627fbe56d550873426.md) | 49 | `result-track:382b54627fbe56d5508734268c1ebaaec308fd6c8b0503b4a93b336ccdb805fa` |
| 8 | `theorem` | [pairwise_coprime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/pairwise-coprime--8852472d62db49941f2f88bc.md) | 55 | `result-track:8852472d62db49941f2f88bc798e69d04bb0be409c5195bd0169bb256344debc` |
| 9 | `theorem` | [product_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/product-pos--4edaddc3a45d09adfa70ebdd.md) | 59 | `result-track:4edaddc3a45d09adfa70ebddd50aefb86aa23083e979b2392567e3fcb544b398` |
| 10 | `theorem` | [coordinates_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/coordinates-injective--8e46eb6f7574bc0255c80901.md) | 63 | `result-track:8e46eb6f7574bc0255c8090190ea78696234ee8fc28beaaeb8cd80477cd9b545` |
| 11 | `theorem` | [finite_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/declarations/finite-height--18b27bca94dc40d3fe0c427d.md) | 73 | `result-track:18b27bca94dc40d3fe0c427d31cd17dc3dd9560e9cf7ee7249ff83a53e6f2484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
