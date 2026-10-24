# Verification target: GRWTSK.Algebra.LinearAlgebra.JordanChevalley.Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25fe4b899f71110688608094c1319d52fa5f8be9",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25fe4b899f71110688608094c1319d52fa5f8be9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Newton` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Semisimple` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isNilpotent_isSemisimple_of_separable_of_dvd_pow](../../../../../mathematics/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean/declarations/exists-isnilpotent-issemisimple-of-separable-of-dvd-pow--aadd37716d3d4c8bb3546de3.md) | 43 | `result-track:aadd37716d3d4c8bb3546de36b3643c7343fde7abe42f2dd2951345e0118845d` |
| 2 | `theorem` | [exists_isNilpotent_isSemisimple](../../../../../mathematics/Algebra/LinearAlgebra/JordanChevalley/Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034.lean/declarations/exists-isnilpotent-issemisimple--1d0c1e92885857acb6ee6338.md) | 74 | `result-track:1d0c1e92885857acb6ee633803f6e3359e7ae649814c41a82a6fcfa3f123e225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
