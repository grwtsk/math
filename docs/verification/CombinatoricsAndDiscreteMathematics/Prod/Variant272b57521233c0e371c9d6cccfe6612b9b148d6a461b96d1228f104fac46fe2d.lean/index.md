# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb83c506db67f026e08ccf7aeb6d931b21a00258",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb83c506db67f026e08ccf7aeb6d931b21a00258`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toFinset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/tofinset-prod--cf7628a5706a365da7075b9a.md) | 27 | `result-track:cf7628a5706a365da7075b9a1834b29350c76e495d806ba2b662e024a7403423` |
| 2 | `theorem` | [toFinset_off_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/tofinset-off-diag--6c3315f0add793ee88e9acce.md) | 32 | `result-track:6c3315f0add793ee88e9acce062ffd48dfe0cdb020003be957f79a26b8adc587` |
| 3 | `instance` | [instFintypeProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/instfintypeprod--00ab49554cf15fc4f13de167.md) | 38 | `declaration-track:00ab49554cf15fc4f13de1670f8b6b76ca7416b2bdbf268ec81a4aa75ace2826` |
| 4 | `lemma` | [univ_product_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/univ-product-univ--4948e44fe2a73c7a892522b5.md) | 44 | `result-track:4948e44fe2a73c7a892522b526d2b77a79d18efbcdb2a38f27e656ab65aa1d10` |
| 5 | `lemma` | [product_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/product-eq-univ--ff9887fbd3861ab2df5cbf9c.md) | 46 | `result-track:ff9887fbd3861ab2df5cbf9c8055fba31cf2c915c3e4d578abdaea46adf134f7` |
| 6 | `theorem` | [Fintype.card_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/fintype-card-prod--67c13bbc89d4db7236c4ce62.md) | 52 | `result-track:67c13bbc89d4db7236c4ce6285d147f404ecc8fa91c392f9b37c4f497b99b9cf` |
| 7 | `theorem` | [infinite_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/infinite-prod--2f1f53c44b27089e00286078.md) | 59 | `result-track:2f1f53c44b27089e00286078156ee57c9143043b11858aed5350eb7b7d6f7590` |
| 8 | `instance` | [Pi.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/pi-infinite-of-left--74c4ef9d373b4fbf3458760b.md) | 68 | `declaration-track:74c4ef9d373b4fbf3458760b0c5f69bf3c19fc741e5a0b95182aa5865b5ff5bb` |
| 9 | `theorem` | [Pi.infinite_of_exists_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/pi-infinite-of-exists-right--cd52501c03175c5e9a08c9ac.md) | 77 | `result-track:cd52501c03175c5e9a08c9ac25f17f9e855c8c93c807663ddca944b8a690449d` |
| 10 | `instance` | [Pi.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/pi-infinite-of-right--4aa41341ef2e6d4d8aed6280.md) | 84 | `declaration-track:4aa41341ef2e6d4d8aed62805bce021cdd7ea3eae904899368036e0d76b9b07b` |
| 11 | `instance` | [Function.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/function-infinite-of-left--0f3ac4e127f4ddd7537863ac.md) | 89 | `declaration-track:0f3ac4e127f4ddd7537863ac2e8fcc25960c74ea682dd3eb853da47d4db39ac0` |
| 12 | `instance` | [Function.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant272b57521233c0e371c9d6cccfe6612b9b148d6a461b96d1228f104fac46fe2d.lean/declarations/function-infinite-of-right--a98590c5231389b5e0859b5a.md) | 94 | `declaration-track:a98590c5231389b5e0859b5a72a1f0df5abdafdcfa4e0734d4f435ee8086f899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
