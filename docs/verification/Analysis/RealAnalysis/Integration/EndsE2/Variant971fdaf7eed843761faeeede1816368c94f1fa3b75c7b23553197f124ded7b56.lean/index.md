# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EndsE2.Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d6fd06e00cad8d39301d7f9084d8c358b8400b2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d6fd06e00cad8d39301d7f9084d8c358b8400b2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsNu` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_trG2integrand_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/abs-trg2integrand-le--5bba1c848a63424ec67166e3.md) | 29 | `result-track:5bba1c848a63424ec67166e3d2965281b214c6af8f9c8dfd7d757962dd239d03` |
| 2 | `def` | [majK2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/majk2--3c4b0c9153c474f250dfa0bf.md) | 52 | `declaration-track:3c4b0c9153c474f250dfa0bf0c3f9f8764b4f4ab105477638df294fadfb663be` |
| 3 | `theorem` | [abs_trG2integrand_le_majK2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/abs-trg2integrand-le-majk2--ff8b976ddcb8940117b6e564.md) | 56 | `result-track:ff8b976ddcb8940117b6e5642a97e8a397a74cd17ad2490f5950677946fa17f7` |
| 4 | `theorem` | [majK2_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/majk2-integrable--f07537c8b86ad86e9872d904.md) | 60 | `result-track:f07537c8b86ad86e9872d9044c894e0ff2c60705e6757fca7b5e4f054da0ac83` |
| 5 | `theorem` | [abs_calE2_le_maj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/abs-cale2-le-maj--7e34e6965d7f50b5f43f67f3.md) | 84 | `result-track:7e34e6965d7f50b5f43f67f3b78f0427edf58445ca476016f219e03243058b0b` |
| 6 | `theorem` | [setIntegral_compl_sqI_majK2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/setintegral-compl-sqi-majk2-le--e7fa06cf84a39c13226f2dbe.md) | 101 | `result-track:e7fa06cf84a39c13226f2dbe782e57b3e9113b2a8e92dbe935b605a6716d6f29` |
| 7 | `theorem` | [calE2_maj_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/cale2-maj-bound--c1ed84c567f7be519d77bf8f.md) | 266 | `result-track:c1ed84c567f7be519d77bf8f05debd8a7502dc82b1b1162ae35d6d38e8f2333e` |
| 8 | `theorem` | [calE2_maj_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/cale2-maj-bound-l--b13cc965de35e3524230f70a.md) | 353 | `result-track:b13cc965de35e3524230f70a4f625380a4928040aed4f77b5be8eae58723a59f` |
| 9 | `theorem` | [calE2_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsE2/Variant971fdaf7eed843761faeeede1816368c94f1fa3b75c7b23553197f124ded7b56.lean/declarations/cale2-bound--48f4371555acc942fbe3045b.md) | 437 | `result-track:48f4371555acc942fbe3045bd29b91224434df5941652812cd3df1c5daf8526e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
