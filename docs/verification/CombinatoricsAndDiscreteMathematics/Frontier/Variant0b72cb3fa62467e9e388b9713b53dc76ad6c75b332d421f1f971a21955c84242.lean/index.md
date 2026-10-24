# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Frontier.Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06a4b293d2fd7a85127c4f61444ae91a2a9e6a81",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06a4b293d2fd7a85127c4f61444ae91a2a9e6a81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Origin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frequencyValues](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/frequencyvalues--98bbe804b8a809e3c3d4e0bc.md) | 22 | `declaration-track:98bbe804b8a809e3c3d4e0bc7b98ea3f5eeb1485fdfc6174e177f532709661f7` |
| 2 | `def` | [frequencyLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/frequencylayer--169b378b2ac7ee573c9aac9c.md) | 31 | `declaration-track:169b378b2ac7ee573c9aac9c265e5ced8f96f9f87fc380051924296257c1ee95` |
| 3 | `def` | [maximumFrequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/maximumfrequency--e132853575645e91ab1836ea.md) | 42 | `declaration-track:e132853575645e91ab1836eab89976e405eba8032f8da9e67ec5dade4c31d63d` |
| 4 | `def` | [firstFrequencyLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/firstfrequencylayer--973032113bd513ee6efb0cd0.md) | 53 | `declaration-track:973032113bd513ee6efb0cd01b1db76a8e24fc0766d20adee7be99a838ff76b4` |
| 5 | `theorem` | [first_layer_has_maximum_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/first-layer-has-maximum-frequency--9148163f5593d8ba987561d1.md) | 64 | `result-track:9148163f5593d8ba987561d1ae5dcd2ed6cb854d15412ba4ade7dac7ba96b73f` |
| 6 | `theorem` | [frequency_bounded_by_maximum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/frequency-bounded-by-maximum--bd0944d661c8e1646150891e.md) | 79 | `result-track:bd0944d661c8e1646150891ed627ccd3887d6d15a97f147e90f0e12d724e82bf` |
| 7 | `theorem` | [finite_grade_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/finite-grade-bound--7cf305614673eb7604a27337.md) | 93 | `result-track:7cf305614673eb7604a273373fee99d3f3ace3ef0bdde100736ee88eecce76e3` |
| 8 | `structure` | [GradedFrontierCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/declarations/gradedfrontiercertificate--1560f6c0aa8612df3e39497e.md) | 107 | `declaration-track:1560f6c0aa8612df3e39497ec9151e653d75da91d190df40256d87bf6b47adaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
