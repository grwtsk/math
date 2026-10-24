# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSummability.Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ca2ab989670dfc0edc812156be067078dab679d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ca2ab989670dfc0edc812156be067078dab679d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean.json)

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
| 1 | `def` | [shellIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/shellindex--0af1e44d0c0ec04b86bf2616.md) | 26 | `declaration-track:0af1e44d0c0ec04b86bf261662581e17ff1955f219a389ec9e7302e49a33ca57` |
| 2 | `def` | [ZeroShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/zeroshell--17459ce6f335c94544b2f047.md) | 28 | `declaration-track:17459ce6f335c94544b2f047b0fdbeed4b0c311554a083b51be2bde0f053bc4b` |
| 3 | `def` | [ZeroBallPoints](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/zeroballpoints--c9dbcab2d8f22e10af6b6186.md) | 30 | `declaration-track:c9dbcab2d8f22e10af6b6186968fb6b73c61ea520f5e291ae4e6532782f9f2e4` |
| 4 | `theorem` | [zeroBallPoints_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/zeroballpoints-finite--3837b7179cddaf3c3c1e60dc.md) | 33 | `result-track:3837b7179cddaf3c3c1e60dc0e1779b2a63885ac0a5bb859c23780041b353ed1` |
| 5 | `theorem` | [zeroShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/zeroshell-finite--a109e073f0bf62e3a53f6939.md) | 48 | `result-track:a109e073f0bf62e3a53f69395bb763a79419717d203a322dc8c23d4ec4172a6a` |
| 6 | `def` | [QuarticShellCountObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/quarticshellcountobligation--ac99862d4c6427f9da8c3994.md) | 63 | `declaration-track:ac99862d4c6427f9da8c3994897ca69ada250d03d1a5ef88eb3ed8ac360130fa` |
| 7 | `def` | [weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/weight--f215d8f9ea898d3c681713da.md) | 67 | `declaration-track:f215d8f9ea898d3c681713dacce3a51be1c381ce6ec3d40537562440aba6c544` |
| 8 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/weight-nonneg--8891c44d37c8e324e26d6dcb.md) | 70 | `result-track:8891c44d37c8e324e26d6dcbfb520f84ccb378f04429416b91ab4c2b88cbc4c3` |
| 9 | `theorem` | [shell_weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/shell-weight-le--6af0f6141acb072e73044225.md) | 74 | `result-track:6af0f6141acb072e73044225f205d72d75979e42f32d2488878a44d600973569` |
| 10 | `theorem` | [shell_sum_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/shell-sum-bound--a3918a11455d8dd152db8ea1.md) | 82 | `result-track:a3918a11455d8dd152db8ea186c5d9d43e3dc5ef9b6b49e1b384d9ccdefe6b62` |
| 11 | `theorem` | [zero_summability_of_quartic_shell_count](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/declarations/zero-summability-of-quartic-shell-count--81cacb74c1d9afd70687008e.md) | 99 | `result-track:81cacb74c1d9afd70687008e9910d4754fad04b3795ff30b89c4996234745ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
