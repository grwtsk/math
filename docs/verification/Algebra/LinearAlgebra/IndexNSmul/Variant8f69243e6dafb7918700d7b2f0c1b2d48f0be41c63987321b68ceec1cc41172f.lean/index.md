# Verification target: GRWTSK.Algebra.LinearAlgebra.IndexNSmul.Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b265510e0eae62cccf7cb9140bb0d9a4aefa2717",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b265510e0eae62cccf7cb9140bb0d9a4aefa2717`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [index_range_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/declarations/index-range-nsmul--8ae5db08e900224315d11ee5.md) | 47 | `result-track:8ae5db08e900224315d11ee5087038d66bd8adfe37930fb84fed22be29194fff` |
| 2 | `lemma` | [relIndex_map_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/declarations/relindex-map-nsmul--e21300f6d2652f6c117c4ec2.md) | 62 | `result-track:e21300f6d2652f6c117c4ec20c975c6bb654b5653f562f86d0996aefbbb0969c` |
| 3 | `lemma` | [distribSMulToLinearMap_injective_of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/declarations/distribsmultolinearmap-injective-of-istorsionfree--368aa54a6e7ab343b9509a7d.md) | 70 | `result-track:368aa54a6e7ab343b9509a7d515ad90593c8ae1401176a505a5733be0ac8826c` |
| 4 | `lemma` | [nsmulAddMonoidHom_injective_of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/declarations/nsmuladdmonoidhom-injective-of-istorsionfree--c382cc486b5918d69b187c69.md) | 76 | `result-track:c382cc486b5918d69b187c699bfc71782eed6858b0908fe692f172364844f7aa` |
| 5 | `lemma` | [finrank_eq_of_finiteIndex](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/declarations/finrank-eq-of-finiteindex--853949d38ab047c527566fd1.md) | 82 | `result-track:853949d38ab047c527566fd145806c7db554b1c35e65d24b64edd5d412d452c5` |
| 6 | `lemma` | [finrank_eq_of_isFiniteRelIndex](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/declarations/finrank-eq-of-isfiniterelindex--e096931f94e87954bcf872cc.md) | 97 | `result-track:e096931f94e87954bcf872ccb902127fd4a725fd74ac8fd7a1408efe151d73f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
