# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Obligation3Remainder.Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87225e52ff21f3b53b565a33cf47ee5b04cf5387",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87225e52ff21f3b53b565a33cf47ee5b04cf5387`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceCollision` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIsolation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RemainingOccurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/remainingoccurrence--e45a8663c657a64d33186884.md) | 22 | `declaration-track:e45a8663c657a64d33186884a6dd55a21f55b64975cae47c0f1d27b4d212f930` |
| 2 | `def` | [remainder](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/remainder--196c9b21edd637d14c51ba20.md) | 24 | `declaration-track:196c9b21edd637d14c51ba20f25a6cb647b5b5ea3e399b7fbacae8bdc2eb73cd` |
| 3 | `lemma` | [boundary_norms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/boundary-norms-summable--2295ccaef1880961ab625087.md) | 27 | `result-track:2295ccaef1880961ab6250870f5c9c5e034ca726c4c967c09f581713b854e437` |
| 4 | `lemma` | [closedDisk_norm_le_boundary](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/closeddisk-norm-le-boundary--60cda72a684a183de9517d2f.md) | 33 | `result-track:60cda72a684a183de9517d2f638b22c8da72dea07f4780c229c13818120f1dc1` |
| 5 | `lemma` | [closedDisk_norms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/closeddisk-norms-summable--5acda9e8382c34ff7312fdc1.md) | 50 | `result-track:5acda9e8382c34ff7312fdc15c5dc22b8aad3333c19aafbde6f681f1d1f88da4` |
| 6 | `lemma` | [remainder_hasSumUniformlyOn_closedDisk](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/remainder-hassumuniformlyon-closeddisk--8f9942e98a4dddccb655f371.md) | 60 | `result-track:8f9942e98a4dddccb655f371ab926a0e69061cebc089b8ad97f2a7af9feb423e` |
| 7 | `lemma` | [remainder_analyticOn_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/remainder-analyticon-ball--3cc23aca9f96ce3d6e1ac5c6.md) | 69 | `result-track:3cc23aca9f96ce3d6e1ac5c6756c5b6db1c3fdacda36bab363731ead949e2946` |
| 8 | `lemma` | [closedDisk_supNorms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/closeddisk-supnorms-summable--e76720bf2e3824873a76603d.md) | 82 | `result-track:e76720bf2e3824873a76603db618533b416e48ce7c42afa0c215c7d5306cd1a5` |
| 9 | `lemma` | [remaining_kernel_analytic_on_isolating_disk](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/remaining-kernel-analytic-on-isolating-disk--9037297f4adc2f1f0056a84d.md) | 99 | `result-track:9037297f4adc2f1f0056a84d19204b7c88f37238496c0cdf8ad27a98ce3fe2b6` |
| 10 | `lemma` | [exists_remainder_disk](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/exists-remainder-disk--91a352855604ec980e0234da.md) | 118 | `result-track:91a352855604ec980e0234da108fc66966dd1cbd8a4ef4bbf98da6d300e53c27` |
| 11 | `lemma` | [remainder_analytic_at](../../../../../mathematics/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant98162e87739a52011027c0a40f14c33f8e488c9815a7f85f60fda0019ded636f.lean/declarations/remainder-analytic-at--9ab2dd543d4bdc5a536b126c.md) | 138 | `result-track:9ab2dd543d4bdc5a536b126c480a872ae77dbe4d425f5f1ebcd42d184fc3a259` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
