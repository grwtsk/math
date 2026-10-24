# Verification target: GRWTSK.Algebra.LinearAlgebra.FourPhaseConvolution.Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd72b8ee8fa979a67246b4203146e59d2675cbe7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd72b8ee8fa979a67246b4203146e59d2675cbe7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ComparatorMargin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ThreePhaseCore](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/threephasecore--4bc46d07f5aa450cbd103bea.md) | 52 | `declaration-track:4bc46d07f5aa450cbd103beaf2a9e0c4882f849816772b038e6743d92c17e204` |
| 2 | `def` | [phaseIEnergy](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseienergy--19dfa6db2c11ce542e6b51b3.md) | 70 | `declaration-track:19dfa6db2c11ce542e6b51b31afe8346a61710e30470a900f8b72e4316cd4ffe` |
| 3 | `def` | [phaseIIEnergy](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiienergy--b56f54e84466ba98f1ce5dee.md) | 74 | `declaration-track:b56f54e84466ba98f1ce5dee13cc20cbe23909868e27ba4978f5ca76574dd96a` |
| 4 | `def` | [phaseIIISensitivity](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiiisensitivity--6971c20b603d306049b66d03.md) | 78 | `declaration-track:6971c20b603d306049b66d038f9166cc336e5d301eb81f56d9e6a7c2faed916e` |
| 5 | `theorem` | [phaseIEnergy_eq](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseienergy-eq--eb5f9a6b158ab802616a5221.md) | 82 | `result-track:eb5f9a6b158ab802616a52218a2481a3afafd342098b3f6ea398d55f14d22390` |
| 6 | `theorem` | [phaseIIEnergy_eq](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiienergy-eq--8fe760f16d1934c4d0a6401d.md) | 87 | `result-track:8fe760f16d1934c4d0a6401ddf2199b62aecacf510003a28738d2ba81b115c0e` |
| 7 | `theorem` | [phaseIIISensitivity_eq](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiiisensitivity-eq--123781c84da20a2f1c77aa58.md) | 92 | `result-track:123781c84da20a2f1c77aa5819ea3cca1f376ad64bca417b655fbf4941bb4b33` |
| 8 | `theorem` | [phaseI_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phasei-nonnegative--b65e5bd38e6d27b91fd9f662.md) | 98 | `result-track:b65e5bd38e6d27b91fd9f6623f37096316ff87115cdfba3f9b92a01326a273d5` |
| 9 | `theorem` | [phaseII_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseii-nonnegative--113918da62ef95786333eb8d.md) | 103 | `result-track:113918da62ef95786333eb8d39c693a832b596dc6393288a5dacb204a30600a1` |
| 10 | `theorem` | [phaseIII_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiii-nonnegative--c9fbe17ec09c80792108ae19.md) | 108 | `result-track:c9fbe17ec09c80792108ae1977797c586e98e08f85ad224433c5db1435ae2a92` |
| 11 | `theorem` | [phaseII_le_phaseI_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseii-le-phasei-autonomous--5a0f249b555db3199f01ee96.md) | 114 | `result-track:5a0f249b555db3199f01ee967ccf498bafdd2cb9c0dfe900cedb0b0b09f36bed` |
| 12 | `theorem` | [phaseIII_le_phaseII_differential](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiii-le-phaseii-differential--8fa8ab0530fce9975064afc4.md) | 132 | `result-track:8fa8ab0530fce9975064afc42d169f5551c1d7e38f0de468e2e6c9aec64f2654` |
| 13 | `theorem` | [three_phase_energy_chain](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/three-phase-energy-chain--efc125d65b0d69042b79acd2.md) | 141 | `result-track:efc125d65b0d69042b79acd2b3b92b7a4f6fd8823793c29c8b18405c6cb05192` |
| 14 | `theorem` | [phaseIII_positive_zeroComparator_gap](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiii-positive-zerocomparator-gap--4c5d032ad7ba5b9451e85532.md) | 154 | `result-track:4c5d032ad7ba5b9451e8553271009ba7c0cbaf4d6d2f5f3e17469c4414d8e53e` |
| 15 | `theorem` | [phaseIII_positive_not_all_comparators_separate](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiii-positive-not-all-comparators-separate--9f3832668bb48150c5504f78.md) | 163 | `result-track:9f3832668bb48150c5504f78e34180b8cb1a1fe2131c0ba594053d79cba42ee7` |
| 16 | `theorem` | [phaseIII_positive_iff_visible](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiii-positive-iff-visible--9bc8885176a27153713237f7.md) | 173 | `result-track:9bc8885176a27153713237f7654de0ff26ee434ba5428c42c468dc5fee184b51` |
| 17 | `structure` | [FourPhaseComposition](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/fourphasecomposition--c21b037c9a116dce246833da.md) | 183 | `declaration-track:c21b037c9a116dce246833da395d6bf83a64c3a6dc9283b1b7b37db728b08530` |
| 18 | `def` | [phaseIVGap](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseivgap--ebc23927f1d7700040cf7e4b.md) | 200 | `declaration-track:ebc23927f1d7700040cf7e4b627133c4728c4cac89b6534588e99bb1522e765c` |
| 19 | `theorem` | [phaseIVGap_eq](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseivgap-eq--0a07ae7e2089c170295336cc.md) | 204 | `result-track:0a07ae7e2089c170295336cc42583a7e29fe382d3df1b554902fc8a84388afc9` |
| 20 | `theorem` | [phaseIV_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiv-nonnegative--990fcd0949052b1c12ee1371.md) | 210 | `result-track:990fcd0949052b1c12ee13716952550307df843d006482659e399831dccda413` |
| 21 | `theorem` | [phaseIV_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiv-lower-bound--c50ba5b7f683cce1d8fde57e.md) | 215 | `result-track:c50ba5b7f683cce1d8fde57e55c6a9d9493ff9dff24a201a9629621439e7ec90` |
| 22 | `theorem` | [four_phase_energy_chain](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/four-phase-energy-chain--429289c9621c1507b86933c6.md) | 221 | `result-track:429289c9621c1507b86933c6e2547349b89099f7012ff94f727b26b8bbdd314d` |
| 23 | `theorem` | [positive_phaseIII_implies_positive_phaseIV](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/positive-phaseiii-implies-positive-phaseiv--24e8b730809098aaeefb0216.md) | 237 | `result-track:24e8b730809098aaeefb0216e5c6a6693e47a87529db825c799479d7b5cb5bbf` |
| 24 | `theorem` | [phaseIV_to_qualitative_complete](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiv-to-qualitative-complete--48d488a7851cd8fbef983064.md) | 251 | `result-track:48d488a7851cd8fbef983064a06cdc65a385115e81ef580098e63cce25d6d9ad` |
| 25 | `theorem` | [phaseIII_zero_of_phaseIV_zero](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/phaseiii-zero-of-phaseiv-zero--4649750251d61d2c59fb62de.md) | 257 | `result-track:4649750251d61d2c59fb62deff38a831ebca90a1d2072c0c2a803bb3fb625590` |
| 26 | `theorem` | [visible_projectedDifferential_implies_positive_gap](../../../../../mathematics/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/declarations/visible-projecteddifferential-implies-positive-gap--c5ce1d79f2082992cbff150a.md) | 264 | `result-track:c5ce1d79f2082992cbff150ab7386882346a4b231676e21f6857d11a9aed8a22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
