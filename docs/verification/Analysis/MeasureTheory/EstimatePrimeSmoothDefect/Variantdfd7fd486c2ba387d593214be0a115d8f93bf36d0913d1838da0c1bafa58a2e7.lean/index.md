# Verification target: GRWTSK.Analysis.MeasureTheory.EstimatePrimeSmoothDefect.Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab7924ee82fdd0963213df13eb484d0ba46fa4c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab7924ee82fdd0963213df13eb484d0ba46fa4c`.

Source path: `GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/closedprimemoment--2757362170cb23fe8f8c23db.md) | 43 | `declaration-track:2757362170cb23fe8f8c23db4567475659bd0ac770f2d03a5a3a78f127255acd` |
| 2 | `def` | [smoothMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/smoothmoment--71d62247e105417edf7649d5.md) | 51 | `declaration-track:71d62247e105417edf7649d50d32daf9f36a09d715e490a238a821978609899c` |
| 3 | `def` | [endpointMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/endpointmoment--7fca70c3093b4ff554f56b2e.md) | 57 | `declaration-track:7fca70c3093b4ff554f56b2eee9e01b3c9cfcb87f0f60ae6790bec863bc91f52` |
| 4 | `def` | [primeSmoothDefect](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/primesmoothdefect--bbc26b1e3a4ff8684764b667.md) | 63 | `declaration-track:bbc26b1e3a4ff8684764b667a74b3d00ebe56616c49ca31cbb7f7b9de4ad073f` |
| 5 | `theorem` | [primePowerContribution_eq_closedPrimeMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/primepowercontribution-eq-closedprimemoment--1bfd4674d985def7d0c6d138.md) | 68 | `result-track:1bfd4674d985def7d0c6d13895842c3fe25445a5eb9ac7be466a1ddd827324d4` |
| 6 | `theorem` | [signedPairing_eq_endpoint_sub_defect](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/signedpairing-eq-endpoint-sub-defect--fd2d3ccda3c9aca93e9696f5.md) | 80 | `result-track:fd2d3ccda3c9aca93e9696f5cc75fbc870c5acc5513bc16a8f544b73b04c7e23` |
| 7 | `theorem` | [endpointMoment_abs_le](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/endpointmoment-abs-le--1267ce8bf609748350c7708f.md) | 94 | `result-track:1267ce8bf609748350c7708f5bce0b2be95230f008442bfe52285b0d2d3118e6` |
| 8 | `theorem` | [endpointMoment_lower](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/endpointmoment-lower--52bd47c873daa6fec066e980.md) | 104 | `result-track:52bd47c873daa6fec066e9801236d246e3e56f9296d180815bd10b4b1200feaa` |
| 9 | `theorem` | [endpointMoment_upper](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/endpointmoment-upper--52b82a5be7f372c5a7ff8211.md) | 109 | `result-track:52b82a5be7f372c5a7ff821196a8b0fd9fecc14c1c3c2cca7ca0234d916420c1` |
| 10 | `def` | [PrimeSmoothDefectTailUpperBound](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/primesmoothdefecttailupperbound--2e50ff463222d1be2618310b.md) | 115 | `declaration-track:2e50ff463222d1be2618310b201367c13087e5d0e27066666b7f8cd4ed0ffb04` |
| 11 | `theorem` | [signed_pairing_tail_of_defect_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/signed-pairing-tail-of-defect-tail--4edc018db3423b25b346b161.md) | 123 | `result-track:4edc018db3423b25b346b1610c722c77c40c70d76c59769e31213fc92a45988c` |
| 12 | `theorem` | [defect_tail_of_signed_pairing_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/defect-tail-of-signed-pairing-tail--a3fa151f5c5b4c60e3ef99af.md) | 137 | `result-track:a3fa151f5c5b4c60e3ef99af5b6d5d9da23a7d776b7cf875ad05a518bf643560` |
| 13 | `theorem` | [signed_pairing_tail_iff_prime_smooth_defect_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/signed-pairing-tail-iff-prime-smooth-defect-tail--cf2550b9bc96dcfa4042bb65.md) | 151 | `result-track:cf2550b9bc96dcfa4042bb65bf7d7778e00e9a28bd74a358994021d25a008c10` |
| 14 | `theorem` | [estimate_of_prime_smooth_defect_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/estimate-of-prime-smooth-defect-tail--abb9a29fe759d120199b2c5e.md) | 158 | `result-track:abb9a29fe759d120199b2c5e39d6df95dde4454a019c78b7bd295cf5ccecc603` |
| 15 | `def` | [PrimeSmoothDefectCheckpoint](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/primesmoothdefectcheckpoint--068ea8453f4797c5b5c4fed8.md) | 165 | `declaration-track:068ea8453f4797c5b5c4fed82c017d6b78b89d7249891d06e1c7f862192ce70a` |
| 16 | `theorem` | [prime_smooth_defect_checkpoint](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/declarations/prime-smooth-defect-checkpoint--f7d803bdf6f11c4737b695ac.md) | 175 | `result-track:f7d803bdf6f11c4737b695ac77d91a38eb3e646f7c9e74e6d13c9aeeb52ca5c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
