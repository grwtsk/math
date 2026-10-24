# Verification target: GRWTSK.Algebra.LinearAlgebra.Finite.Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82216a2e3a270d5d7a955d9756fd95b9839df75c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82216a2e3a270d5d7a955d9756fd95b9839df75c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rank_eq_zero_iff_isTorsion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean/declarations/rank-eq-zero-iff-istorsion--f6edaa572712e47090942869.md) | 24 | `result-track:f6edaa572712e47090942869f192eacdd8d005c4d23e75f6596fbc9104dc64a3` |
| 2 | `theorem` | [Module.finrank_eq_zero_iff_isTorsion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variantf693b88d21aea43c32c59aca19ea20b2ef5c2fccee6c6f13f8ffb9845691c18a.lean/declarations/module-finrank-eq-zero-iff-istorsion--11f7f461b4ca2121509510c1.md) | 29 | `result-track:11f7f461b4ca2121509510c1a56a20854469a7c25684bfe62fc60284368cfefe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
