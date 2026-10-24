# Verification target: GRWTSK.NumberTheory.LSeries.GaussianContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0b6dcfd5630a2687f0b8e34373e3afc39e124e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/GaussianContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0b6dcfd5630a2687f0b8e34373e3afc39e124e`.

Source path: `GRWTSK/NumberTheory/LSeries/GaussianContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/GaussianContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) — import line 23; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianZetaSummand](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand--5fbcc1075093ec174dca23ed.md) | 33 | `declaration-track:5fbcc1075093ec174dca23ed04d08386c458fc5102c6d14c4708b36f123d8001` |
| 2 | `def` | [gaussianZetaContour](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetacontour--d710a69489e7caf102bce302.md) | 37 | `declaration-track:d710a69489e7caf102bce302ab8363ba977e6184b4367c49799418523686f25e` |
| 3 | `lemma` | [gaussianDirichletWeight_summable_iff](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussiandirichletweight-summable-iff--d28cad6eb653ba2e2eab08de.md) | 42 | `result-track:d28cad6eb653ba2e2eab08de9bb66a2b8c34202225f7a30e6281c67cdbbddfff` |
| 4 | `lemma` | [gaussianZetaSummand_norm](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand-norm--dc74f748e112d159b9e33948.md) | 51 | `result-track:dc74f748e112d159b9e33948468f527ffcb9e7e470d88ebd388bd6237f3a2d8c` |
| 5 | `lemma` | [gaussianZetaSummand_integrable](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand-integrable--3fb595876177c0e1318abf74.md) | 63 | `result-track:3fb595876177c0e1318abf74e11e88dbc09e3a828054019d19853c4da33ba35d` |
| 6 | `lemma` | [gaussianZetaSummand_integral_norm](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand-integral-norm--a925b3fda3b44c33bbc0349d.md) | 77 | `result-track:a925b3fda3b44c33bbc0349dab6ce8e790479ea3a9f60658dbd26b3fbe672914` |
| 7 | `lemma` | [gaussianZetaSummand_integral_norm_summable](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand-integral-norm-summable--410d5f63a969def64eb671ce.md) | 83 | `result-track:410d5f63a969def64eb671ce20120130dc3e4a47c2323bb41ecea53a552d3f43` |
| 8 | `lemma` | [gaussianZetaSummand_ratio](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand-ratio--f1551b35a2ff4437c86a327c.md) | 88 | `result-track:f1551b35a2ff4437c86a327c4188952a5c4aa6694797cf651288438d43b21976` |
| 9 | `lemma` | [gaussianZetaSummand_integral](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetasummand-integral--93a3bee2486cfc4334b70c12.md) | 98 | `result-track:93a3bee2486cfc4334b70c120a6d35951563357b458fc227b76f3fc8e720e753` |
| 10 | `theorem` | [gaussianMellinProfile_sum_summable](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianmellinprofile-sum-summable--56726d7861ece1035e5168fd.md) | 105 | `result-track:56726d7861ece1035e5168fdb53fa5d0550218c75287fa388fdfa3c6a2ada766` |
| 11 | `theorem` | [gaussianZetaContour_eq_tsum](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/declarations/gaussianzetacontour-eq-tsum--8a523749d80637f676e412c3.md) | 115 | `result-track:8a523749d80637f676e412c34714302dfd1f344809a6fa85042fddbe4dda1b5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
