# Verification target: GRWTSK.LinearAlgebra.QuadraticCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80bdb1f803d73e44b66ad7c05672a0a18a31b7bf",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/QuadraticCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80bdb1f803d73e44b66ad7c05672a0a18a31b7bf`.

Source path: `GRWTSK/LinearAlgebra/QuadraticCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/QuadraticCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/quadratic--807b402f50568d4db31fc320.md) | 28 | `declaration-track:807b402f50568d4db31fc32009cf91b58cbda51a4f7c04dd734139cc62a401fb` |
| 2 | `structure` | [Problem](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/problem--ad5fe24ae043d2bc62f70dcf.md) | 31 | `declaration-track:ad5fe24ae043d2bc62f70dcf38ca739ab9ed5f6e0ce1f2606ee3b0f82ed0bb71` |
| 3 | `def` | [Problem.Admissible](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/problem-admissible--01426272cc7875bf216991be.md) | 40 | `declaration-track:01426272cc7875bf216991be81605dfb59405134fe718922c7052baa0d139656` |
| 4 | `structure` | [Certificate](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/certificate--c9d4705d20367edb3973efad.md) | 45 | `declaration-track:c9d4705d20367edb3973efad87261cbf5f720694c9e7c190db5a8d9c77158b99` |
| 5 | `def` | [Valid](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/valid--17dab0f3c2992d457e901b15.md) | 54 | `declaration-track:17dab0f3c2992d457e901b151240d52b5195d4eccd986ce6e3aa9897101fc219` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/instance--2fde7b71bf255743f661b36c.md) | 60 | `declaration-track:2fde7b71bf255743f661b36cc15959855cb7d4053cc1403e7f1518cacd2ce695` |
| 7 | `def` | [check](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/check--7b5d33a03bce493b6f3e2849.md) | 65 | `declaration-track:7b5d33a03bce493b6f3e2849434f798dba0cd82149b743a24c6e8a24124b21a1` |
| 8 | `theorem` | [quadratic_add](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/quadratic-add--c3e130353a3759fbf9d59747.md) | 69 | `result-track:c3e130353a3759fbf9d597479932de6f345aaf8879213f66a00d5ca6c0fb9732` |
| 9 | `theorem` | [quadratic_smul](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/quadratic-smul--2d9e96b0ed6f2db53f190499.md) | 74 | `result-track:2d9e96b0ed6f2db53f190499a4bce3592c84f38bc4f51449a986f10d5c7eff1f` |
| 10 | `theorem` | [quadratic_sum](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/quadratic-sum--88896df981a266c4cae609df.md) | 79 | `result-track:88896df981a266c4cae609dfc5f0584e220c386fdb5288881aa33ed3abe4823f` |
| 11 | `theorem` | [gram_nonnegative](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/gram-nonnegative--fcbc50ac76bc29051ca2fa59.md) | 85 | `result-track:fcbc50ac76bc29051ca2fa599ceb0896ecca6bf0bb84f8af2eaaeb2bbb2e69b2` |
| 12 | `theorem` | [sound](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/sound--d4f2f310648c27a4f72eb727.md) | 92 | `result-track:d4f2f310648c27a4f72eb727b85873d629aa4041ec3418c32f02633400238e72` |
| 13 | `theorem` | [check_sound](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/check-sound--280f6421f7033b947e9a841e.md) | 106 | `result-track:280f6421f7033b947e9a841ed3a44d31a415d47147c0d8c77511af3c559e2319` |
| 14 | `def` | [congruence](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/congruence--401939ddd039432853c05d47.md) | 116 | `declaration-track:401939ddd039432853c05d47c420196522bdeeadd9af6f98d2f38283eac349bb` |
| 15 | `def` | [Problem.pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/problem-pullback--d466008b92a984aec1a73867.md) | 122 | `declaration-track:d466008b92a984aec1a73867db6a77c4661902772082a6eb6fd5e60ad88eaaf6` |
| 16 | `def` | [Certificate.pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/certificate-pullback--0420a8df8ea6366e5cd35532.md) | 128 | `declaration-track:0420a8df8ea6366e5cd355320c3f4d519e5a8ff01e2549eff6d83103cf6f6b73` |
| 17 | `theorem` | [valid_pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/valid-pullback--8027166b38f752779b072701.md) | 137 | `result-track:8027166b38f752779b072701fe1be20c28f4dcd257207cfae8c9a8a20d181761` |
| 18 | `theorem` | [check_pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/declarations/check-pullback--14b9b72f83915effda5c55fc.md) | 148 | `result-track:14b9b72f83915effda5c55fcf55f7ce8f0b2bb00025d286d5b426e2381d5eb38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
