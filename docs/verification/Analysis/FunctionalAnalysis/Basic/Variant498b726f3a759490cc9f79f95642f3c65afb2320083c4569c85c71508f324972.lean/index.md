# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Slope` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/macro-rules--fed89f08ae43201505831c64.md) | 46 | `declaration-track:fed89f08ae43201505831c64152c3b1c6790c6c504454151daf93fdfe96e88be` |
| 2 | `theorem` | [strictConvexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/strictconvexon-exp--f50c64a587e44e614a1c398f.md) | 54 | `result-track:f50c64a587e44e614a1c398f9ff2aa0fb9f42f869a2f9ec88607dbb6bb765ad0` |
| 3 | `theorem` | [convexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/convexon-exp--e887a1b1264e8e67d3c4bb19.md) | 77 | `result-track:e887a1b1264e8e67d3c4bb196ebb9c4dacc72f7c4a3d282188d3e1a446cf9d14` |
| 4 | `theorem` | [convexOn_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/convexon-pow--e4a2de7abcd4ce2e7f3a845c.md) | 85 | `result-track:e4a2de7abcd4ce2e7f3a845ce8a071c5cb146336933c03249d43775732dead26` |
| 5 | `theorem` | [Even.convexOn_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/even-convexon-pow--10a871ae9a046ea0baa37340.md) | 111 | `result-track:10a871ae9a046ea0baa373405086459faa4ef353def33deaa79da2ed118f82e6` |
| 6 | `theorem` | [convexOn_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/convexon-zpow--03f1e976ddc845d07e19443d.md) | 133 | `result-track:03f1e976ddc845d07e19443d37871ba4ae8049e0b633410145ada008bed3acac` |
| 7 | `theorem` | [strictConcaveOn_log_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/strictconcaveon-log-ioi--69b7f154447c1a4618f9c62b.md) | 164 | `result-track:69b7f154447c1a4618f9c62bc42880f22e9b5ace2a78f12dd2cac96b07462997` |
| 8 | `theorem` | [one_add_mul_self_lt_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/one-add-mul-self-lt-rpow-one-add--f2740ff8cc5a7f815b092354.md) | 196 | `result-track:f2740ff8cc5a7f815b0923540eb2353e3e2d22e0493e3adea861c522f70911bb` |
| 9 | `theorem` | [one_add_mul_self_le_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/one-add-mul-self-le-rpow-one-add--ea55121bace1f8904f3ce04b.md) | 230 | `result-track:ea55121bace1f8904f3ce04bdc3efedeea429684472d8a31ccf6dbba523d053a` |
| 10 | `theorem` | [strictConvexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/strictconvexon-rpow--2677b298eadd1845c61442fd.md) | 243 | `result-track:2677b298eadd1845c61442fd022c32ee43cc354f3449544da2443a4a02b0ca42` |
| 11 | `theorem` | [convexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/convexon-rpow--2a63e07a087adcdea387a04c.md) | 284 | `result-track:2a63e07a087adcdea387a04cbfc3670c7e7630e90ed212572f713aaf1a6723c9` |
| 12 | `theorem` | [strictConcaveOn_log_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/declarations/strictconcaveon-log-iio--5010e6e9e6ab7cf3f7c052a8.md) | 290 | `result-track:5010e6e9e6ab7cf3f7c052a8b5fa37e90876c3c97d047eab92319289dbec7554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
