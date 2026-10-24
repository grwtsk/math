# Verification target: GRWTSK.Algebra.ToSquareZero.Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af3f8877bfc2490f25adf1af1e69357dd97637c8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/index.md) · [Full source](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af3f8877bfc2490f25adf1af1e69357dd97637c8`.

Source path: `GRWTSK/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diffToIdealOfQuotientCompEq](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/difftoidealofquotientcompeq--78229124a3a09e85313c1b85.md) | 35 | `declaration-track:78229124a3a09e85313c1b855eb2050a9e5c45967fe16a93cce81868bb75558e` |
| 2 | `theorem` | [diffToIdealOfQuotientCompEq_apply](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/difftoidealofquotientcompeq-apply--93ce0cbde8775b43807f28e0.md) | 44 | `result-track:93ce0cbde8775b43807f28e00245bc3abdf08cc9e827104dec1b50bae2d0db2d` |
| 3 | `def` | [derivationToSquareZeroOfLift](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/derivationtosquarezerooflift--00cb9032d7bd9cb2a0285b7e.md) | 53 | `declaration-track:00cb9032d7bd9cb2a0285b7e3912ec4e88c900aa36b8d881fad7d35659ecaf61` |
| 4 | `theorem` | [derivationToSquareZeroOfLift_apply](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/derivationtosquarezerooflift-apply--9b57752b1e2cd3095f40171a.md) | 79 | `result-track:9b57752b1e2cd3095f40171a20072916598cbeb3ca910ccae65d72492a3dcf47` |
| 5 | `def` | [liftOfDerivationToSquareZero](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/liftofderivationtosquarezero--d93f733f63d48f41d0365773.md) | 87 | `declaration-track:d93f733f63d48f41d0365773b0773e845139a48c4fd0a0d12f15b6709a3dbffe` |
| 6 | `theorem` | [liftOfDerivationToSquareZero_mk_apply](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/liftofderivationtosquarezero-mk-apply--7b0bae09dc57f62cb3247d09.md) | 109 | `result-track:7b0bae09dc57f62cb3247d0937fa0f68a6956ee8d3e6ae9681926488bc8dd2b5` |
| 7 | `theorem` | [liftOfDerivationToSquareZero_mk_apply'](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/liftofderivationtosquarezero-mk-apply--9c5c6fa9abdc79992bc747c7.md) | 116 | `result-track:9c5c6fa9abdc79992bc747c72b40d11c442043025447e405ebd63ae28b290c61` |
| 8 | `def` | [derivationToSquareZeroEquivLift](../../../../mathematics/Algebra/ToSquareZero/Variantfa9ce01c71b7b97b93c63f07fa453655a339b9fc087e8ebf506423365a74b481.lean/declarations/derivationtosquarezeroequivlift--857b9427e0a064ee34144c80.md) | 124 | `declaration-track:857b9427e0a064ee34144c806194d8e7577da03fdf9dd80aa2fc57c04ea95acc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
