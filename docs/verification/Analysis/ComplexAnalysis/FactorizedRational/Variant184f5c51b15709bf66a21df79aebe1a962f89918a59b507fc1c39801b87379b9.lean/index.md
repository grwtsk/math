# Verification target: GRWTSK.Analysis.ComplexAnalysis.FactorizedRational.Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba19bdc72427599d24cb7af06dc3bd014ff4aa8`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Divisor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.NormalForm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mulSupport](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/mulsupport--63ea4b52cf9d0efa9ded734a.md) | 46 | `result-track:63ea4b52cf9d0efa9ded734a5c93908946492feab526c62fffad3bf6694464e2` |
| 2 | `lemma` | [finprod_eq_fun](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/finprod-eq-fun--fe51e2e8d219c3b7f40fdb93.md) | 61 | `result-track:fe51e2e8d219c3b7f40fdb93b1733fd5f5a8b3c10ec1b6f88d2f97e7423f4cdd` |
| 3 | `theorem` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/analyticat--b2493456556906c7331fee8e.md) | 75 | `result-track:b2493456556906c7331fee8e342dad70fd9fb61f9e4e0f0744f284dce695cb24` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/ne-zero--2d4a9295edcdc2b4ff757af2.md) | 88 | `result-track:2d4a9295edcdc2b4ff757af22e4b11aeec0bd7638eb2375bdfc66b317d249071` |
| 5 | `lemma` | [extractFactor](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/extractfactor--15a030d31bf6440d987d35ba.md) | 101 | `result-track:15a030d31bf6440d987d35baff010e0f8226a99431cac10c1458c70814c24f0e` |
| 6 | `theorem` | [meromorphicNFOn_univ](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/meromorphicnfon-univ--e98a45d13409ac852b379bb5.md) | 120 | `result-track:e98a45d13409ac852b379bb5d36ffbd015349c019f091fdedc6bc6ed651687e0` |
| 7 | `theorem` | [meromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/meromorphicnfon--9ad2ed22f81e0d2df1c0b96f.md) | 136 | `result-track:9ad2ed22f81e0d2df1c0b96f0b7baf9c7698b4d08088b4d06a5570d3367e7ecd` |
| 8 | `theorem` | [meromorphicOrderAt_eq](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/meromorphicorderat-eq--5d1b6f713630be7e07f82b1a.md) | 146 | `result-track:5d1b6f713630be7e07f82b1aaf84dd4216d4aecaf86c5384fe5fd284f60e2604` |
| 9 | `theorem` | [meromorphicOrderAt_ne_top](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/meromorphicorderat-ne-top--e171e7590d0a33ce9b426d61.md) | 161 | `result-track:e171e7590d0a33ce9b426d61e0ac48f754cd2c2be6ba3faa6306a4e130463099` |
| 10 | `theorem` | [divisor](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/divisor--acc66c404583ac5765ff76cd.md) | 175 | `result-track:acc66c404583ac5765ff76cdfca669e9ac9963bdf2ac012a3861fb4f39e10d43` |
| 11 | `theorem` | [MeromorphicOn.extract_zeros_poles](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/meromorphicon-extract-zeros-poles--09aad295bc560f81e3910cfc.md) | 203 | `result-track:09aad295bc560f81e3910cfc8b02bb7bfb2d1e33f002ca34caa2c5c201d43404` |
| 12 | `theorem` | [MeromorphicOn.extract_zeros_poles_log](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/declarations/meromorphicon-extract-zeros-poles-log--0960ffe2a5442c5a03ad39cb.md) | 245 | `result-track:0960ffe2a5442c5a03ad39cb35456c325047d179e365c0475aedfb158881539a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
