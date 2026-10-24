# Verification target: GRWTSK.Spectral.Sheaf.SymmetryResolvedQuadraticDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e`.

Source path: `GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors`](../../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement`](../../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Symbols](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/symbols--ade311761fb239f8a36d0eff.md) | 38 | `declaration-track:ade311761fb239f8a36d0effa351147a8a322369972b50dc9c91bda3bb3472f5` |
| 2 | `structure` | [SymmetricForm](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/symmetricform--996be92c8f11e6ec878d8b03.md) | 41 | `declaration-track:996be92c8f11e6ec878d8b03309110c167fa19ea8736c1f2ada4fa613411500e` |
| 3 | `def` | [centeredQuadratic](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/centeredquadratic--7affde53bbe589157bfd8f05.md) | 46 | `declaration-track:7affde53bbe589157bfd8f057fa0a377567de87c4005dc5a97d2024ff35b17b6` |
| 4 | `theorem` | [centeredQuadratic_center](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/centeredquadratic-center--b688e206cb6b8f02934564d9.md) | 51 | `result-track:b688e206cb6b8f02934564d943d90953b38aeb30aa247cb012e68db60379f093` |
| 5 | `theorem` | [centeredQuadratic_translate](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/centeredquadratic-translate--6268457be74c0ab382572284.md) | 58 | `result-track:6268457be74c0ab382572284e6abb2938b48c00aab850a964b32f854ef5f26e9` |
| 6 | `def` | [SymmetricForm.PositiveDefinite](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/symmetricform-positivedefinite--504ef88f9f0b787ac43446ec.md) | 65 | `declaration-track:504ef88f9f0b787ac43446ec03094dd34f50579b76f1eb9c2e8d95d0894975fb` |
| 7 | `def` | [SymmetricForm.HasSignatureOneOneOn](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/symmetricform-hassignatureoneoneon--7818ee39e7a8c033b14a0ad2.md) | 71 | `declaration-track:7818ee39e7a8c033b14a0ad217f62fe4723a532e2f2026878b48bee8a0214dd8` |
| 8 | `structure` | [CoordinateRealization](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/coordinaterealization--6c2496dbe4a3d9db6667a55e.md) | 82 | `declaration-track:6c2496dbe4a3d9db6667a55ec43d08d46be419888a487124850d3962fc8f8913` |
| 9 | `structure` | [LocalModel](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/localmodel--8b537aed66bf4ad90781730b.md) | 99 | `declaration-track:8b537aed66bf4ad90781730b414fbd45e279c592cee3406cac40b7ae647a1b54` |
| 10 | `structure` | [ModelSheaf](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/modelsheaf--7d36fd62122aaba11e3998d8.md) | 114 | `declaration-track:7d36fd62122aaba11e3998d8e53b31ccf6b5fcde3577ef179f59ca70c4ed0621` |
| 11 | `def` | [edgeIntertwiner](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/edgeintertwiner--4145cf2cdf1621add46e6bf3.md) | 144 | `declaration-track:4145cf2cdf1621add46e6bf374dfe5d7320156c3be388a43fc3f4e6459941f1b` |
| 12 | `theorem` | [restrict_preserves_sector](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/restrict-preserves-sector--cf05a6e213669e61c98422e6.md) | 152 | `result-track:cf05a6e213669e61c98422e647760c6887b1f87047da2922f7c9342c257933bd` |
| 13 | `def` | [transport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/transport--046b1aae5826c0653e0af133.md) | 160 | `declaration-track:046b1aae5826c0653e0af1338af52af5ae802e5573902d820371c18ceb01cf37` |
| 14 | `theorem` | [encoded_source_transport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/encoded-source-transport--59f2b2466a97e0354c531cbf.md) | 167 | `result-track:59f2b2466a97e0354c531cbfa21410ad6c5b7d7cd228f735d1903d8262c508d8` |
| 15 | `structure` | [LocalZeroDatum](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/localzerodatum--b12e6f750cd94b79aa0808cb.md) | 182 | `declaration-track:b12e6f750cd94b79aa0808cb24ce19bb8814e16294ff39578c47ffef8ab21e91` |
| 16 | `theorem` | [full_zero](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/full-zero--b7cd265d987900ab8fabd976.md) | 209 | `result-track:b7cd265d987900ab8fabd9765a41dc59bbb090cea02c46e2db2275a251b1d66b` |
| 17 | `structure` | [CompatibleZeroDatum](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/compatiblezerodatum--148b5ba674538d8d8bddd528.md) | 219 | `declaration-track:148b5ba674538d8d8bddd5285679464296d8b417f7c71e10523a700d6b7baceb` |
| 18 | `theorem` | [symbols_compatible](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/symbols-compatible--1418d9368a729a9d17d5f77f.md) | 254 | `result-track:1418d9368a729a9d17d5f77f085ca777f707a9aa198535d715ccfff2d740d71e` |
| 19 | `theorem` | [transported_source_sector](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/transported-source-sector--10f23382beafe2c8663d1a1d.md) | 274 | `result-track:10f23382beafe2c8663d1a1d6b50fceee2aba31d5ab6113975d8c4cc3d5d6017` |
| 20 | `def` | [globalSpectralDivisorSupport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/globalspectraldivisorsupport--5f13c206495dc085291aa35a.md) | 289 | `declaration-track:5f13c206495dc085291aa35aa51927b4d281a003140240faa5a1fdb9d1bda733` |
| 21 | `def` | [commonLocalZeroSet](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/commonlocalzeroset--cb82d2e4512fbf17851b1fa2.md) | 302 | `declaration-track:cb82d2e4512fbf17851b1fa2ae3761eb70cf812ce9e2202cc6cc97b7d139bf23` |
| 22 | `def` | [glue](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/glue--fb64cb955422addbb8605a98.md) | 314 | `declaration-track:fb64cb955422addbb8605a98bf0eeeac3fc1445a0d6c85c76cc2266b47a6086c` |
| 23 | `theorem` | [descent](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/descent--37a9640d7e13fa1d9711a06e.md) | 342 | `result-track:37a9640d7e13fa1d9711a06ee982cc8bec13d1a2093410b18cd4360ba61621b7` |
| 24 | `theorem` | [globalSpectralDivisorSupport_subset_commonLocalZeroSet](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/globalspectraldivisorsupport-subset-commonlocalzeroset--461ed6a2f5dfd63db6b50b3d.md) | 366 | `result-track:461ed6a2f5dfd63db6b50b3d45c98ddc3e1f9421f14ba6343edb089de382d257` |
| 25 | `structure` | [AffineMetricTransport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/affinemetrictransport--3ab618b7ae5a32041316db9c.md) | 388 | `declaration-track:3ab618b7ae5a32041316db9ce5cb09f573f09db637f74cc696365f35ac8ea85f` |
| 26 | `def` | [AffineMetricTransport.apply](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/affinemetrictransport-apply--a06e60e38584676544a606f0.md) | 395 | `declaration-track:a06e60e38584676544a606f05d816e25a609edec5aa3edf7a3ccda667e3992e4` |
| 27 | `theorem` | [affineMetricTransport_preserves_zero](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/declarations/affinemetrictransport-preserves-zero--45e4d4b37f3214db8e75a9d9.md) | 402 | `result-track:45e4d4b37f3214db8e75a9d9116f00035ccd4fd6e311effdbe9417dc290aa929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
