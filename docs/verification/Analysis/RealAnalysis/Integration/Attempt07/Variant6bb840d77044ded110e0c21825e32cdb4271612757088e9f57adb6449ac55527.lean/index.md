# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt07.Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23e9408ef377b0d422b16c8e1ce0ca774e48664b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23e9408ef377b0d422b16c8e1ce0ca774e48664b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean.json)

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
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/fractionalweight--5577b90b77c450a0fc6e3d12.md) | 25 | `declaration-track:5577b90b77c450a0fc6e3d1237902518a558ed996a69a16ce4204328fce65ad2` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/fractionalweight-integrable--ebe49644484b280f77f461cd.md) | 27 | `result-track:ebe49644484b280f77f461cd1b5e099e98ae59759fe6e1782fc33b011e7ca2a0` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/fractionalweight-nonneg--3532bfcb301aff727b721b91.md) | 36 | `result-track:3532bfcb301aff727b721b91731ce9ac36bb386dd67fd43df33f8a257f1d0d1c` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/real-centered-euler-integral--2e8e033ef549e194619e9f0c.md) | 40 | `result-track:2e8e033ef549e194619e9f0c42b146b0d0813b64a04ef00f0ee091179a784a03` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/riemannzeta-real-euler--c089da2dd7ab486f61fcfced.md) | 55 | `result-track:c089da2dd7ab486f61fcfced5915d1c7d6a5c9bebf177abb2db0e78b8917594c` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/riemannzeta-ofreal-neg--c665e4b2251d5efd8d20ed04.md) | 86 | `result-track:c665e4b2251d5efd8d20ed0464926a17263ba256215cb5fe0001a7845d5c24b4` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/nontrivial-zero-im-ne-zero--7e11e258faf5547bca0ceb2e.md) | 96 | `result-track:7e11e258faf5547bca0ceb2e91c09fcb9d06f363a296590c4508312daf017bfd` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/realgammar--71a8278a764408eeac72c8ef.md) | 104 | `declaration-track:71a8278a764408eeac72c8efe60205720a7ed78f5e0621d5f77c4ad2340c5caf` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/gammar-ofreal--c3b0bf6047a0528b4f66fee6.md) | 106 | `result-track:c3b0bf6047a0528b4f66fee67e70985525c1245ee33b16850eb740185ceed422` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/realgammar-pos--4e8eae9590b28ef1289b91db.md) | 113 | `result-track:4e8eae9590b28ef1289b91db7472e0d4f990415a4c8f0baac3f579c75749776f` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/xi-real-euler--23f63617ba086d4414e264aa.md) | 116 | `result-track:23f63617ba086d4414e264aa36308d75daabbd3ad20948d8dab8f999c6e18f9b` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/xi-ofreal-re-pos--11391be6c41920f474b30a43.md) | 130 | `result-track:11391be6c41920f474b30a435d69fcca0ab2a5126d9a29493d6e80179b43ad11` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/coefficient-zero-exact--1422387357bf4b3d55169640.md) | 141 | `result-track:1422387357bf4b3d55169640c30fc61266ab212337cba60b68f549bbb13bedee` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/coefficient-zero-pos--5bc9d64a07d6f585233490b4.md) | 152 | `result-track:5bc9d64a07d6f585233490b4252e0ad935311a02769d817adaa78754d1ab8174` |
| 15 | `theorem` | [coefficient_zero_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variant6bb840d77044ded110e0c21825e32cdb4271612757088e9f57adb6449ac55527.lean/declarations/coefficient-zero-lower-bound--af34cfbf6e5e38695437eabd.md) | 158 | `result-track:af34cfbf6e5e38695437eabddf21019da7e0b87db737de4c9ff3641a4b8d610b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
