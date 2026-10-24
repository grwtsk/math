# Verification target: GRWTSK.NumberTheory.Chebyshev.CorrelationPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "670849456af87f0b37ae123c6231714eb0f4d411",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CorrelationPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `670849456af87f0b37ae123c6231714eb0f4d411`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CorrelationPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CorrelationPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.IntervalIntegral.Reflection`](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceBump](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcebump--1582847cdbf3e41774181e37.md) | 39 | `declaration-track:1582847cdbf3e41774181e379253b6b9172db6c280f8b36c5e193d53dde105db` |
| 2 | `def` | [scaledBump](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/scaledbump--70939a970bd39ffd73ee4d3a.md) | 43 | `declaration-track:70939a970bd39ffd73ee4d3ac369b0e9b91579c660311161a0be203ea1cb74d9` |
| 3 | `def` | [sourceNormalization](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcenormalization--054fa8a1a71682dabdf0a308.md) | 46 | `declaration-track:054fa8a1a71682dabdf0a30869bafae42ecac2ec3263e4badbd995d0a5b9a98f` |
| 4 | `theorem` | [source_normalization_pos](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/source-normalization-pos--a9c0563f22dcff0cd8e9231e.md) | 50 | `result-track:a9c0563f22dcff0cd8e9231e9d83f603af9aac2d468f80a1a9d54ce701ebe124` |
| 5 | `def` | [IsWeakSecondDerivative](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/isweaksecondderivative--e1febb7612719f02604c217d.md) | 60 | `declaration-track:e1febb7612719f02604c217dcbd432e2a6c8a3f7d2089a513f3dc846fba6a623` |
| 6 | `def` | [dilationTest](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/dilationtest--00e419194b56e445c08bab77.md) | 68 | `declaration-track:00e419194b56e445c08bab77afc20754ffc66438bfc5bf279e89cc467160d5cd` |
| 7 | `def` | [normalizedTest](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/normalizedtest--5707cd00de6da038d203edeb.md) | 73 | `declaration-track:5707cd00de6da038d203edeb37e1189dc37ad8990e04c1c03aad87955f212933` |
| 8 | `def` | [sourceCorrelation](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcecorrelation--756fa9323068bc2b348da392.md) | 77 | `declaration-track:756fa9323068bc2b348da3929a2c03600bcf17b1d880a569924b1e5df315e8ce` |
| 9 | `def` | [chebyshevPrimePower](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/chebyshevprimepower--488cb273f9e731ca8699fa32.md) | 82 | `declaration-track:488cb273f9e731ca8699fa324b36f00412c866830613a438f13584d79a567d33` |
| 10 | `def` | [chebyshevError](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/chebysheverror--3c141c4f0a5ab0ebe5b13184.md) | 86 | `declaration-track:3c141c4f0a5ab0ebe5b131845790e2a07ceb251dae4b0879ba4b87ee68b4ac97` |
| 11 | `def` | [lowerEndpoint](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/lowerendpoint--858b3ef16afeb9dcfb942842.md) | 89 | `declaration-track:858b3ef16afeb9dcfb942842c723c3e5fdd14efb62fa1aae0ec83dedcba291d3` |
| 12 | `theorem` | [source_interval_order](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/source-interval-order--2cc19c04eb3cec8848418f6a.md) | 91 | `result-track:2cc19c04eb3cec8848418f6a0204c9247bfe580ca3b9f7f4f69c5698e0fcb878` |
| 13 | `theorem` | [chebyshev_error_at_two](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/chebyshev-error-at-two--0475747b3bb96b3c21853eb8.md) | 98 | `result-track:0475747b3bb96b3c21853eb8d493b0bd0bd42ff19e585b77f8244424e61ce4aa` |
| 14 | `def` | [sourceWeight](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourceweight--1dc63654358ca6b338c57292.md) | 104 | `declaration-track:1dc63654358ca6b338c57292de6eaf216fc9fdbe8026dba6ea48c10a39e76d5d` |
| 15 | `def` | [errorProfile](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/errorprofile--9bcac72724f4a8a520e2602f.md) | 109 | `declaration-track:9bcac72724f4a8a520e2602fe51cede71eacd9eeba1f91e4c3e11d8801dba4f0` |
| 16 | `def` | [signedPairing](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/signedpairing--ada997d8eefd2c5b6f900ba9.md) | 112 | `declaration-track:ada997d8eefd2c5b6f900ba9dc41e0c3c7fe27fb8e7c9ea779c380082b2493d0` |
| 17 | `def` | [sourceFourier](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcefourier--093ee9e9e78dad0ec603d28f.md) | 116 | `declaration-track:093ee9e9e78dad0ec603d28ffe28c10b0d022e64867cd081425444ec72557807` |
| 18 | `def` | [archimedeanMultiplier](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/archimedeanmultiplier--97e067a3dc926480402599a6.md) | 120 | `declaration-track:97e067a3dc926480402599a63196ba7340557c0d358536d33c7fe684eae29678` |
| 19 | `def` | [archimedeanIntegrand](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/archimedeanintegrand--17ae2a2ce5a0083a081ba3a6.md) | 124 | `declaration-track:17ae2a2ce5a0083a081ba3a659581b7a3bf0b24dc739cedcb8b6efffc360adcd` |
| 20 | `def` | [archimedeanValue](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/archimedeanvalue--62169020662d867bab870015.md) | 128 | `declaration-track:62169020662d867bab87001556b05b34d243062fc802499a06f3da22572f3de0` |
| 21 | `def` | [primeTwoBoundary](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/primetwoboundary--aac26e8a867e8b64261badb3.md) | 132 | `declaration-track:aac26e8a867e8b64261badb3fa107b553e8bfcce1293e03d7ceb8f603f415af4` |
| 22 | `theorem` | [prime_two_boundary_eq_zero_iff](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/prime-two-boundary-eq-zero-iff--cc3b8e3030ec138edd731d0c.md) | 138 | `result-track:cc3b8e3030ec138edd731d0cddc37e40513a14e6ee69b0107463a9b5b333f179` |
| 23 | `def` | [analyticCorrection](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/analyticcorrection--af6d438f38bc5ea89e3238ee.md) | 144 | `declaration-track:af6d438f38bc5ea89e3238eebb996e26ab2ca8c51f00fbe849e58c703be711b9` |
| 24 | `def` | [primePowerContribution](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/primepowercontribution--ee02c05096cb445d374e9465.md) | 151 | `declaration-track:ee02c05096cb445d374e94656b3537bee747b20e45cac9f815eba6f9f2e2e198` |
| 25 | `def` | [sourceQuadraticValue](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcequadraticvalue--a405301bbc6e26fc2dd4bf8d.md) | 156 | `declaration-track:a405301bbc6e26fc2dd4bf8deacea9c4e0109f2be54f2a952b4f684ddfc3a1bc` |
| 26 | `structure` | [DilationRealization](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/dilationrealization--a9501b6fc8decec3dc178afc.md) | 163 | `declaration-track:a9501b6fc8decec3dc178afcf353cf5dad9219589cb0460dd3e25e67b0987732` |
| 27 | `def` | [SourceRealizationExists](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcerealizationexists--31de73f1b28025acd3b40220.md) | 195 | `declaration-track:31de73f1b28025acd3b40220fae03bdea2652f0d832d7f3516807349c98b7468` |
| 28 | `def` | [SourceRealizationUnique](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcerealizationunique--192c0db3498845520b4c4c90.md) | 199 | `declaration-track:192c0db3498845520b4c4c9056bdcceba9e2d3b00cfd8cfb7b98d1e12199570c` |
| 29 | `def` | [UniformSignedLowerBound](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/uniformsignedlowerbound--e0eaefce67ff9194cedc7243.md) | 204 | `declaration-track:e0eaefce67ff9194cedc72431de58fdefe58d19107c43f1d9e83fdf90191fa14` |
| 30 | `def` | [UniformSignedTailLowerBound](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/uniformsignedtaillowerbound--6d68b2759dd3f93b9d9d9108.md) | 209 | `declaration-track:6d68b2759dd3f93b9d9d910827f384940cb8ff3490b5aa04b3caacdc0bbf5553` |
| 31 | `theorem` | [uniform_lower_bound_implies_tail](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/uniform-lower-bound-implies-tail--e1dddf61ac00f9970641b9c9.md) | 213 | `result-track:e1dddf61ac00f9970641b9c94e36c11955d4c9feeb4606bf0e7e909fd279340f` |
| 32 | `def` | [ArithmeticRepresentation](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/arithmeticrepresentation--94c0a3f3d2f77c5dd7b560c6.md) | 220 | `declaration-track:94c0a3f3d2f77c5dd7b560c60a6c28996c650249e7afc6f7f1947fb3219f5fb1` |
| 33 | `def` | [sourceReflection](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/sourcereflection--9af97be0ebb7a1f1e62e6d32.md) | 225 | `declaration-track:9af97be0ebb7a1f1e62e6d3259274dadf7f763222575785e3799adfbb1084748` |
| 34 | `theorem` | [source_reflection_involutive](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/source-reflection-involutive--5e61e1e108e92224eeaf490c.md) | 227 | `result-track:5e61e1e108e92224eeaf490c0556d64215057cc36fa906456ffbc1645d7a75c0` |
| 35 | `theorem` | [source_reflection_preserves_interval](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/source-reflection-preserves-interval--7538518d419ff0f484c48ca3.md) | 230 | `result-track:7538518d419ff0f484c48ca3a2ad72adcefbd13602a7b9d004eeb780f6cfb67e` |
| 36 | `theorem` | [signed_pairing_polarization](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/signed-pairing-polarization--b865aeec5863f5f4702b9095.md) | 237 | `result-track:b865aeec5863f5f4702b9095dfe9242dbf35b161afa00830722189e7c0935e35` |
| 37 | `theorem` | [signed_pairing_reflection_decomposition](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/declarations/signed-pairing-reflection-decomposition--c7f2c0c76c1edb5c627e2d41.md) | 254 | `result-track:c7f2c0c76c1edb5c627e2d41ec2468f34bcbe0f8f18e7cd4213fb074dec3406d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
