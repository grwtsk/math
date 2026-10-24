# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GevreyProfileProbe.Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "987ac37c7b07e54eb6ea797660db92e442e03dba",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `987ac37c7b07e54eb6ea797660db92e442e03dba`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squaredExpNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/squaredexpneginvglue--f35ddc9d2c01b66b9edb5ed2.md) | 17 | `declaration-track:f35ddc9d2c01b66b9edb5ed29412d291b54e1c67d2107be4c506f341069b4207` |
| 2 | `theorem` | [squaredExpNegInvGlue_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/squaredexpneginvglue-zero-of-nonpos--97ba6a36a800ad54cf595dbd.md) | 20 | `result-track:97ba6a36a800ad54cf595dbdd4a62b7c63ab6f41210124d73f3a4eb31623d0dd` |
| 3 | `theorem` | [squaredExpNegInvGlue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/squaredexpneginvglue-zero--bc10af43d31f30b0e3434095.md) | 24 | `result-track:bc10af43d31f30b0e34340957216bb581f484335a936809979088e9aa23eb98d` |
| 4 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/tendsto-polynomial-inv-mul-zero--16bce7f4f717c03ac4e0db96.md) | 27 | `result-track:16bce7f4f717c03ac4e0db96c33fa8cfb8436bf6585c814f6bb65facba6a28a7` |
| 5 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/hasderivat-polynomial-eval-inv-mul--da8e7ad0f9926f31570e7f55.md) | 46 | `result-track:da8e7ad0f9926f31570e7f559062a9ce91861c66ae22413255284509c158fcad` |
| 6 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/differentiable-polynomial-eval-inv-mul--3923e8a0671928f751a6c87c.md) | 65 | `result-track:3923e8a0671928f751a6c87c7c1e3d64d91e2fafaa99e634211cb6b2a5ee4ce7` |
| 7 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/continuous-polynomial-eval-inv-mul--453d03bb8b9ca2250022aef8.md) | 69 | `result-track:453d03bb8b9ca2250022aef8a5711032227ed6c412f0a93b314a1d2d06a2b8fc` |
| 8 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/contdiff-polynomial-eval-inv-mul--3b9d935b479c24173ddaaefe.md) | 73 | `result-track:3b9d935b479c24173ddaaefe1be8f12856ad018fc4f3bda1bb5ab7c956472dae` |
| 9 | `theorem` | [squaredExpNegInvGlue_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/squaredexpneginvglue-contdiff--3fcb774ddbd2bad274a11065.md) | 84 | `result-track:3fcb774ddbd2bad274a1106542bd0dd1f905816a8e0d9b488137c2e3d7450e7e` |
| 10 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile--ec9c00a0eeb48acf0dd6427c.md) | 88 | `declaration-track:ec9c00a0eeb48acf0dd6427c2b30fa9ca58db7143415cd59eb56a593a2dc7dc5` |
| 11 | `theorem` | [profile_eq_glue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-eq-glue--a7134d70f61174121aa2878d.md) | 91 | `result-track:a7134d70f61174121aa2878d8d844e5dc7f164875633479d0af62c179ab35494` |
| 12 | `theorem` | [profile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-contdiff--b310c87118719cec0b04b48a.md) | 103 | `result-track:b310c87118719cec0b04b48a23b50dcd60fb59a3f48dd8b0d9554bd5a541e528` |
| 13 | `theorem` | [profile_pos_of_abs_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-pos-of-abs-lt-one--4844aa2ccbc15697e039cde5.md) | 111 | `result-track:4844aa2ccbc15697e039cde547d271174b59c7fa0e30b4d9271fd0a4b30a2b8d` |
| 14 | `theorem` | [profile_zero_of_one_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-zero-of-one-le-abs--6f6f8c6638bc35a468c37b6e.md) | 114 | `result-track:6f6f8c6638bc35a468c37b6e3e49fbb9f8a3b8bd88570b95382ac701536ce17b` |
| 15 | `theorem` | [profile_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-zero--8cda70f2a4ab568fd9a5ac2b.md) | 117 | `result-track:8cda70f2a4ab568fd9a5ac2b0185a05211cc07d54bc312cbd045e263f0eeddb0` |
| 16 | `theorem` | [profile_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-nonzero--30aba0d7c7227accb8fbacf3.md) | 120 | `result-track:30aba0d7c7227accb8fbacf363252e32546d2d0f5eb5c6dc14fd72e555fdfd68` |
| 17 | `theorem` | [profile_support](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-support--fc007cdac3147763b2ee7fb1.md) | 123 | `result-track:fc007cdac3147763b2ee7fb1d0259883cc299e00d0a51da80dfe380745e950a8` |
| 18 | `theorem` | [profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variantff71489e84c0ceea4b003e1e771deb4b063a8bedb8c892fd8f82880ceeef181a.lean/declarations/profile-hascompactsupport--c3bcb5a9373e24b082f5e87a.md) | 134 | `result-track:c3bcb5a9373e24b082f5e87a0c660a14ae176d9fd2d25f260ea455fbc19180be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
