# Verification target: GRWTSK.Algebra.LinearAlgebra.CardQuotient.Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7628fc46b586a165466f26e818e72dbab58e64ee",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7628fc46b586a165466f26e818e72dbab58e64ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.AbsoluteValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Associated` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Quotient` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.natAbs_det_equiv](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/declarations/submodule-natabs-det-equiv--8041c19212d6f250ffd2f9ff.md) | 39 | `result-track:8041c19212d6f250ffd2f9ff441d87d2669e9e28e1dffbbc6542d2772e3dda4c` |
| 2 | `theorem` | [Submodule.natAbs_det_basis_change](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/declarations/submodule-natabs-det-basis-change--53d195024e16d7b4301edd0d.md) | 91 | `result-track:53d195024e16d7b4301edd0d409e3d24106b8d3494172123fbd034ad42d28336` |
| 3 | `theorem` | [AddSubgroup.index_eq_natAbs_det](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/declarations/addsubgroup-index-eq-natabs-det--560ef6c0bdec0fc4778db912.md) | 104 | `result-track:560ef6c0bdec0fc4778db912865be430985dc2666cb6afac7172f4eb38917c7d` |
| 4 | `theorem` | [AddSubgroup.relindex_eq_natAbs_det](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/declarations/addsubgroup-relindex-eq-natabs-det--c2aa115d816f0507390e9c71.md) | 111 | `result-track:c2aa115d816f0507390e9c71f2cd8fd8a6f21f170248f334ce50feac07f1d556` |
| 5 | `theorem` | [AddSubgroup.relindex_eq_abs_det](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/declarations/addsubgroup-relindex-eq-abs-det--3a7316896640388e4d4bdc14.md) | 118 | `result-track:3a7316896640388e4d4bdc14a6fdb28618a258b8e70f83c97589f56b5654ecb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
