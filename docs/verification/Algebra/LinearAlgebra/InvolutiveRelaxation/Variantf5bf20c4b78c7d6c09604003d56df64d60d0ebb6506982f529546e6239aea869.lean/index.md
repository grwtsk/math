# Verification target: GRWTSK.Algebra.LinearAlgebra.InvolutiveRelaxation.Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd8108b85598229273c7eabd964a6b9ecfd0be11",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd8108b85598229273c7eabd964a6b9ecfd0be11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.PositiveQuantization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveLinearInvolution](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/positivelinearinvolution--baf3b9bebea868f9b74212ae.md) | 21 | `declaration-track:baf3b9bebea868f9b74212aea4f9de49ddb0fd15b8a5d96fd5abf792ce881d20` |
| 2 | `structure` | [RelaxationWeight](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relaxationweight--54a48ef7a22174b17d022550.md) | 31 | `declaration-track:54a48ef7a22174b17d0225502fd9fc0ae7c0cc1bec8f8ec8b127c901864f9e1b` |
| 3 | `theorem` | [one_sub_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/one-sub-nonnegative--441519bd48395482a8e1c26a.md) | 38 | `result-track:441519bd48395482a8e1c26a88ff5e6a19304ea452201205f8a7e9bdd3ddb2a5` |
| 4 | `def` | [relax](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relax--f49a149ac58e107a3bf2f84b.md) | 50 | `declaration-track:f49a149ac58e107a3bf2f84b21c0b84eacb84c0a6998875ff781d96d5473f05b` |
| 5 | `theorem` | [relax_linear](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relax-linear--9f705f3281015c4d32fcb438.md) | 56 | `result-track:9f705f3281015c4d32fcb438309fe6de26a2d636abc2ee15a8d8a5ff5916ed00` |
| 6 | `theorem` | [relax_preserves_positivity](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relax-preserves-positivity--bb3cf219e021c7a4397eb764.md) | 67 | `result-track:bb3cf219e021c7a4397eb7648df9b951bb91cc8ac1e2c6472272e5ccd68745a8` |
| 7 | `theorem` | [relax_zero](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relax-zero--9e01a872dbc4c1e03663e107.md) | 77 | `result-track:9e01a872dbc4c1e03663e107edcab7ba7018a30c363c1ecadac103d66214911d` |
| 8 | `theorem` | [relax_one](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relax-one--7c1be70595beec1f870fb07f.md) | 87 | `result-track:7c1be70595beec1f870fb07f93b2a8b77e0331acc590f0d4191fabae368c6dd7` |
| 9 | `theorem` | [relax_apply_of_fixed](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/relax-apply-of-fixed--f548f3994a5bdc2701e43b5a.md) | 96 | `result-track:f548f3994a5bdc2701e43b5a342e18a8746042157a367b0f0be729601e98d8dc` |
| 10 | `def` | [fixedProjection](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/fixedprojection--23e01cafa3c3a1aa51382c81.md) | 107 | `declaration-track:23e01cafa3c3a1aa51382c81bcc47d0e99b88894421b0f0312c7b8b94a973f99` |
| 11 | `theorem` | [fixedProjection_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/fixedprojection-idempotent--6480c8ce4556150d142d341e.md) | 112 | `result-track:6480c8ce4556150d142d341e64e9b002fa04bf25bb002bec3c8774f13c1ed13a` |
| 12 | `structure` | [FiniteConvolutionOperator](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/finiteconvolutionoperator--90d1a314bdf7c02cc0ddc178.md) | 127 | `declaration-track:90d1a314bdf7c02cc0ddc178a25b47153a2ebcefb52ad229e52a717747531a76` |
| 13 | `structure` | [PositiveInvolutiveConvolution](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/positiveinvolutiveconvolution--b8be2aa980845489f67cfe6d.md) | 141 | `declaration-track:b8be2aa980845489f67cfe6d8938392ec84f124a88bad7173b785d6a8ccbff05` |
| 14 | `def` | [toPositiveLinearInvolution](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/topositivelinearinvolution--ba5de2c59b47fbed0310d95d.md) | 156 | `declaration-track:ba5de2c59b47fbed0310d95deea0945c868285f9c54c6d41d2468053fa962b83` |
| 15 | `structure` | [PositiveRelaxationTrajectory](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/positiverelaxationtrajectory--1f383ec1c23c863e72b4e9e9.md) | 169 | `declaration-track:1f383ec1c23c863e72b4e9e9acdedb0f8573e9ac1f9650232dfa3715adfbf0e9` |
| 16 | `theorem` | [state_positive](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/state-positive--3bd4339c1effc7c1e2f38647.md) | 192 | `result-track:3bd4339c1effc7c1e2f3864780cb76815050eb84c7cb48fb5256cd81ed3a186b` |
| 17 | `def` | [horizonMap](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/horizonmap--251583bc2d69e52f9ecf6ac9.md) | 206 | `declaration-track:251583bc2d69e52f9ecf6ac9b1d8fd370802c116a76a62b3cc1b3433f96f30ae` |
| 18 | `theorem` | [horizonMap_linear](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/declarations/horizonmap-linear--f54cecc2b702ca29579f642b.md) | 213 | `result-track:f54cecc2b702ca29579f642b0d564bd8792cb794f18be5107315e12b514ade3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
