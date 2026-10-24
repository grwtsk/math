# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a192387ae69da80467bc364b109a2c4f57b90c15",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a192387ae69da80467bc364b109a2c4f57b90c15`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Rat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toRatAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/declarations/toratalghom--d9c7f2f9f884cd40cba1f1bd.md) | 29 | `declaration-track:d9c7f2f9f884cd40cba1f1bddd438e8e708a317021c6f1e4ee0c60b50acc7aea` |
| 2 | `theorem` | [toRatAlgHom_toRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/declarations/toratalghom-toringhom--12099a5b419b1114a96cb44b.md) | 33 | `result-track:12099a5b419b1114a96cb44bfee010c287fc8f2cd75a01e5876e644a3f49c7b0` |
| 3 | `theorem` | [toRatAlgHom_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/declarations/toratalghom-apply--4bfacaf5d6316f52b9b44240.md) | 38 | `result-track:4bfacaf5d6316f52b9b442405d79035aaefa8bac423c938b35dcbd052b7e235e` |
| 4 | `theorem` | [AlgHom.toRingHom_toRatAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/declarations/alghom-toringhom-toratalghom--bfaed7d9b5165087f5a249c9.md) | 49 | `result-track:bfaed7d9b5165087f5a249c9a034eecff35206a5c673516b9c68bc18dea72e1a` |
| 5 | `def` | [RingHom.equivRatAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc6c62724f72edfd4f0234f37483002075f8e1367a08cead57796711852a3a77a.lean/declarations/ringhom-equivratalghom--6a57ee8c11054545829fb35b.md) | 55 | `declaration-track:6a57ee8c11054545829fb35bbfd8e814183c8e71a21f6bfbf3214782eb96f5ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
