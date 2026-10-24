# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeExamples.Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b6d70883f2e306bb04be68c91e9163ec93fdd2a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b6d70883f2e306bb04be68c91e9163ec93fdd2a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.WorldModelPrototype.ExactPermutationMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Integration.WorldModelPrototype.SupportGraphAbstraction` — import line 2; external provider; requires a separately pinned dependency.
- `BitMatrix.Dynamics.DynamicalZeta` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitsOfNat3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/bitsofnat3--bc8820c8d4d4e72b668348ed.md) | 23 | `declaration-track:bc8820c8d4d4e72b668348edb6898c2b1ad06f6815acdb5c8a38ea5091c2763a` |
| 2 | `def` | [stateSwap67](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/stateswap67--f791b6ae1557a94fd46dbc54.md) | 27 | `declaration-track:f791b6ae1557a94fd46dbc548061148867b7b35a1d69dc613c299f454e5ee633` |
| 3 | `def` | [stateSwap56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/stateswap56--e89a68377a56f838509ac24e.md) | 31 | `declaration-track:e89a68377a56f838509ac24e701bda60bd8f263e74ea4b920aa2f6da6aa5f106` |
| 4 | `theorem` | [stateSwaps_same_cycle_data](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/stateswaps-same-cycle-data--9a4ceec0f2c28542e72afa84.md) | 35 | `result-track:9a4ceec0f2c28542e72afa84e6309bc99325a94de4c94d8a82767b4a3ba66130` |
| 5 | `theorem` | [stateSwaps_different_sac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/stateswaps-different-sac--be6425f41a260e1d00a24fb9.md) | 41 | `result-track:be6425f41a260e1d00a24fb92e83cd03b47f06f180ae3c880147c0c8e9d8b6da` |
| 6 | `theorem` | [cycle_data_does_not_determine_sac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/cycle-data-does-not-determine-sac--7926086122c15147114ae9aa.md) | 46 | `result-track:7926086122c15147114ae9aa7c6462dbe39180c795c6a76ca2b401c703f87fa2` |
| 7 | `def` | [identityFin2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/identityfin2--144812e4daa2fac5559d5d7a.md) | 55 | `declaration-track:144812e4daa2fac5559d5d7aa1b57bc0bc0adcae66188ea59d405ee8cb53a0cc` |
| 8 | `def` | [swapFin2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/swapfin2--8637b86f992ed5b796f5bb0d.md) | 59 | `declaration-track:8637b86f992ed5b796f5bb0d749f7361961e95cff8028c07f80e53b7913dfb63` |
| 9 | `theorem` | [zmod2_determinants_equal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/zmod2-determinants-equal--881611937b31123a8ab85ef9.md) | 63 | `result-track:881611937b31123a8ab85ef9e15afe604ce0e2105068aa4df06e3798d88c1e8a` |
| 10 | `theorem` | [integral_signs_different](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/integral-signs-different--884a18bd469752359400650c.md) | 69 | `result-track:884a18bd469752359400650cc4efd7d5de0d8c53dd295adc9d3eb8df8c179c3f` |
| 11 | `theorem` | [zmod2_determinant_does_not_determine_integral_parity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeExamples/Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2.lean/declarations/zmod2-determinant-does-not-determine-integral-parity--9cf0bf036ced6011a97eb12a.md) | 74 | `result-track:9cf0bf036ced6011a97eb12afd54179cc7a9704465b2fd0e90f3061ee6b15a04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
