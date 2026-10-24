# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Determinant.Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "471b8e7a45c35c54ec318b25db2313d5c2eaf746",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `471b8e7a45c35c54ec318b25db2313d5c2eaf746`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `spectral_rh.Spectral.Zeta.Regularization` — import line 15; external provider; requires a separately pinned dependency.
- `spectral_rh.Ext.FredholmDetShift` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fredholm` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lshift](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/declarations/lshift--6512be07131c5750dbf363fe.md) | 38 | `declaration-track:6512be07131c5750dbf363fe2b82ed4b3ce2f76df7430712d0b999a3dff00e93` |
| 2 | `def` | [detShift](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/declarations/detshift--f03aae8380868a22e9d5f238.md) | 50 | `declaration-track:f03aae8380868a22e9d5f2387ede3b41f8be0ca88ea895996f652734be040681` |
| 3 | `lemma` | [detShift_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/declarations/detshift-zero-iff--f243f3fdb683e76f21567339.md) | 62 | `result-track:f243f3fdb683e76f2156733900d782ba9245de2eb09838f83136d92db146308d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
