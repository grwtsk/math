# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1bc840cd9f5738c63afdcc0d35041e9f77af08b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1bc840cd9f5738c63afdcc0d35041e9f77af08b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Small.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsProjective.iff_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/declarations/isprojective-iff-projective--f8cbd31aa10188061ab3ab80.md) | 20 | `result-track:f8cbd31aa10188061ab3ab80dc38db0fa7810d9f02ddbe556bfb25b166672851` |
| 2 | `theorem` | [projective_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/declarations/projective-of-free--c120736206b6cda8e6e8315e.md) | 41 | `result-track:c120736206b6cda8e6e8315ece5739005a8f17fbeceb98602bdf6f72c10c1671` |
| 3 | `instance` | [enoughProjectives](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/declarations/enoughprojectives--5b8de0e0501a82c66e52ca25.md) | 50 | `declaration-track:5b8de0e0501a82c66e52ca25fe71cc872a2b3a451b7121e29fc80a5875f656e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
