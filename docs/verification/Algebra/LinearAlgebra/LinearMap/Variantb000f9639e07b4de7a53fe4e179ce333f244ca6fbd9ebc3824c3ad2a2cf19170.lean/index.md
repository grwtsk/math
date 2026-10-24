# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff8f8b3d653a4ae3f88d0b752878994eebb55816",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff8f8b3d653a4ae3f88d0b752878994eebb55816`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toMatrix_directSum_collectedBasis_eq_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/tomatrix-directsum-collectedbasis-eq-blockdiagonal--e67c73c46527ced807b325df.md) | 31 | `result-track:e67c73c46527ced807b325df25868bb216b2053ce6271fb3548a456f91116cad` |
| 2 | `lemma` | [diag_toMatrix_directSum_collectedBasis_eq_zero_of_mapsTo_ne](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/diag-tomatrix-directsum-collectedbasis-eq-zero-of-mapsto-ne--cf1db6b5ec904f8350c9a99d.md) | 45 | `result-track:cf1db6b5ec904f8350c9a99d1302be45381edf9a8fbabd81c292c740afcc9f79` |
| 3 | `lemma` | [trace_eq_sum_trace_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/trace-eq-sum-trace-restrict--f334c244ac5504bc9538f74b.md) | 65 | `result-track:f334c244ac5504bc9538f74b800bcc0be0d9d824956f0a330439ed072d778fcf` |
| 4 | `lemma` | [trace_eq_sum_trace_restrict'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/trace-eq-sum-trace-restrict--176de1d973528b68fd085a4a.md) | 73 | `result-track:176de1d973528b68fd085a4a0082dee4ae624976f30f7c93d4b046d2a021b663` |
| 5 | `lemma` | [trace_eq_zero_of_mapsTo_ne](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/trace-eq-zero-of-mapsto-ne--70fd609945809aa5157c70d4.md) | 81 | `result-track:70fd609945809aa5157c70d4d3f3e48b60b420e61ec62a832d1b13ac5d6d4708` |
| 6 | `lemma` | [trace_comp_eq_zero_of_commute_of_trace_restrict_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/trace-comp-eq-zero-of-commute-of-trace-restrict-eq-zero--79fed15f53ec24fe860eb89a.md) | 99 | `result-track:79fed15f53ec24fe860eb89a3cf62aa53e5dfc7261b49ceeb340f47a7f280f87` |
| 7 | `lemma` | [mapsTo_biSup_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/mapsto-bisup-of-mapsto--d2e3dd87cd200fe01e90e941.md) | 124 | `result-track:d2e3dd87cd200fe01e90e941bfa92500f30a4a29e4493adf51d70afba7179d9c` |
| 8 | `lemma` | [trace_eq_sum_trace_restrict_of_eq_biSup](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/declarations/trace-eq-sum-trace-restrict-of-eq-bisup--576f30b13718f97e2b6ecf91.md) | 137 | `result-track:576f30b13718f97e2b6ecf91769fb71e0f2b4e5e1c092bf6244bce95fdfb51fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
