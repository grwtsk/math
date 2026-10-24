# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.NormalizedGaussian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e596e7196e9cafa8cadaa5f6c4131c1e2fa7de3e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/NormalizedGaussian.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e596e7196e9cafa8cadaa5f6c4131c1e2fa7de3e`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/NormalizedGaussian.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/NormalizedGaussian.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/example--01c541536168676d07e1023d.md) | 10 | `declaration-track:01c541536168676d07e1023d69bb9781ea82e7aad2e876a1871fcf5aaa7861f4` |
| 2 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/example--8f6a0812cd4297f766f217aa.md) | 13 | `declaration-track:8f6a0812cd4297f766f217aa07c2c5bf184f6a441ccfe5e382a3f2215c4c09c5` |
| 3 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/example--49912f01f614bbd6057c5b6b.md) | 16 | `declaration-track:49912f01f614bbd6057c5b6bb783b6466a367a2bfa9ab6797098c91535954dca` |
| 4 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/example--5eca640409013bb199ff30cb.md) | 20 | `declaration-track:5eca640409013bb199ff30cbd71494c42fcc258e7629a8e2e11ca9e998da172b` |
| 5 | `def` | [unnormalizedProfile](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/unnormalizedprofile--ae1eabc971b649e28c6ce03d.md) | 27 | `declaration-track:ae1eabc971b649e28c6ce03db02a2fdc5826f01dc70e29daebaaefacfcca0452` |
| 6 | `lemma` | [unnormalizedProfile_eq_quarter](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/unnormalizedprofile-eq-quarter--4925fee65c82d7c25ea22aa3.md) | 30 | `result-track:4925fee65c82d7c25ea22aa37902987e6637be6b0b26cc2811499eea30aebbf2` |
| 7 | `lemma` | [unnormalizedProfile_convergent](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/unnormalizedprofile-convergent--5f2381a04482297ea68c6d53.md) | 37 | `result-track:5f2381a04482297ea68c6d534f1e1ab7fece17fa1eaab134b9907d6a4f52f716` |
| 8 | `lemma` | [unnormalizedProfile_mellin_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/unnormalizedprofile-mellin-zero--b31d3a5fb6f8d1a953b389c2.md) | 44 | `result-track:b31d3a5fb6f8d1a953b389c2b0684ef2ca554a0716eaea703c6cf36fe1b78944` |
| 9 | `lemma` | [unnormalizedProfile_not_unit_transform](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/declarations/unnormalizedprofile-not-unit-transform--f69cf7e7bef9037b420b26d8.md) | 54 | `result-track:f69cf7e7bef9037b420b26d8a20e3a12932f8c03496f25d0fd271f94e498f31e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
