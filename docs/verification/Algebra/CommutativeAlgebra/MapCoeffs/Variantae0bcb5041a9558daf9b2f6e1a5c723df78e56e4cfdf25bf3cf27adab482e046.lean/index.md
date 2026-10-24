# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MapCoeffs.Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03b65839464a3c0cd2e9aa1b0df3d39e5706fafd",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03b65839464a3c0cd2e9aa1b0df3d39e5706fafd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.DifferentialRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs--0af90f2fb4c408f0f4bff76d.md) | 33 | `declaration-track:0af90f2fb4c408f0f4bff76dd9f94f78f9f9afc7ebd0139bd95df4dcbcc598fb` |
| 2 | `lemma` | [mapCoeffs_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-apply--54d15099586919805a46d516.md) | 61 | `result-track:54d15099586919805a46d516bdd4911b5e569d4a6dbe2fe86dc6272643592a96` |
| 3 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-monomial--581ddd85efc2a469cbe5db51.md) | 65 | `result-track:581ddd85efc2a469cbe5db51b281e547e5a304814850bcf571cbc47bc1136faa` |
| 4 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-x--55e6a6188ff8bef6f76a048b.md) | 70 | `result-track:55e6a6188ff8bef6f76a048b3fc68e798ceb71766daeaf16ffd7e104aa157d71` |
| 5 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-c--7b6d7af8e6a024d158e7d009.md) | 74 | `result-track:7b6d7af8e6a024d158e7d0093def4822c8620ad4fde6b7e7cd515c5531d78396` |
| 6 | `theorem` | [apply_aeval_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/apply-aeval-eq--2a3e6d502d9eb6db9d6a851a.md) | 80 | `result-track:2a3e6d502d9eb6db9d6a851aee96d015b43731194c9d470b1c61d0159e789372` |
| 7 | `theorem` | [apply_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/apply-aeval-eq--c69aecbacf6f4c83acac6576.md) | 93 | `result-track:c69aecbacf6f4c83acac6576ac864e4f90837521a72671bf6924e3570879643e` |
| 8 | `theorem` | [apply_eval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/apply-eval-eq--1d3fb3354ac896171f44dd9b.md) | 104 | `result-track:1d3fb3354ac896171f44dd9b43de9d26e703d886f18b10009a3fb3d81a2cc15a` |
| 9 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs--993bb7615c26014f6f3f1883.md) | 117 | `declaration-track:993bb7615c26014f6f3f18834639389bac2d586d53841118deb686dda15c7ffa` |
| 10 | `lemma` | [coeff_mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/coeff-mapcoeffs--c691fcb6f6f0cf74ed5a145c.md) | 121 | `result-track:c691fcb6f6f0cf74ed5a145c13a9115301cfb0bf7790ff80e1a2de45b78ae1d1` |
| 11 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-monomial--d2c0cb01cf4aa1c97c0ed92a.md) | 125 | `result-track:d2c0cb01cf4aa1c97c0ed92a484a05b9bfb9c961fb9833e6b2f56caedf2ae388` |
| 12 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-x--029a9b295c53a2332d73ec7f.md) | 130 | `result-track:029a9b295c53a2332d73ec7f2753a210b61ec6c2e77ec980ee64e211cf538452` |
| 13 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/mapcoeffs-c--ea89006d0c89a233ffde3631.md) | 134 | `result-track:ea89006d0c89a233ffde363126eb215b407d8b2e00e1ea7d0c8eca39df4b13dd` |
| 14 | `theorem` | [deriv_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/deriv-aeval-eq--3cf64161a206be80c0112f0f.md) | 139 | `result-track:3cf64161a206be80c0112f0f345d028fde49968d82ed34fce4dc4a632bd7fc52` |
| 15 | `def` | [implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/implicitderiv--62441808e9712ba48b6b74bc.md) | 149 | `declaration-track:62441808e9712ba48b6b74bc1f6359e0cf2fdf59e11563502b00cae5fa8b0a15` |
| 16 | `lemma` | [implicitDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/implicitderiv-c--9cc7db007b7f4d3d9a88e1ef.md) | 154 | `result-track:9cc7db007b7f4d3d9a88e1efcc7438fcf5e10e559d23e5883745d9b0e2f37c92` |
| 17 | `lemma` | [implicitDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/implicitderiv-x--ca809d8e410f117fe2e91350.md) | 159 | `result-track:ca809d8e410f117fe2e91350772a9a64a71149b0ffe00b4edbd402ff1db25d4e` |
| 18 | `lemma` | [deriv_aeval_eq_implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/deriv-aeval-eq-implicitderiv--8dbfd1b054c3163ff62232c3.md) | 163 | `result-track:8dbfd1b054c3163ff62232c38af9b2af55254a7c6fa73b68970141d3c1c1d509` |
| 19 | `lemma` | [algHom_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/alghom-deriv--c3c7df18d7a5abaca63b2a3a.md) | 170 | `result-track:c3c7df18d7a5abaca63b2a3aa19e81c5e27d0d47020b889c15d6cd470275ce6b` |
| 20 | `lemma` | [algEquiv_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/algequiv-deriv--55d5db0e15539e0d90da94bc.md) | 185 | `result-track:55d5db0e15539e0d90da94bc195a63017a5535ee194df28933aefcf747831f13` |
| 21 | `lemma` | [algHom_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/alghom-deriv--0fa1f48f58643b928781fcf3.md) | 195 | `result-track:0fa1f48f58643b928781fcf35b439c0fb021fbe58c68bdf244c03bbdb9904df4` |
| 22 | `lemma` | [algEquiv_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variantae0bcb5041a9558daf9b2f6e1a5c723df78e56e4cfdf25bf3cf27adab482e046.lean/declarations/algequiv-deriv--3c24fba719621a6af9cbc649.md) | 202 | `result-track:3c24fba719621a6af9cbc649a88abee3e58f869c61357b8f50a13fdf35e35046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
