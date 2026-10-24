# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.LevelOne.Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d115b9cb67d3f76b43cebda9ef9def7fafa2b05c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d115b9cb67d3f76b43cebda9ef9def7fafa2b05c`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Modular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.QExpansion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_one_half_le_im_and_norm_le](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/exists-one-half-le-im-and-norm-le--d16e03de0a903eb512d36d79.md) | 29 | `result-track:d16e03de0a903eb512d36d79132536db9f6636813506ec86859003a420c95b19` |
| 2 | `lemma` | [wt_eq_zero_of_eq_const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/wt-eq-zero-of-eq-const--40290d97cc59e3b2f0942184.md) | 38 | `result-track:40290d97cc59e3b2f094218474d74191b27020beb884b465bbee851c79655cca` |
| 3 | `theorem` | [cuspFunction_eqOn_const_of_nonpos_wt](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/cuspfunction-eqon-const-of-nonpos-wt--cb6af36515c6cea8a9fc142a.md) | 55 | `result-track:cb6af36515c6cea8a9fc142a3b9a1213312033ccf919d86bff9eee01a3dd22f2` |
| 4 | `theorem` | [levelOne_nonpos_wt_const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/levelone-nonpos-wt-const--3f20279a5d435c55c49c04c7.md) | 69 | `result-track:3f20279a5d435c55c49c04c714b4a73edd8465427f082ec06fa3e65a38100d57` |
| 5 | `lemma` | [levelOne_neg_weight_eq_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/levelone-neg-weight-eq-zero--c290b263af1c157f5263db52.md) | 78 | `result-track:c290b263af1c157f5263db52a1a74f88b12117750577810f48cb06393bb1a546` |
| 6 | `lemma` | [levelOne_weight_zero_const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/levelone-weight-zero-const--9f4a2670767acf5dad305b95.md) | 84 | `result-track:9f4a2670767acf5dad305b9528d7bcf516bf25b5c262691bbe04f2b478de7a18` |
| 7 | `lemma` | [ModularForm.levelOne_weight_zero_rank_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/modularform-levelone-weight-zero-rank-one--6c7f55eba6dd08989ab4cfad.md) | 90 | `result-track:6c7f55eba6dd08989ab4cfad6078ce7b252403d2e219d577cb733a4ab06c30c8` |
| 8 | `lemma` | [ModularForm.levelOne_neg_weight_rank_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant73b842e10ea80ee5e8d757b275f3ea973b84af064b21cdf07e31f212df68a9cb.lean/declarations/modularform-levelone-neg-weight-rank-zero--417343c91ff74a55da4a75bf.md) | 95 | `result-track:417343c91ff74a55da4a75bf517db7e2468fc0bcffcd96d83c7706afaa764896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
