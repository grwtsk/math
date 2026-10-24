# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Signed.Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f83c4889673199263f976cc242671833397726b0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f83c4889673199263f976cc242671833397726b0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.CeilingLaw256` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ceiling_signed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/declarations/ceiling-signed--9bf562e856ce8e2b71887f5b.md) | 35 | `result-track:9bf562e856ce8e2b71887f5b271da34ffcbee48e9d49ac6c9eac9e8785347722` |
| 2 | `theorem` | [ceiling_nearCUE_signed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/declarations/ceiling-nearcue-signed--7bb4104bfb099c8b0cf84851.md) | 62 | `result-track:7bb4104bfb099c8b0cf84851871aff63fc9e4254e7c5ef4128dd4c4e6d17c6d5` |
| 3 | `def` | [edgeNonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/declarations/edgenonneg--9c9a7c4e8e267c1bc88351a7.md) | 80 | `declaration-track:9c9a7c4e8e267c1bc88351a7b42629235820be6ce9f680c631f415835b4e5831` |
| 4 | `theorem` | [D1_nonneg_of_edgeNonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/declarations/d1-nonneg-of-edgenonneg--6d4d68ac91a5f2254cbb3dfa.md) | 83 | `result-track:6d4d68ac91a5f2254cbb3dfaf95a35b71902eff39e7704694768505c287cdfbd` |
| 5 | `theorem` | [LawN256_edge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/declarations/lawn256-edge--1dd56b934201b89f8cb96fbf.md) | 98 | `result-track:1dd56b934201b89f8cb96fbf74f8ce0c1beaecf7cc22c9798c70028d170259a2` |
| 6 | `theorem` | [ceiling_law256_signed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant814f5f4065d3232293514097dd86c45c28c3ebcdec4d417b35d445c7a8ed01fa.lean/declarations/ceiling-law256-signed--8dd6ab2d91a382350ca42791.md) | 102 | `result-track:8dd6ab2d91a382350ca427911ab321d1967e97b5846d6a63af585edc7e53ad62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
