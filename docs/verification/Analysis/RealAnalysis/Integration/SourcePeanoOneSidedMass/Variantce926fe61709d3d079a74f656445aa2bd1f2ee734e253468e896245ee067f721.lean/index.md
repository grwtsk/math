# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePeanoOneSidedMass.Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edbbb021e3ab2a687ee4af023a8b1f9067f4dd25",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edbbb021e3ab2a687ee4af023a8b1f9067f4dd25`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePeanoPositiveWindow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalOneSidedMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/criticalonesidedmass--7ec6e88bfa96e0fff5e5c710.md) | 24 | `declaration-track:7ec6e88bfa96e0fff5e5c7100a7786cafdd1d86aeada3e013539ecabbc1adef6` |
| 2 | `def` | [actualOneSidedPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/actualonesidedpairing--07d189eed764f7461ae7a0cf.md) | 27 | `declaration-track:07d189eed764f7461ae7a0cf20d3c38be758290c5aed3134dcf8bdff531423a5` |
| 3 | `theorem` | [actualOneSidedPairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/actualonesidedpairing-integrable--42e77581f196dc943f43827e.md) | 31 | `result-track:42e77581f196dc943f43827e9d6b17461d84806fb51fabcac6b0d7f66fd062fc` |
| 4 | `theorem` | [oneSided_window_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/onesided-window-pointwise--4d5039559da456f31a1a163b.md) | 37 | `result-track:4d5039559da456f31a1a163be57f1e02f5be81198aec362ec53a59db235b2f69` |
| 5 | `theorem` | [criticalOneSidedMass_window_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/criticalonesidedmass-window-integrable--7ae4444b5c681de37b74456f.md) | 50 | `result-track:7ae4444b5c681de37b74456f60f96a3d194f630ad87a42c8dd8c88e006f9b425` |
| 6 | `theorem` | [actualOneSidedPairing_dominates_window](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/actualonesidedpairing-dominates-window--dfa0abe3293662ab06a64f4d.md) | 70 | `result-track:dfa0abe3293662ab06a64f4d6a14721369d75930be6c5bde95fa3c9c61f2c8bd` |
| 7 | `theorem` | [oneSided_spikes_transfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variantce926fe61709d3d079a74f656445aa2bd1f2ee734e253468e896245ee067f721.lean/declarations/onesided-spikes-transfer--9c63a3a5768c236cecd31611.md) | 91 | `result-track:9c63a3a5768c236cecd316110a978e92e4f111d30e8ffd23f099cb857c5cf5b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
