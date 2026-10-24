# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "410fd9f591955bc2b03f10cf5ab35d4a1def78ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `410fd9f591955bc2b03f10cf5ab35d4a1def78ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/fractionalweight--d4de4a44baeb9559d9d9c32b.md) | 17 | `declaration-track:d4de4a44baeb9559d9d9c32b3ecdabb12e1c370d86154589cbfdaa56966803c2` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/fractionalweight-integrable--75fef318a51eb5be868bc6f8.md) | 19 | `result-track:75fef318a51eb5be868bc6f8d50d31c1dea508d0121d7979e53bd2546dd51646` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/fractionalweight-nonneg--700c40ba6f8a8ad76fc29718.md) | 28 | `result-track:700c40ba6f8a8ad76fc297183286fc37947849d2e36513ac54f1c74c9dc133b0` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/real-centered-euler-integral--1ec88fc89c6e05ab62953619.md) | 31 | `result-track:1ec88fc89c6e05ab629536195467549bad5cdb8b0a6db9b902208c79073d79bf` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/riemannzeta-real-euler--309833b3002de3fd2eb4a9de.md) | 46 | `result-track:309833b3002de3fd2eb4a9de4f63abad6769e6c23902254a0ac6c2f4b51db46d` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/riemannzeta-ofreal-neg--c2424215d97f19d51f7760f9.md) | 74 | `result-track:c2424215d97f19d51f7760f93828255927d666d3199189e32232ec60e769cb69` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant1d244276508a8e8ee256e13521e08472fc0941473cead38491dcc9e5e4769e88.lean/declarations/nontrivial-zero-im-ne-zero--7fff6b44f777e2df3a1c6de9.md) | 83 | `result-track:7fff6b44f777e2df3a1c6de967fd5055425b923d6954083b1d05fb5d7a874e34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
