# Verification target: GRWTSK.Algebra.LinearAlgebra.Algebra.Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d138237ea1a4849b59f26d72a6697234587eb2ea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d138237ea1a4849b59f26d72a6697234587eb2ea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean.json)

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
| 1 | `def` | [moduleOfAlgebraModule](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/declarations/moduleofalgebramodule--09260978a77eaba377d113d6.md) | 47 | `declaration-track:09260978a77eaba377d113d6dd64a5631f77f77dc078617ce2e97bfe1d7ded79` |
| 2 | `theorem` | [isScalarTower_of_algebra_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/declarations/isscalartower-of-algebra-modulecat--78250cf3a53e22adab774f90.md) | 53 | `result-track:78250cf3a53e22adab774f90f6d73dc193bec8c7c92381350b8eaba149ccb6b2` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/declarations/example--fd6945726dc4eb3f11363f38.md) | 60 | `declaration-track:fd6945726dc4eb3f11363f38f8e7fc7485389747382c7303df473f5601eb02ba` |
| 4 | `instance` | [linearOverField](../../../../../mathematics/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/declarations/linearoverfield--f1d91a9c96fcfcd5aaf78ea7.md) | 63 | `declaration-track:f1d91a9c96fcfcd5aaf78ea7346eec7d8391ba7ed75019f8fc5fa2ef0ea9d9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
