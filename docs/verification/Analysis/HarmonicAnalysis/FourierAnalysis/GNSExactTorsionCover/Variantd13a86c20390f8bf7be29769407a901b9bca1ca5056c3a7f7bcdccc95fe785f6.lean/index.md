# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.GNSExactTorsionCover.Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50ac3365ae97226e58065b5f78f9260f1f208768",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50ac3365ae97226e58065b5f78f9260f1f208768`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.GlobalFourierMetricPositivityBoundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactTorsionStarAlgebra](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/exacttorsionstaralgebra--2ee3a855b56e50088c9fc89c.md) | 29 | `declaration-track:2ee3a855b56e50088c9fc89c12d6476a8980919eb6c99a45064170418602d41a` |
| 2 | `structure` | [PositiveExactTorsionState](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/positiveexacttorsionstate--c601c0c0be36e1dcef9e3d3d.md) | 40 | `declaration-track:c601c0c0be36e1dcef9e3d3df9b4d876547aece6a42184448da470b3f37d5013` |
| 3 | `structure` | [GNSCovariantRepresentation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/gnscovariantrepresentation--6d4d0edc41cfe720965bdae6.md) | 50 | `declaration-track:6d4d0edc41cfe720965bdae6ebfec3dbbdf84f46ca193396cb4431d88c124375` |
| 4 | `structure` | [GNSFourierInvariantCover](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/gnsfourierinvariantcover--37c3299b6de6cab30cc50217.md) | 65 | `declaration-track:37c3299b6de6cab30cc50217593a786b27a7863e108bbefb0a86b0a4843d8310` |
| 5 | `theorem` | [pi_fourier_eq_unitary_conjugation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/pi-fourier-eq-unitary-conjugation--3bf12c4d2344db27f06a63a4.md) | 94 | `result-track:3bf12c4d2344db27f06a63a4ed7b5974eda60f57761d06b2303a075b55d1b358` |
| 6 | `theorem` | [omega_fourier_invariant](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/omega-fourier-invariant--8d2a4d82a7073d9916879fb7.md) | 110 | `result-track:8d2a4d82a7073d9916879fb741a9915e97c4e21cda66bd5b85e8da8b3996908d` |
| 7 | `theorem` | [cover_has_fourier_invariant_state](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/cover-has-fourier-invariant-state--cf4ba428332032e81ee90493.md) | 123 | `result-track:cf4ba428332032e81ee9049358e1ce85654f29d8f4dec14d15131813a759e28c` |
| 8 | `theorem` | [fourier_invariant_state_with_unitary_implementer_admits_covariance](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/fourier-invariant-state-with-unitary-implementer-admits-covariance--1a3e24f4a2f6040093334efc.md) | 129 | `result-track:1a3e24f4a2f6040093334efcf3c68031525c456797e52b79de7b3c80245bd3a2` |
| 9 | `theorem` | [representation_satisfies_fourier_covariance](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/representation-satisfies-fourier-covariance--8a663ad2f8fd68fd15ffcc7c.md) | 136 | `result-track:8a663ad2f8fd68fd15ffcc7c7035775df328b9651b38cb931f80db61fe19c6bc` |
| 10 | `theorem` | [gns_covariance_does_not_claim_unconditional_hilbert_polya](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/gns-covariance-does-not-claim-unconditional-hilbert-polya--d9d344869cfc60387b165a2b.md) | 147 | `result-track:d9d344869cfc60387b165a2be032e106e4b30c6c5086ba4537813993b45623c1` |
| 11 | `def` | [trivialExactTorsionStarAlgebra](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/trivialexacttorsionstaralgebra--e1845ca67b2e60a673706baf.md) | 154 | `declaration-track:e1845ca67b2e60a673706baf6ea3964691e146a72ab94114ae968dd48e09a289` |
| 12 | `def` | [trivialPositiveExactTorsionState](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/trivialpositiveexacttorsionstate--4fdf93e8f45bd2911b3c03a4.md) | 165 | `declaration-track:4fdf93e8f45bd2911b3c03a41a8c634f2c4ac30c552f11782f0707f2a1271dc2` |
| 13 | `def` | [trivialGNSCovariantRepresentation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/trivialgnscovariantrepresentation--638a03ffa31c23890e99b2f5.md) | 177 | `declaration-track:638a03ffa31c23890e99b2f57df6f00eddbf09c54f07f30a71805a5fa98bb0b3` |
| 14 | `def` | [completedGNSFourierInvariantCover](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/completedgnsfourierinvariantcover--f18476558dbf52416700a05e.md) | 192 | `declaration-track:f18476558dbf52416700a05ee33fc5610008b1940d7506fc241ba6dcc005a27c` |
| 15 | `theorem` | [completed_gns_cover_has_fourier_invariant_unitary_gate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/completed-gns-cover-has-fourier-invariant-unitary-gate--659b26b978b1a7b2a2b6f59c.md) | 215 | `result-track:659b26b978b1a7b2a2b6f59c46d9ddeb48446b8d993832b6ac48b1e2b7c86b95` |
| 16 | `theorem` | [completed_gns_cover_pi_fourier_covariance](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/completed-gns-cover-pi-fourier-covariance--d53a77a5a9badc6c1828db7b.md) | 223 | `result-track:d53a77a5a9badc6c1828db7bbbcc4521fdb964f2a9ff87c131f15056c7bf2199` |
| 17 | `theorem` | [completed_gns_cover_does_not_promote_hilbert_polya](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/declarations/completed-gns-cover-does-not-promote-hilbert-polya--6ebb9dbc91663df19bbbd76e.md) | 237 | `result-track:6ebb9dbc91663df19bbbd76e1c18283c9a530fa1d56bd89924adb6afdf8c3705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
