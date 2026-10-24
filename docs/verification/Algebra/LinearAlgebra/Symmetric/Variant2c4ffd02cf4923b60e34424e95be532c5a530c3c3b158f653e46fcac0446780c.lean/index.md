# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a20d186d89a896bf5a58f4c338c21f017e3da264",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a20d186d89a896bf5a58f4c338c21f017e3da264`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/braiding--d22c7e7e2125b4893239f277.md) | 33 | `declaration-track:d22c7e7e2125b4893239f2774282c4d2f289bfd17971cf6b195ead86fecc6b43` |
| 2 | `theorem` | [braiding_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/braiding-naturality--10a45ff20dd550af807c9a23.md) | 41 | `result-track:10a45ff20dd550af807c9a235caa25bdf6e8bd0f84f02b0043d8b3971a984faa` |
| 3 | `theorem` | [hexagon_forward](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/hexagon-forward--d2f33ba9af04b33f6ca8c65a.md) | 50 | `result-track:d2f33ba9af04b33f6ca8c65a266065cb513ee5d6dc5acd392956afc0c86d555c` |
| 4 | `theorem` | [hexagon_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/hexagon-reverse--28c5eb759c7713c3228263d4.md) | 60 | `result-track:28c5eb759c7713c3228263d4961fe719f7d45b031751126b5c867fa87881e177` |
| 5 | `instance` | [symmetricCategory](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/symmetriccategory--f793fbdf02d4f8549f324bee.md) | 73 | `declaration-track:f793fbdf02d4f8549f324bee608ab0f68996dfd772ddcbbd02553ec320b208b1` |
| 6 | `theorem` | [braiding_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/braiding-hom-apply--24789ab31f443b93f5e95501.md) | 87 | `result-track:24789ab31f443b93f5e95501076bb762557d4f6d1c6949c18a40df4d98905b80` |
| 7 | `theorem` | [braiding_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2c4ffd02cf4923b60e34424e95be532c5a530c3c3b158f653e46fcac0446780c.lean/declarations/braiding-inv-apply--40e74f7b85c30c5ebcf94c27.md) | 94 | `result-track:40e74f7b85c30c5ebcf94c278b3ad7a2bcac7cfa1d3454c693116a91bbc95db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
