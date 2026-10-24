# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Embeddings.Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f60a03c56ae9aa02852a02f38cec3ea10f8fbd3d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f60a03c56ae9aa02852a02f38cec3ea10f8fbd3d`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nrRealPlaces_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean/declarations/nrrealplaces-eq-zero--78401afd832e50ee13866686.md) | 30 | `result-track:78401afd832e50ee138666867dbf7a05138f5c957bb2c5d80328a0aca13ca80d` |
| 2 | `theorem` | [nrComplexPlaces_eq_totient_div_two](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383.lean/declarations/nrcomplexplaces-eq-totient-div-two--2584aa91f323cf9b77489767.md) | 41 | `result-track:2584aa91f323cf9b77489767fe981dd7a80987d1ad8394edbb66f37024c3a8b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
