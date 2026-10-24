# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6df0b372418e27fa701420f7e78ae47940dede3c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6df0b372418e27fa701420f7e78ae47940dede3c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/linearindependent-single--80a954ccec5c650a4a6a37a1.md) | 56 | `result-track:80a954ccec5c650a4a6a37a142e7392f9d22132867194225e386106e670172ae` |
| 2 | `theorem` | [linearIndependent_single_one](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/linearindependent-single-one--66ea7c0477e9dc097d91e1d2.md) | 61 | `result-track:66ea7c0477e9dc097d91e1d292ee7ee579b00d9af39e559d13e19213063f0c61` |
| 3 | `lemma` | [linearIndependent_single_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/linearindependent-single-of-ne-zero--d1effb89164a6dc271c317a0.md) | 67 | `result-track:d1effb89164a6dc271c317a067e7292a68d497563934ead0370b50cdb7c78bc4` |
| 4 | `theorem` | [linearIndependent_single_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/linearindependent-single-ne-zero--8676ba5aec8b6704da4795e1.md) | 75 | `result-track:8676ba5aec8b6704da4795e1ee00d1db35d30668d6f9e58c4e75a8445fb1959e` |
| 5 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basis--08042ace2e513bfda32e07b1.md) | 92 | `declaration-track:08042ace2e513bfda32e07b1579450a0df62c2a10b0d79d2286147ef372c2e37` |
| 6 | `theorem` | [basis_repr_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basis-repr-single--fe617efab4c10544de3c8bf1.md) | 99 | `result-track:fe617efab4c10544de3c8bf1dbd514c7c73152053aab00ecd7f18d4eee673fda` |
| 7 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basis-apply--c833342aa4e7fc0a586a1907.md) | 119 | `result-track:c833342aa4e7fc0a586a1907ecaebf4739e6c061c438944bee939dd8f1a1d9c5` |
| 8 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basis-repr--a6ff91ec8443031c027e3e4f.md) | 124 | `result-track:a6ff91ec8443031c027e3e4f88d840e93901fddeaa35971a26411b2ccaf1dbe8` |
| 9 | `def` | [basisFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basisfun--e72ee79f3f002a19ca8cb26f.md) | 136 | `declaration-track:e72ee79f3f002a19ca8cb26f0e66ac279431a71feb1f979fda034106d4936c3e` |
| 10 | `theorem` | [basisFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basisfun-apply--98ff490d8cb3407d9f87f045.md) | 140 | `result-track:98ff490d8cb3407d9f87f045e3a1ade5bffcd56a50b6d895d55d36312bb0fd53` |
| 11 | `theorem` | [basisFun_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basisfun-repr--cecb681fa4453ef00c80bf40.md) | 145 | `result-track:cecb681fa4453ef00c80bf40bf7b23b84fa4ecaf61fda2306e6807b624b895eb` |
| 12 | `theorem` | [basisFun_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/basisfun-equivfun--3225c30f4aec499cb8367315.md) | 148 | `result-track:3225c30f4aec499cb83673159652bf54eb37478e8ff9a7f7dc8299937b32fa98` |
| 13 | `lemma` | [AlgHom.eq_piEvalAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/alghom-eq-pievalalghom--c5f579b32c407b840b4f4707.md) | 159 | `result-track:c5f579b32c407b840b4f470746b8d2b2bc45c9b0e702879c0390f01422d0b653` |
| 14 | `def` | [piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/piequiv--1ab9dd9204051d46fcdf2649.md) | 188 | `declaration-track:1ab9dd9204051d46fcdf2649b488d9327cefe15b3466ef33c3993af586d5dc27` |
| 15 | `lemma` | [piEquiv_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/piequiv-apply-apply--7a99f94824bba6b2f9e5a791.md) | 190 | `result-track:7a99f94824bba6b2f9e5a79117fa7244a2add900a8e19655eb6e6d8ea6046593` |
| 16 | `lemma` | [range_piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/range-piequiv--03f94fed0230930bf9a66ead.md) | 196 | `result-track:03f94fed0230930bf9a66ead0993bdfae04823d0834a9c9041a90169ff9805cb` |
| 17 | `lemma` | [surjective_piEquiv_apply_iff](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/surjective-piequiv-apply-iff--e616bf47cc50f8028c463ebe.md) | 200 | `result-track:e616bf47cc50f8028c463ebe4ebbc99dd69b702aafdba829b3f71315b4ae1182` |
| 18 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.Module.Free.pi](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant458544d--d90487dce8b028ac0b422eae.md) | 211 | `declaration-track:d90487dce8b028ac0b422eaeeea5f6d400db343ed985d4b5ad9640c243c72a26` |
| 19 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant458544de100f697cee6f208b0dbfa61fe962bf7184098077d417ab9c1d59ca0a.Module.Free.function](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/declarations/root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant458544d--4db4e68e7fc22b5d742d7224.md) | 219 | `declaration-track:4db4e68e7fc22b5d742d722406db676a37f81976d069e55032cfe4fd24fc0b53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
