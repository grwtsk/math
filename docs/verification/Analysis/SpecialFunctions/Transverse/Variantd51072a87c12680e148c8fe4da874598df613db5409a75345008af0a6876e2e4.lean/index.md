# Verification target: GRWTSK.Analysis.SpecialFunctions.Transverse.Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5794526d405b261d2f0714e78efc66172b324d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5794526d405b261d2f0714e78efc66172b324d`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflect](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/reflect--a91947b4dda32f39f47f3407.md) | 19 | `declaration-track:a91947b4dda32f39f47f3407929052285512c8db35354a7eb440d2e05d4a3dfc` |
| 2 | `def` | [centeredSquare](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/centeredsquare--12f5785cde1b8147fafdaa7f.md) | 22 | `declaration-track:12f5785cde1b8147fafdaa7f8a28500eed46fe138ce6f4f25b75e1931ab1e29a` |
| 3 | `def` | [displacement](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/displacement--35c56d1bd1daf5605a33e89f.md) | 25 | `declaration-track:35c56d1bd1daf5605a33e89fbd7117b1d3551ffa312e53dfc90ac77478452efe` |
| 4 | `theorem` | [reflect_involutive](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/reflect-involutive--d830d9e20bee50717471064d.md) | 28 | `result-track:d830d9e20bee50717471064d541db6b43bf814eed061e6f2aa23f392aa05d641` |
| 5 | `theorem` | [displacement_reflect](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/displacement-reflect--c86aec291858eaf9eb9d4a94.md) | 32 | `result-track:c86aec291858eaf9eb9d4a9401984ca4fdf6c07110155cde1bcbb0225039e12e` |
| 6 | `theorem` | [centeredSquare_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/centeredsquare-one-sub--003527f6dbdb5e73782d23ea.md) | 37 | `result-track:003527f6dbdb5e73782d23ea3b95edcf7325f04a861aa3181aaa79a0132e9c5b` |
| 7 | `theorem` | [centeredSquare_re](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/centeredsquare-re--58a3a76d0cf91287dac013b6.md) | 42 | `result-track:58a3a76d0cf91287dac013b60eaf25acdc59d80aede2daba8439816146fa964c` |
| 8 | `theorem` | [centeredSquare_im](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/centeredsquare-im--49fcd1ed85b99dd0293783b1.md) | 47 | `result-track:49fcd1ed85b99dd0293783b10ea99320c16d71d33e2aa4e5d94f7459101ded30` |
| 9 | `theorem` | [centeredSquare_im_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/centeredsquare-im-zero-iff--1cbb0c65eab0250fa5af68f1.md) | 53 | `result-track:1cbb0c65eab0250fa5af68f11435e62945f92c7b2755c324d2c9983e190c2856` |
| 10 | `theorem` | [centeredSquare_negative_axis_iff](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/centeredsquare-negative-axis-iff--3c1c889dc51475988b6ca5e7.md) | 65 | `result-track:3c1c889dc51475988b6ca5e7ea274f642e070b4ce41e5b7054d0ce7cbafcc2e2` |
| 11 | `theorem` | [two_reflection_laws](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/two-reflection-laws--6ef68de6b6e4420e671016df.md) | 78 | `result-track:6ef68de6b6e4420e671016dfd4be1ed0daed79103a805a6bd537f908667f7e0a` |
| 12 | `def` | [phaseUnit](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/phaseunit--7a95af9ffa3778e7ce34f476.md) | 84 | `declaration-track:7a95af9ffa3778e7ce34f476de512d406b70015e3704c374d4925ea8bc22f4da` |
| 13 | `theorem` | [phaseUnit_positive](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/phaseunit-positive--d94c7cb6c7cf8ec02921f21c.md) | 87 | `result-track:d94c7cb6c7cf8ec02921f21c23a1166de886e990526c82d24c657c80f216ba3b` |
| 14 | `theorem` | [phase_normalization_preserves_pfInfinity](../../../../../mathematics/Analysis/SpecialFunctions/Transverse/Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean/declarations/phase-normalization-preserves-pfinfinity--8aa7a323315bdce4cd46cd7a.md) | 92 | `result-track:8aa7a323315bdce4cd46cd7abd59f888b03af2c9fe3356025a19f5c3bfadcc53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
