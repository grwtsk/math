# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ad3242d64089e542a2d46a83ee2004e632dae3c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ad3242d64089e542a2d46a83ee2004e632dae3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/fractionalweight--9c51bb27ee9cafcc110a6387.md) | 25 | `declaration-track:9c51bb27ee9cafcc110a6387bcc2843aa0b1ad4c49df595e6c2873ae5cad3f90` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/fractionalweight-integrable--e0632753c0b5358f076fc241.md) | 27 | `result-track:e0632753c0b5358f076fc241e45c6d1ac6099397e2c42513d71581813e124b37` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/fractionalweight-nonneg--b48584c14481fa98cfff8048.md) | 36 | `result-track:b48584c14481fa98cfff804898209f3e0d83157eefecbf8f307472e9a58fd7f9` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/real-centered-euler-integral--824c86bd9ea676bb0315e7c7.md) | 40 | `result-track:824c86bd9ea676bb0315e7c74f920b8fc44dc89b94279da083aa565e04542ba1` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/riemannzeta-real-euler--a734c237fca0180294698f20.md) | 55 | `result-track:a734c237fca0180294698f200bbc55364a4188ab391645db6a0311d9e8947b4d` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/riemannzeta-ofreal-neg--48887f889c17ce67514c852c.md) | 85 | `result-track:48887f889c17ce67514c852cd44090379246e69411eedcee86dfcb1be5adb787` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant83e82fbfa9a6de3f730449ebe0ec68025fd7bef3d03356f2d4719e56d520e49b.lean/declarations/nontrivial-zero-im-ne-zero--947bdd0391c57b33fb131a97.md) | 95 | `result-track:947bdd0391c57b33fb131a9737d676e3e4df7af79fe08c82d43a1951fbe1207f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
