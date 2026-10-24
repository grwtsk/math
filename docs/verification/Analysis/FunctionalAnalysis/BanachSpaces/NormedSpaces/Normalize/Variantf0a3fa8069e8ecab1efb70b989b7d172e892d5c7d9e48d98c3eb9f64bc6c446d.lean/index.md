# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Normalize.Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4112f138324df2ef2cedee2576918a544be99d5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4112f138324df2ef2cedee2576918a544be99d5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NormedSpace.normalize](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normedspace-normalize--9172b5cd9c7d9c0965186271.md) | 33 | `declaration-track:9172b5cd9c7d9c0965186271edc335391619e957106a33e7d50dddf30b65f655` |
| 2 | `theorem` | [normalize_zero_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-zero-eq-zero--9dd289ea875cc71959368cd7.md) | 38 | `result-track:9dd289ea875cc71959368cd7455e3d37a00851f47bfdbc205112ee42098c3958` |
| 3 | `theorem` | [normalize_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-eq-zero-iff--1bc4293195ef4d3252240b5b.md) | 42 | `result-track:1bc4293195ef4d3252240b5b4a6b8a867c710c273c0bc2cb3c3217a83d040e2b` |
| 4 | `theorem` | [norm_smul_normalize](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/norm-smul-normalize--755ecc0109cc12f3c2572a84.md) | 46 | `result-track:755ecc0109cc12f3c2572a842ae7ad7094d30a385f2840cd969a6e0f737ad38e` |
| 5 | `lemma` | [norm_normalize_eq_one_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/norm-normalize-eq-one-iff--9297d6a77e3321d1269fbfa9.md) | 50 | `result-track:9297d6a77e3321d1269fbfa91eb0ab3ec58dac21f866324190fd6dbe7e61509f` |
| 6 | `lemma` | [normalize_eq_self_of_norm_eq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-eq-self-of-norm-eq-one--47ec9d7a350dbf406f8c6e61.md) | 55 | `result-track:47ec9d7a350dbf406f8c6e615138edc3e4fe9f2a2d58382976be66ce4c13eea1` |
| 7 | `theorem` | [normalize_normalize](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-normalize--87ed5de3466e62c55ea9594d.md) | 59 | `result-track:87ed5de3466e62c55ea9594d4744cf66f893abfaabbce21e13fc51ab3d328bc1` |
| 8 | `theorem` | [normalize_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-neg--acad3f39314d2663865f82c5.md) | 65 | `result-track:acad3f39314d2663865f82c5f5ea2f7f232ef9bf2e868815a09a423eb952f983` |
| 9 | `theorem` | [normalize_smul_of_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-smul-of-pos--9dd309b6aea5abe5a7864776.md) | 68 | `result-track:9dd309b6aea5abe5a786477618b0a645500adfb387b7220e7089204f3799df3b` |
| 10 | `theorem` | [normalize_smul_of_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-smul-of-neg--b193cf5cf43f9b5938ded8d6.md) | 72 | `result-track:b193cf5cf43f9b5938ded8d66bf02bf2c987ba0a993adc2accc3609255a63314` |
| 11 | `theorem` | [normalize_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d.lean/declarations/normalize-smul--0f95a27e0ae82e7ea6809910.md) | 76 | `result-track:0f95a27e0ae82e7ea68099100e233785eb761b0764b860fd4774e63bf750f182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
