# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c77c4e684f065879f2bb66206f950e3706d448d9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SublinearDyadic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c77c4e684f065879f2bb66206f950e3706d448d9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SublinearDyadic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SublinearDyadic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UpperSublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/uppersublinear--4207b66161b3fca6741b82ca.md) | 25 | `declaration-track:4207b66161b3fca6741b82cadedfd693dab6bb18abe1fa83f9676e029a65969a` |
| 2 | `theorem` | [upperSublinear_iff_isLittleO](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/uppersublinear-iff-islittleo--570b5969f8bb9af1a1089085.md) | 29 | `result-track:570b5969f8bb9af1a1089085e38c04389a6eb2de7162bc89d331ae07e4c94890` |
| 3 | `theorem` | [UpperSublinear.mono](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/uppersublinear-mono--b5e94b0c4c164a90241dc062.md) | 47 | `result-track:b5e94b0c4c164a90241dc0623bb58802fa8110486b2edcd4b8f61d5416b606fe` |
| 4 | `theorem` | [UpperSublinear.add](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/uppersublinear-add--d8b10e68e6baada5715b6254.md) | 53 | `result-track:d8b10e68e6baada5715b6254d6cb8ea92e4730c46ccc09b1ff110c8659172a10` |
| 5 | `theorem` | [upperSublinear_of_affine_bounds](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/uppersublinear-of-affine-bounds--c510bbdf3fbdacdce76cbd88.md) | 66 | `result-track:c510bbdf3fbdacdce76cbd887e0e89f4640ce3af7027f5716365026aac1226c3` |
| 6 | `lemma` | [nat_le_two_pow](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/nat-le-two-pow--7525338854e9bca547a45b25.md) | 82 | `result-track:7525338854e9bca547a45b253d08f484dcc92f6940da2ec628df1a702d1995d9` |
| 7 | `theorem` | [dyadic_cover](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/dyadic-cover--b3f0c69ba0e841def43483f6.md) | 91 | `result-track:b3f0c69ba0e841def43483f647a1b44ab1956d74ae75619a4a29968d95ca5b03` |
| 8 | `theorem` | [dyadic_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/dyadic-iteration--73d8231c8d4b76daecfdb83f.md) | 105 | `result-track:73d8231c8d4b76daecfdb83f3c2c3204d338db50f309c410066cb4372f390863` |
| 9 | `lemma` | [prefix_le](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/prefix-le--d99f3fa4fafcadb9eea54be1.md) | 117 | `result-track:d99f3fa4fafcadb9eea54be13c96d508bffab5aaa45cb84227357519e59469f3` |
| 10 | `theorem` | [dyadic_tail_budget](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/dyadic-tail-budget--5214ddb1aacc22f7a87347ea.md) | 124 | `result-track:5214ddb1aacc22f7a87347ea3d6b309ae0163920310f96f30f6d76c86c85e023` |
| 11 | `theorem` | [upperSublinear_of_doubling](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/uppersublinear-of-doubling--3f556a713c6ff85444e8987c.md) | 146 | `result-track:3f556a713c6ff85444e8987ca137ab4f4d471c74752c09ff6a411ed2d3f4e735` |
| 12 | `theorem` | [sublinear_log_of_doubling](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/declarations/sublinear-log-of-doubling--fc1c8b4311ed0cfd39509072.md) | 166 | `result-track:fc1c8b4311ed0cfd39509072220cbd6938203e85d5aa97626b9beaf2b78bd8f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
