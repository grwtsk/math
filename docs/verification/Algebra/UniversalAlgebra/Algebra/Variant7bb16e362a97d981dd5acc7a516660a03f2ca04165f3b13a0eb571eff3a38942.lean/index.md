# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "275ae2fa12b4ffa8ccf33e80abe9d6ddcd9f6480",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `275ae2fa12b4ffa8ccf33e80abe9d6ddcd9f6480`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moduleOfAlgebraModule](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean/declarations/moduleofalgebramodule--4eebfe56d7cf6f4d7ae693a7.md) | 43 | `declaration-track:4eebfe56d7cf6f4d7ae693a77f3aa6f7368242e332e647019a9a9a493102e828` |
| 2 | `theorem` | [isScalarTower_of_algebra_moduleCat](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean/declarations/isscalartower-of-algebra-modulecat--4f704b139b7b70c6b1e0b0b8.md) | 48 | `result-track:4f704b139b7b70c6b1e0b0b8208ed78a0c4f6d26e9f69a0c10be0d7c66d933ef` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean/declarations/example--e4e08cc1ebc7090531e39af5.md) | 54 | `declaration-track:e4e08cc1ebc7090531e39af561bd42064d85c62ccbff908efa1b7179a01af98d` |
| 4 | `instance` | [linearOverField](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant7bb16e362a97d981dd5acc7a516660a03f2ca04165f3b13a0eb571eff3a38942.lean/declarations/linearoverfield--5b41c0ff7683a214eb2cde0a.md) | 56 | `declaration-track:5b41c0ff7683a214eb2cde0a50d937a9dcb4879fd2902cfcd65192f9087dc500` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
