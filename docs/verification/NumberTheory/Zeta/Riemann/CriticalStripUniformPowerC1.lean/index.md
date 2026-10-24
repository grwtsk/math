# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPowerC1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "743b56e22265c5c7544c87056b23c62343cc0d26",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `743b56e22265c5c7544c87056b23c62343cc0d26`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPowerEvaluation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expTaylor_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/exptaylor-hasderivat--81c65906d881601f11ca7033.md) | 24 | `result-track:81c65906d881601f11ca7033e620dd2ea46e2e181d1be548a7d4f8fe793eeb17` |
| 2 | `def` | [power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/power--4a8f86d1f1237593e29e0a0b.md) | 39 | `declaration-track:4a8f86d1f1237593e29e0a0b9ca144771d7e32a948b0eef43d72fe7389ca708a` |
| 3 | `def` | [poly](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/poly--5ed4ec715b5e52268a4bff8a.md) | 40 | `declaration-track:5ed4ec715b5e52268a4bff8a3f60a1cbc159546c2b72ae657242db26753b38f9` |
| 4 | `def` | [slope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/slope--7f558c742f39a858663f5575.md) | 42 | `declaration-track:7f558c742f39a858663f5575614b22d8c52459e62e0dff16b1166d10b36f95ef` |
| 5 | `lemma` | [power_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/power-hasderivat--5c038ef0a197826ce65c1804.md) | 45 | `result-track:5c038ef0a197826ce65c180441745c97a78478277aa04b73b78ae4ac8d081e49` |
| 6 | `lemma` | [poly_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/poly-hasderivat--2fd72133408defeca7e2fbb0.md) | 56 | `result-track:2fd72133408defeca7e2fbb0aaa9fcd5a389496ed86eba9fa29d52f2ee167448` |
| 7 | `def` | [argumentBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/argumentbound--809d01d148b4f2dc5f51f45f.md) | 63 | `declaration-track:809d01d148b4f2dc5f51f45fdf3ace88593314f31ad3bd3983f1eadbee55cea3` |
| 8 | `def` | [termRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/termradius--36c152c43d66a692a892c7f4.md) | 64 | `declaration-track:36c152c43d66a692a892c7f4182e0e5d2e6bfa28852f300b61b37c88010e3f56` |
| 9 | `def` | [valueRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/valueradius--f008503df9f8ead5bca6311e.md) | 66 | `declaration-track:f008503df9f8ead5bca6311e00b8c507acb09e3e378194cac5d722af3f0eca8b` |
| 10 | `def` | [derivativeRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/derivativeradius--f1d0e047d2c8f2dfdfa00a6c.md) | 67 | `declaration-track:f1d0e047d2c8f2dfdfa00a6c6b5e009ba5e89f8284a194ed836fd517a46d8600` |
| 11 | `def` | [Guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/guard--b06dcda627c10253a504c913.md) | 70 | `declaration-track:b06dcda627c10253a504c9131bc160ea32f7ab0c7337403e0e2d7d85ee48540b` |
| 12 | `lemma` | [logRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/logradius-nonneg--7410825568b098a0f19271f0.md) | 75 | `result-track:7410825568b098a0f19271f049ad1ede2b0c42c1fedf5b14cd61cd78cec80405` |
| 13 | `lemma` | [termRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/termradius-nonneg--c5a7095f1eda009350551565.md) | 80 | `result-track:c5a7095f1eda009350551565df4abbc292f99af9dc33123ab583889e4e26cd74` |
| 14 | `lemma` | [radii_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/radii-nonneg--257851adfdeb7393e2790f61.md) | 87 | `result-track:257851adfdeb7393e2790f610989152625a462b12376626dd613e5d4468321bf` |
| 15 | `lemma` | [shorter_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/shorter-error--110f53b38c91112773ec5e00.md) | 94 | `result-track:110f53b38c91112773ec5e00b3c91a87fd38d5e7d2d4f5fd6ad16c371bd05c67` |
| 16 | `theorem` | [errors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/declarations/errors--ee7af31b4fa451affe4d3794.md) | 118 | `result-track:ee7af31b4fa451affe4d3794d51a7724bd5176c4b75f9bf2ff3859bc0ab07b95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
