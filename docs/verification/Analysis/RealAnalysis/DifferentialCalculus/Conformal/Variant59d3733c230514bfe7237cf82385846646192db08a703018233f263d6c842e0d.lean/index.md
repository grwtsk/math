# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Conformal.Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84cfbbc806bc830dc50311927aae4cc6b0cc3e0d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84cfbbc806bc830dc50311927aae4cc6b0cc3e0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.RestrictScalars` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Isometry` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isConformalMap_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/isconformalmap-conj--e3e0d86ed03e8b0a38b37dab.md) | 56 | `result-track:e3e0d86ed03e8b0a38b37dab84ced8db850af6a739b4d0c9c1d1d38f6f94b1b4` |
| 2 | `theorem` | [isConformalMap_complex_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/isconformalmap-complex-linear--2d3e7a77523941f9ae9fe92b.md) | 63 | `result-track:2d3e7a77523941f9ae9fe92b7b74b1cea8a942b7ca1727b09fb23bf90e113719` |
| 3 | `theorem` | [isConformalMap_complex_linear_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/isconformalmap-complex-linear-conj--3fd1cc2720be4cb559500bb3.md) | 78 | `result-track:3fd1cc2720be4cb559500bb3d283229f41b53d0c0b77b467c3c985e6db332b13` |
| 4 | `theorem` | [IsConformalMap.is_complex_or_conj_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/isconformalmap-is-complex-or-conj-linear--40982d615d838fbf2b323486.md) | 90 | `result-track:40982d615d838fbf2b3234869da7e741371550d6f6a8e7e3fb6ecc0a19bf6b71` |
| 5 | `theorem` | [isConformalMap_iff_is_complex_or_conj_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/isconformalmap-iff-is-complex-or-conj-linear--82196a08f8bbc9c4e4415699.md) | 107 | `result-track:82196a08f8bbc9c4e4415699cb4a7d8092aadd51cae8178915f39f81bcce6ef5` |
| 6 | `theorem` | [DifferentiableAt.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/differentiableat-conformalat--856a200f787734592e94a239.md) | 137 | `result-track:856a200f787734592e94a239b362ed0cee16dfdac68c232eb01f34c30c1452a7` |
| 7 | `theorem` | [conformalAt_iff_differentiableAt_or_differentiableAt_comp_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/declarations/conformalat-iff-differentiableat-or-differentiableat-comp-conj--4b764f3ceae6e9d4add2d170.md) | 145 | `result-track:4b764f3ceae6e9d4add2d1705ff64290f82888f295ff4fbabfe2719236478a1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
