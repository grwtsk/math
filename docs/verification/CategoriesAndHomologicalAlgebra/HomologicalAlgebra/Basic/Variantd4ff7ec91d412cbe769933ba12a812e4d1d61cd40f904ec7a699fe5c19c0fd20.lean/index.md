# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85f8e138c2384aea266695f5c55cc59d39a6870a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85f8e138c2384aea266695f5c55cc59d39a6870a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.GroupCohomology.Resolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [linearYonedaObjResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/linearyonedaobjresolution--ac33e8e2c504005d3dd1f6a0.md) | 82 | `declaration-track:ac33e8e2c504005d3dd1f6a062c01acc0525c34c9ee00b53735b2ecc29629387` |
| 2 | `theorem` | [linearYonedaObjResolution_d_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/linearyonedaobjresolution-d-apply--ff90381eef14d0c6b90621b6.md) | 87 | `result-track:ff90381eef14d0c6b90621b65d3f082dfc4802094098b4da417dbf5b10fc28d8` |
| 3 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/d--be821f09009a749214be78ad.md) | 101 | `declaration-track:be821f09009a749214be78adc473cd1beeb05bb0f3ab2119becf3342d86c041e` |
| 4 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/d-eq--a5c0ce981e656e979b2e285c.md) | 124 | `result-track:a5c0ce981e656e979b2e285c7749b360eb194f564d0c51c95c7bf8dbfd0283e0` |
| 5 | `abbrev` | [inhomogeneousCochains](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/inhomogeneouscochains--29ad5c35913e4e288040f380.md) | 179 | `declaration-track:29ad5c35913e4e288040f3809573298e8c3668bc9e589098b7ca295a5acfb153` |
| 6 | `def` | [inhomogeneousCochainsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/inhomogeneouscochainsiso--2b6dc04fd571de3e4b6305bc.md) | 205 | `declaration-track:2b6dc04fd571de3e4b6305bc353f2410735dd92247b50cccd8d959864eb5732a` |
| 7 | `def` | [groupCohomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/groupcohomology--175994b5470ddfada19a9995.md) | 221 | `declaration-track:175994b5470ddfada19a99955fa83cd02d028349c1607479d16274280447680b` |
| 8 | `def` | [groupCohomologyIsoExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/declarations/groupcohomologyisoext--56a12cb2cd9b15918c27a69f.md) | 228 | `declaration-track:56a12cb2cd9b15918c27a69fc4c4041a3efc8a7ba92bc83b11a949b71db1f1d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
