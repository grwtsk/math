# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt06.Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12de7304f4ddd4ee36be30e7434b8a30002b33c5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12de7304f4ddd4ee36be30e7434b8a30002b33c5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean.json)

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
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/fractionalweight--189de430bd9afab7e23ccf67.md) | 25 | `declaration-track:189de430bd9afab7e23ccf67cfd38a9312f76502bf1a7050f4f4fc43ca93367d` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/fractionalweight-integrable--12a560ff2bb0db220752c721.md) | 27 | `result-track:12a560ff2bb0db220752c721f77a41a10e48bdcd37979bdb29cf383762050f75` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/fractionalweight-nonneg--e94c1a1015a5081aca9010b8.md) | 36 | `result-track:e94c1a1015a5081aca9010b8ea7c8a55092f052761bd125608ba758032af6ca5` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/real-centered-euler-integral--5fe79bb3bf5630b1263a4aee.md) | 40 | `result-track:5fe79bb3bf5630b1263a4aee6dcd22ef55658fcf7b5e3ec2f83e7f58cad1ad2e` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/riemannzeta-real-euler--2e5df00c06748903b83af033.md) | 55 | `result-track:2e5df00c06748903b83af0336e01b5199f0b91ac3033dc65158f03b882cce4bc` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/riemannzeta-ofreal-neg--7a46c775fe55fca40b20bbe0.md) | 86 | `result-track:7a46c775fe55fca40b20bbe0821d47e95c5d3e0394b152deb1d3227d48c7f3f3` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/nontrivial-zero-im-ne-zero--a807d48d431c02cd3c20aecc.md) | 96 | `result-track:a807d48d431c02cd3c20aeccab66de6910bc84af7dd8fdcce486307f8fb3c3ce` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/realgammar--d7ec266ec2dcc582a90d76d3.md) | 104 | `declaration-track:d7ec266ec2dcc582a90d76d38b6817e442b9bf9c636a261149fdf3fd5324910f` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/gammar-ofreal--46138e97ac382aa45567c595.md) | 106 | `result-track:46138e97ac382aa45567c595ec4526da16fc687c62dbbaae571290a12daf9a96` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/realgammar-pos--cea899a7ca6585471db91844.md) | 113 | `result-track:cea899a7ca6585471db918440ce53d8b376ac575c4fdfce905932bb4faf2cc77` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/xi-real-euler--37587e727a21882994f3a583.md) | 116 | `result-track:37587e727a21882994f3a5830791394241c180f381897b488fbd8e06b54a0b9a` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/xi-ofreal-re-pos--f9ded1b19adb5e29d4f509ff.md) | 130 | `result-track:f9ded1b19adb5e29d4f509ffe3355f45d993e4390cd7480ce55ccbe57ece6913` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/coefficient-zero-exact--86b5caa0600b9ef41026809b.md) | 141 | `result-track:86b5caa0600b9ef41026809b1455817f9fa8ff076e4e5db4584512bee35b6f60` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/declarations/coefficient-zero-pos--77e8903d584546bad4dc8de6.md) | 152 | `result-track:77e8903d584546bad4dc8de614331de9294cf4edca25f7ef5af90bb0f15cd023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
