# Verification target: GRWTSK.Algebra.CommutativeAlgebra.NonZeroDivisors.Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9489a44059a3893c77bc2598ff5ef39df1acca45",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9489a44059a3893c77bc2598ff5ef39df1acca45`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.NoZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ringKrullDim_quotient](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-quotient--53c419cd51386784ef7757d6.md) | 33 | `result-track:53c419cd51386784ef7757d67530f9505d8932bed957ae60d77cecde8813ea08` |
| 2 | `lemma` | [ringKrullDim_quotient_succ_le_of_nonZeroDivisor](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-quotient-succ-le-of-nonzerodivisor--d8149db72a18509e1f5f238c.md) | 48 | `result-track:d8149db72a18509e1f5f238cc8816f215f832e54ec2da2ebecb881d17fa8c782` |
| 3 | `lemma` | [ringKrullDim_succ_le_of_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-succ-le-of-surjective--3d7ba27ebe46ad01155f7e30.md) | 72 | `result-track:3d7ba27ebe46ad01155f7e303d5ae2f179329b0595fa834772889f2e539987a0` |
| 4 | `lemma` | [ringKrullDim_succ_le_ringKrullDim_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-succ-le-ringkrulldim-polynomial--58c9f0e3beccd04e40e0a7e2.md) | 80 | `result-track:58c9f0e3beccd04e40e0a7e25934bc10b73267c076afdf7f813cd42e95162327` |
| 5 | `lemma` | [ringKrullDim_mvPolynomial_of_isEmpty](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-mvpolynomial-of-isempty--aa7630e53b957a56e0cd8660.md) | 87 | `result-track:aa7630e53b957a56e0cd8660ecb51c6fe6f3bc16f23bafd542a34b06b00a86e4` |
| 6 | `lemma` | [ringKrullDim_add_natCard_le_ringKrullDim_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-add-natcard-le-ringkrulldim-mvpolynomial--2a35ef48b69de5cc5e0d2d4a.md) | 92 | `result-track:2a35ef48b69de5cc5e0d2d4a8bf3b3b83d9e5a22c8f6d3367caa8209628f645b` |
| 7 | `lemma` | [ringKrullDim_add_enatCard_le_ringKrullDim_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-add-enatcard-le-ringkrulldim-mvpolynomial--fcf3801423e0d360bee00ffe.md) | 107 | `result-track:fcf3801423e0d360bee00ffe49e93900e195ce657648fbc5cf2ec56089afce1b` |
| 8 | `lemma` | [ringKrullDim_succ_le_ringKrullDim_powerseries](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante268370c478bb1995e9978a305a879e87194f155e9c460a4649fd30b440aea5a.lean/declarations/ringkrulldim-succ-le-ringkrulldim-powerseries--ad9268640ee897d65a1ad2a4.md) | 131 | `result-track:ad9268640ee897d65a1ad2a4e111daa808cb110bc6657d1eac0e232f2ef8a877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
