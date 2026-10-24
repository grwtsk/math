# Verification target: GRWTSK.Algebra.LocalSubring.Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66831aa62e685be3d5f6edbf011aa14cba6d0f0e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66831aa62e685be3d5f6edbf011aa14cba6d0f0e`.

Source path: `GRWTSK/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/instance--f66c52d72f9e3e27ed97e918.md) | 43 | `declaration-track:f66c52d72f9e3e27ed97e918f4906edee80be9a585e7c824e236528fda6b0745` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/instance--d722b260f842f0186536a51a.md) | 46 | `declaration-track:d722b260f842f0186536a51affca284081a87e1fe821629db0c03960ae40e69e` |
| 3 | `def` | [ValuationSubring.toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/valuationsubring-tolocalsubring--ecde86ed94b31368a9b9e4de.md) | 50 | `declaration-track:ecde86ed94b31368a9b9e4de0bf42f1f15b818d3939a817272211fcd230d458b` |
| 4 | `lemma` | [ValuationSubring.toLocalSubring_injective](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/valuationsubring-tolocalsubring-injective--a262e807044ec333aba110a7.md) | 54 | `result-track:a262e807044ec333aba110a744fe5dea0d505c1fbfc7b64d676e5012844c745d` |
| 5 | `lemma` | [LocalSubring.map_maximalIdeal_eq_top_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-map-maximalideal-eq-top-of-ismax--b7b7b6224e63aa418e53fb63.md) | 58 | `result-track:b7b7b6224e63aa418e53fb63422e70e35ccf29358108bb8b4b2760f361c38a7d` |
| 6 | `lemma` | [LocalSubring.mem_of_isMax_of_isIntegral](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-mem-of-ismax-of-isintegral--0984ff25859cb7af79e64123.md) | 74 | `result-track:0984ff25859cb7af79e641235e85f718e695243aff46fd943819b82a81ab5c61` |
| 7 | `lemma` | [ValuationSubring.isMax_toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/valuationsubring-ismax-tolocalsubring--d4d9e60bd136331e615c7402.md) | 90 | `result-track:d4d9e60bd136331e615c7402116b880ae0d528fa142965ef225c3d6e6ff53d03` |
| 8 | `lemma` | [LocalSubring.exists_valuationRing_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-exists-valuationring-of-ismax--d0793eeb23fe8babae220287.md) | 103 | `result-track:d0793eeb23fe8babae22028765f6fcbde9e0b5bde275897aee9ee462a3b4860a` |
| 9 | `lemma` | [LocalSubring.isMax_iff](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-ismax-iff--13cdfc6e5fb19fb376e21992.md) | 121 | `result-track:13cdfc6e5fb19fb376e21992603428f4c731b39e54e83c932a0b0fbe258dfa25` |
| 10 | `lemma` | [LocalSubring.exists_le_valuationSubring](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-exists-le-valuationsubring--88a2b3e1b1d22024aa4aea8f.md) | 126 | `result-track:88a2b3e1b1d22024aa4aea8fca9d2a646ee2e54840983f5352182d253e4e8424` |
| 11 | `lemma` | [Ideal.image_subset_nonunits_valuationSubring](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/ideal-image-subset-nonunits-valuationsubring--969aed764b361d14aa0d5b41.md) | 153 | `result-track:969aed764b361d14aa0d5b41965180db3cdd14359334a2bdacc05d4dc96dd43f` |
| 12 | `lemma` | [Subring.exists_le_valuationSubring_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/subring-exists-le-valuationsubring-of-isintegrallyclosedin--489010e3f5363be182bc5c43.md) | 166 | `result-track:489010e3f5363be182bc5c435e218b369ac911d48874b9e62171d2ff56d21034` |
| 13 | `lemma` | [LocalSubring.exists_le_valuationSubring_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-exists-le-valuationsubring-of-isintegrallyclosedin--a8163e629f6b89bca79b142c.md) | 183 | `result-track:a8163e629f6b89bca79b142cd6ce81954d1d5a8d12924b3f79a8f5e702132800` |
| 14 | `lemma` | [Subring.eq_iInf_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/subring-eq-iinf-of-isintegrallyclosedin--70765fa25a90a10e7ca70491.md) | 207 | `result-track:70765fa25a90a10e7ca70491199ba958e4cd09c407621686ed2f9bd50d6fe3aa` |
| 15 | `lemma` | [LocalSubring.eq_iInf_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/localsubring-eq-iinf-of-isintegrallyclosedin--62f8d0e47e42cbe852d2c9ad.md) | 215 | `result-track:62f8d0e47e42cbe852d2c9ad02a24863fd8d588f89215d7e24d77c5d13a670e1` |
| 16 | `lemma` | [iInf_valuationSubring_superset](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/iinf-valuationsubring-superset--ba550ddce030f0bc4524e6b4.md) | 224 | `result-track:ba550ddce030f0bc4524e6b4b775ff4086f224f9ca92c194a8fb74e556719137` |
| 17 | `lemma` | [bijective_rangeRestrict_comp_of_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/bijective-rangerestrict-comp-of-valuationring--e8bdb07d52bdb39afef981f5.md) | 234 | `result-track:e8bdb07d52bdb39afef981f51d49d487963661042834d97738d3cb4a1e400e43` |
| 18 | `lemma` | [IsLocalRing.exists_factor_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/declarations/islocalring-exists-factor-valuationring--c50e31d6541bb8ff6e62a033.md) | 258 | `result-track:c50e31d6541bb8ff6e62a033cf108707b7679ecd7806bc8e4a7cad3cc88e4056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
