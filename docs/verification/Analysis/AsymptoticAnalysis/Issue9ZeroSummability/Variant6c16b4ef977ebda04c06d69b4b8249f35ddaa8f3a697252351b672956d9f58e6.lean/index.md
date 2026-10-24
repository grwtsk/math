# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Issue9ZeroSummability.Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb9777f9b9c0886256778bccbe93443c65a3754b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb9777f9b9c0886256778bccbe93443c65a3754b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.ZetaZeros` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shellIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/shellindex--c0cc9e94aac48995ccb26087.md) | 13 | `declaration-track:c0cc9e94aac48995ccb26087e6af5e0bd06e800f4852cbf520f0df205897d409` |
| 2 | `def` | [ZeroShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/zeroshell--f4e32b0c9d11e65b13d7599f.md) | 14 | `declaration-track:f4e32b0c9d11e65b13d7599f7968755c7d0bfdfde782230da4e3aac98987ec15` |
| 3 | `def` | [ZeroBallPoints](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/zeroballpoints--6b093a1ecc8e01bb9a7e1ebc.md) | 15 | `declaration-track:6b093a1ecc8e01bb9a7e1ebc1876df6d4478c3163fc4b0067a40dd3ad6ba4a07` |
| 4 | `theorem` | [zeroBallPoints_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/zeroballpoints-finite--782dbf56c774b9e4748c744a.md) | 17 | `result-track:782dbf56c774b9e4748c744a28bdf1b30fa0a2c3e4a5d8bb183e86ff43355282` |
| 5 | `theorem` | [zeroShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/zeroshell-finite--2eb126fef1901dc508b7857a.md) | 31 | `result-track:2eb126fef1901dc508b7857ad9a730debe5902e21fdc2b1e881c36c761aa3980` |
| 6 | `def` | [QuarticShellCountObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/quarticshellcountobligation--6ed31b642824eb053be96568.md) | 48 | `declaration-track:6ed31b642824eb053be96568700218ec94dfc1b65f5a25f1ea13ed83ab32bdb9` |
| 7 | `def` | [weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/weight--23773eaa1f91a69702a1f13e.md) | 51 | `declaration-track:23773eaa1f91a69702a1f13eb1afb946c093ec22a642ad83c10aab9aa475f973` |
| 8 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/weight-nonneg--086e9979d55befe6341f6e3e.md) | 53 | `result-track:086e9979d55befe6341f6e3e9c2eeb8ac57f1eb485a4c1e54a6eefb38db8e5e9` |
| 9 | `theorem` | [shell_weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/shell-weight-le--c57b29edd236a86d798fa6da.md) | 56 | `result-track:c57b29edd236a86d798fa6da1c3be1c7e2fcbb8ff3dd0c6c1c860a22121012ae` |
| 10 | `theorem` | [shell_sum_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/shell-sum-bound--eb51e0ace2a8b59b0bc03ada.md) | 63 | `result-track:eb51e0ace2a8b59b0bc03ada718a816636cb82335d0e963b018c4cee5a7a0e86` |
| 11 | `theorem` | [zero_summability_of_quartic_shell_count](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/declarations/zero-summability-of-quartic-shell-count--3b97a85546d7d46ef4d868aa.md) | 79 | `result-track:3b97a85546d7d46ef4d868aa2d1ae739aa530906ae439813baeb4702468e6f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
