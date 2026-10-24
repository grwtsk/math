# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GaussianMoments.Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e17a4ba4323af0860aa6ad1fc6164b22ce52d35",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e17a4ba4323af0860aa6ad1fc6164b22ce52d35`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/declarations/integrable-id--cd0bbc8d56e879bfdec4b544.md) | 11 | `result-track:cd0bbc8d56e879bfdec4b544632bfbc49348cc3b7419642b43c17a9eca43e521` |
| 2 | `theorem` | [integrable_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/declarations/integrable-square--cfefd65e305856d91999a738.md) | 16 | `result-track:cfefd65e305856d91999a738956b9fc61f615332b14f2b67f2ec06618e135f0f` |
| 3 | `theorem` | [integral_id_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/declarations/integral-id-zero--7df3fa5f9bf998a47f63b2ed.md) | 20 | `result-track:7df3fa5f9bf998a47f63b2ede2c5b8aaef25e8f43c20499f110588384f2ff516` |
| 4 | `theorem` | [integral_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/declarations/integral-square--a92e2fa7664df84b9b713e62.md) | 24 | `result-track:a92e2fa7664df84b9b713e6250660edad9d382f03ca61e3ea4a0cd8aacd1eef3` |
| 5 | `theorem` | [integrable_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/declarations/integrable-abs--f565cdcad444faa830dfef3d.md) | 30 | `result-track:f565cdcad444faa830dfef3dad40cfbb135b182810bc50753c0d4cf411d828d5` |
| 6 | `theorem` | [integral_abs_le_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/declarations/integral-abs-le-sqrt--427284a643d5cb0b6956c842.md) | 34 | `result-track:427284a643d5cb0b6956c842711250d16abccd357a1e6be36a10cd471b7797c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
