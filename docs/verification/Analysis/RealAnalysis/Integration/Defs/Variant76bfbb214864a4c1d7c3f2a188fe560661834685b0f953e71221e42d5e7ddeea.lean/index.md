# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Defs.Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a10b72acc16a076f83b8b54b5acb2576ea8c25cc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a10b72acc16a076f83b8b54b5acb2576ea8c25cc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.EssSup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm--bbf240fc197a789d10270598.md) | 66 | `declaration-track:bbf240fc197a789d1027059882d8743decf180ba115e8ecc4005b015ad5c33f6` |
| 2 | `lemma` | [eLpNorm'_eq_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-eq-lintegral-enorm--c45dc4656381e0515669d122.md) | 69 | `result-track:c45dc4656381e0515669d12206853d5bfc97e09b25a1871ea723aa2c32d83a5b` |
| 3 | `def` | [eLpNormEssSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnormesssup--76b2ea13655590ad9fcbf08f.md) | 77 | `declaration-track:76b2ea13655590ad9fcbf08f7cfd11cf616c5db52c3dbb55778eb59935455e88` |
| 4 | `lemma` | [eLpNormEssSup_eq_essSup_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnormesssup-eq-esssup-enorm--242b5677e45c8d6b91600aaa.md) | 80 | `result-track:242b5677e45c8d6b91600aaa391ad7bcc9a90d26c9790e0362bac8d4673bdcc5` |
| 5 | `def` | [eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm--671a4f33c9986ba3fdd8cacb.md) | 88 | `declaration-track:671a4f33c9986ba3fdd8cacb80254c6e86266c32a42d1c0a9f28370ae0f26213` |
| 6 | `theorem` | [eLpNorm_eq_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-eq-elpnorm--ea294f0411b71218f4fc4ac6.md) | 94 | `result-track:ea294f0411b71218f4fc4ac6eed54ca1b6fd6d426409a1a0d8c76d5745fe9165` |
| 7 | `lemma` | [eLpNorm_nnreal_eq_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-nnreal-eq-elpnorm--e52035d01307be783a1fcf4e.md) | 97 | `result-track:e52035d01307be783a1fcf4e519d2b1ee2bd374948a6bf35cd90ca0e2475b185` |
| 8 | `theorem` | [eLpNorm_eq_lintegral_rpow_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-eq-lintegral-rpow-enorm--e4890b0c176506862e9e2409.md) | 101 | `result-track:e4890b0c176506862e9e2409d9cf24a0f7a06164efbcd7944df6578770f077a4` |
| 9 | `lemma` | [eLpNorm_nnreal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-nnreal-eq-lintegral--dd330ea3b18f0f45d6af4864.md) | 108 | `result-track:dd330ea3b18f0f45d6af486484b2734d07af8aeb96eafff31db06be29bbc8cf3` |
| 10 | `theorem` | [eLpNorm_one_eq_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-one-eq-lintegral-enorm--64d138baf7d2f1753ef6a4dc.md) | 112 | `result-track:64d138baf7d2f1753ef6a4dccab2ff383cfb3e37481caa3b1ed4ef88a44e2d8b` |
| 11 | `theorem` | [eLpNorm_exponent_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-exponent-top--443b89de6cee0fae15acb633.md) | 120 | `result-track:443b89de6cee0fae15acb63398a1dd4ef02e0e185956bdb7644797b216c4d354` |
| 12 | `def` | [MemLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/memlp--5e992bb7f6af2ba38f160ee6.md) | 124 | `declaration-track:5e992bb7f6af2ba38f160ee6576d76a5c17e501bdaf50078f177bc49853655cb` |
| 13 | `theorem` | [MemLp.aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/memlp-aestronglymeasurable--c7a92b0e00e7fd5f34a3d34d.md) | 130 | `result-track:c7a92b0e00e7fd5f34a3d34d1f14c23d6589fb53308b8331902cb3b90040381f` |
| 14 | `theorem` | [lintegral_rpow_enorm_eq_rpow_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/lintegral-rpow-enorm-eq-rpow-elpnorm--f633a23fde9c2b71866bc734.md) | 137 | `result-track:f633a23fde9c2b71866bc734ccad7eb54f08517018c05c67bd16bcf2c37fbc9c` |
| 15 | `lemma` | [eLpNorm_nnreal_pow_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/declarations/elpnorm-nnreal-pow-eq-lintegral--173c1e6d19e4cb0560e8c03f.md) | 145 | `result-track:173c1e6d19e4cb0560e8c03f0650ed42334e1dd3802f5e948c4c931e4ca197ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
