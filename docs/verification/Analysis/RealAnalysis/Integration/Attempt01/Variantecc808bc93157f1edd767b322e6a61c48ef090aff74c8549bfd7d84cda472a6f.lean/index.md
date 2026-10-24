# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45d13525254b08527dd2f7295a51ff60f7a74954",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45d13525254b08527dd2f7295a51ff60f7a74954`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean.json)

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
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/fractionalweight--b2d1e5f84e5ccac7bd1ba0fd.md) | 25 | `declaration-track:b2d1e5f84e5ccac7bd1ba0fd336780351a8d50bfa5f8a876b77f3440336a323e` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/fractionalweight-integrable--5e5da3b6c31fc6c2b45b3693.md) | 27 | `result-track:5e5da3b6c31fc6c2b45b369350e85b565a90f284b4fd8c0a5d09fdc3067812f1` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/fractionalweight-nonneg--c4a59c873432ca8a2c13b23f.md) | 36 | `result-track:c4a59c873432ca8a2c13b23ff6257e407a045f27ef718c5f4c84a8d1f29d48fb` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/real-centered-euler-integral--8320bc0392bc5ae901dd2733.md) | 39 | `result-track:8320bc0392bc5ae901dd273387d5997656a3c688cf9e763abbc726a147f447f3` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/riemannzeta-real-euler--15f1df50c82dbe175775ab91.md) | 54 | `result-track:15f1df50c82dbe175775ab91369239e62c1ce6e2e763e67011d76d767111ba84` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/riemannzeta-ofreal-neg--ecab6b26a7362b4c0092c778.md) | 82 | `result-track:ecab6b26a7362b4c0092c778ce085d26c214b301b32d0274660221aeef41c9c1` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantecc808bc93157f1edd767b322e6a61c48ef090aff74c8549bfd7d84cda472a6f.lean/declarations/nontrivial-zero-im-ne-zero--4eedacdfc1ef73dcc2846b66.md) | 91 | `result-track:4eedacdfc1ef73dcc2846b66774e7c7f201a147e157a54cd2ecb2b50ba58fd35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
