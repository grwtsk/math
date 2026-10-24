# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.W.Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `812c26bf4f3b41e667569f13aaee85f1df82df1d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Transfer` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer.InputsW` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.StatementW` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Moments` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [GentryCW_eq_GentryW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/gentrycw-eq-gentryw--c3fb535d205de885fb8f0cd1.md) | 37 | `result-track:c3fb535d205de885fb8f0cd1d1f7a5e62fee7addd0a40e96f4bd23537b794adc` |
| 2 | `def` | [L2T](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/l2t--37d2cc556c8b81b6d95265da.md) | 46 | `declaration-track:37d2cc556c8b81b6d95265da25dd1f7c893bda1abe58bb514e19c8258a3ca201` |
| 3 | `theorem` | [ReexpansionW.toAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/reexpansionw-toat--68e4ff411e4129f15c6584ec.md) | 48 | `result-track:68e4ff411e4129f15c6584ec1c440e6ca6a8b6ef3016ad4eff3b917787174056` |
| 4 | `lemma` | [L2star_eq_L2T_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/l2star-eq-l2t-add--0dc306abb3da8400a9c1ae50.md) | 53 | `result-track:0dc306abb3da8400a9c1ae509bb82f593b9b4b99be6ba8a825a441caec79790a` |
| 5 | `lemma` | [GpW1_sub_GpCW_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/gpw1-sub-gpcw-apply--a018bd2521a14611d1e398f0.md) | 62 | `result-track:a018bd2521a14611d1e398f0ebfeee9dee1c53d05577b01c900251176d5dd482` |
| 6 | `lemma` | [GpCW_two_sub_GpC_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/gpcw-two-sub-gpc-apply--75f165ed9aa3bda9a07322bd.md) | 76 | `result-track:75f165ed9aa3bda9a07322bd460aa12dc4a76dc38fa1e96872bcbaf1f0bcc9bb` |
| 7 | `lemma` | [integral_phiHat_sq_abs_PiX_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/integral-phihat-sq-abs-pix-le--7b4d8b50d6fb06e8f402c997.md) | 95 | `result-track:7b4d8b50d6fb06e8f402c997139412429a5a27400a16ecfc53e605a510a76c37` |
| 8 | `lemma` | [abs_gentryNu_PiX_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/abs-gentrynu-pix-le--17e8f909e0731395f44e2b1b.md) | 128 | `result-track:17e8f909e0731395f44e2b1b94af8ad4c892a0fb5c570d1dae15d623c834358e` |
| 9 | `theorem` | [hatNegligible_entryDependenceW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/hatnegligible-entrydependencew--37a3d3b83290948e47187e3d.md) | 187 | `result-track:37a3d3b83290948e47187e3d5d12de4d74c2b45b521e8432729d9ef66c142d9c` |
| 10 | `theorem` | [hatNegligible_piPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/hatnegligible-pipart--af6f7c5e8c347be94d3c6dfb.md) | 212 | `result-track:af6f7c5e8c347be94d3c6dfb01234ac9087d8d5b4ec796fe147280818f41e00c` |
| 11 | `theorem` | [wTraceTransfer_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/declarations/wtracetransfer-of--9f45bd5a535a0fbefd7ba8b7.md) | 341 | `result-track:9f45bd5a535a0fbefd7ba8b755a99b836f011acfb37eaed9c7c1d2bd7299df84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
