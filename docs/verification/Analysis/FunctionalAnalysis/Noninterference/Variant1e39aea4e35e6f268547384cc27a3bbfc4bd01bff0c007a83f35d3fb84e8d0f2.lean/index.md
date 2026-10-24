# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Noninterference.Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d91eba3b8f4c3a2e4fe2692ea7118c63cae771b8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d91eba3b8f4c3a2e4fe2692ea7118c63cae771b8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.SquareRoot` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuthorityEffect](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/authorityeffect--5f04c92f439c2934f4dac001.md) | 17 | `declaration-track:5f04c92f439c2934f4dac00160dddd11eab0b00f2472ab78a8483a33d9ba823e` |
| 2 | `inductive` | [SpectralArtifactKind](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/spectralartifactkind--6150f1fab9696d41c54dfdfc.md) | 23 | `declaration-track:6150f1fab9696d41c54dfdfc1c7766c71e352302ce011391b9e6bb1f2ae016da` |
| 3 | `def` | [SpectralArtifactKind.authorityEffect](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/spectralartifactkind-authorityeffect--9d9112aa10fd228b5e70d059.md) | 33 | `declaration-track:9d9112aa10fd228b5e70d0596c213125df9dd4141801a87cf043fefdece998c4` |
| 4 | `theorem` | [spectral_artifacts_cannot_commit](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/spectral-artifacts-cannot-commit--dd465887b5087f1d99a629e4.md) | 37 | `result-track:dd465887b5087f1d99a629e4ec7a159b055e309b5ff055c378885e988697f38a` |
| 5 | `inductive` | [TheoremCertificateOrigin](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/theoremcertificateorigin--0661550034a2d468b1501000.md) | 42 | `declaration-track:0661550034a2d468b1501000f89aef7f8d0c42e2955874538a81b20eb9d60ff1` |
| 6 | `def` | [TheoremCertificateOrigin.mayChangeTheoremStatus](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/theoremcertificateorigin-maychangetheoremstatus--431be3d24da26a5068eaf21a.md) | 47 | `declaration-track:431be3d24da26a5068eaf21a8eaf45827c1964cde7a117bbd8d4407bc3cd4c0f` |
| 7 | `theorem` | [runtime_observations_cannot_manufacture_theorem_certificates](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/runtime-observations-cannot-manufacture-theorem-certificates--6bf2055c47727a0752209d69.md) | 52 | `result-track:6bf2055c47727a0752209d6939220d9fa1ff2f3a6b88c06705eadf72a11f4140` |
| 8 | `inductive` | [OwnerAdmission](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/owneradmission--032bcd4c809e755f569082ed.md) | 57 | `declaration-track:032bcd4c809e755f569082ed908ff5ef9a4b08e42a4590c9a6ace50fc56e27cb` |
| 9 | `def` | [OwnerAdmission.mayCommitRealization](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/owneradmission-maycommitrealization--2ff3e399eb606b666eae152a.md) | 63 | `declaration-track:2ff3e399eb606b666eae152a3165fafdd4d6402de3da174efc7051681dffdd97` |
| 10 | `theorem` | [owner_admission_is_necessary_for_committed_realization](../../../../../mathematics/Analysis/FunctionalAnalysis/Noninterference/Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2.lean/declarations/owner-admission-is-necessary-for-committed-realization--1a6cfde46a894a37aa9494f5.md) | 69 | `result-track:1a6cfde46a894a37aa9494f528affaf9335e27104e69a88e3e573f947a16e91e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
