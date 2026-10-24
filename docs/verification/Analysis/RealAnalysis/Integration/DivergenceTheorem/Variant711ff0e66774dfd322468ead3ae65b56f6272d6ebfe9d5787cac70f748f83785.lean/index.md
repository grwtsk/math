# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7da80150ebe73f1f7579babc3bc6b20529e526b5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7da80150ebe73f1f7579babc3bc6b20529e526b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_volume_sub_integral_face_upper_sub_lower_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean/declarations/norm-volume-sub-integral-face-upper-sub-lower-smul-le--231bcd60810196a78cfd2348.md) | 62 | `result-track:231bcd60810196a78cfd23482e9c937103c12a794f175eca62e782572a90697e` |
| 2 | `theorem` | [hasIntegral_GP_pderiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean/declarations/hasintegral-gp-pderiv--e427f91f1b90d5baf54edf25.md) | 146 | `result-track:e427f91f1b90d5baf54edf25b5c3f2d7da70a504af551422d6bb2facf773719f` |
| 3 | `theorem` | [hasIntegral_GP_divergence_of_forall_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean/declarations/hasintegral-gp-divergence-of-forall-hasderivwithinat--c73d207ebe6e3f2917ba6913.md) | 258 | `result-track:c73d207ebe6e3f2917ba69138a430b3075eea4bd04c64804e62849abe1ce7d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
