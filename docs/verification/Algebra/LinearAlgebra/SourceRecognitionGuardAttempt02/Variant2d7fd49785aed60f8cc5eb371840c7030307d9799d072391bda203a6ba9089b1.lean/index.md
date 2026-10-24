# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt02.Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4d02e4985a3a8444750f9a96b3811b19a945536",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4d02e4985a3a8444750f9a96b3811b19a945536`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/symmetric-charpoly-zero-real--32b51fc13a2d6bf5d5ed3b4b.md) | 21 | `result-track:32b51fc13a2d6bf5d5ed3b4bb2373bfd66fb9eae895008560c6451bafd35631f` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/hermitian-charpoly-zero-real--e1c824a67f3a66de94912079.md) | 30 | `result-track:e1c824a67f3a66de94912079967e9e18dfb887dd443445bbcad814136efbab88` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/zerotransport--7e7c54ab3480739d687fc277.md) | 40 | `declaration-track:7e7c54ab3480739d687fc277b48d943ab8d995219f91a794a384e5b405968b10` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/realaxisreflection--f7f3c109ac271e16d28a6877.md) | 44 | `declaration-track:f7f3c109ac271e16d28a6877acebbe27bcf02f44ffdf19088eb29e7315838346` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/recognition--68b121fa24520c47d3b0cbe1.md) | 48 | `declaration-track:68b121fa24520c47d3b0cbe18beea362222c0aa260850543d52c710e444b9c2d` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/recognition-transfers-real-zeros--33aa8d8c30a303577133ceb7.md) | 53 | `result-track:33aa8d8c30a303577133ceb77d5d58d0a3d7d91fc22d5eb58e3e83ce6b47c757` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/exact-comparison-zero-transport--737cfd9c24b16efe36b8de25.md) | 61 | `result-track:737cfd9c24b16efe36b8de25c2d684267b513b7e1702ed37f408ec2cee6d69dc` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/recognition-of-exact-comparison--c2addeec048b66b956527f1c.md) | 70 | `result-track:c2addeec048b66b956527f1c93a054356ac043accdaddf30600e946d483d330b` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/real-affine-reflection--6dfe70fd7c18ee437e8854d4.md) | 77 | `result-track:6dfe70fd7c18ee437e8854d4572476518117c2b313922c1940e9995d38d21a4b` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/same-point-comparison-real-zeros--d8032fb4d0fbcebb2c6b2f83.md) | 84 | `result-track:d8032fb4d0fbcebb2c6b2f83dbbff855380803a9db389d9995d01a56c61acc15` |
| 11 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/zeromatrix--e99b9e90b57ec7affce14043.md) | 93 | `declaration-track:e99b9e90b57ec7affce1404341c6f7806e04787d9d98c1c2c802497141614b1f` |
| 12 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/hostilesource--eddc2a6923531b3f99574828.md) | 95 | `declaration-track:eddc2a6923531b3f995748284f9b5f6637065a2e5df262ed50812a9289ebde35` |
| 13 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/zeromatrix-hermitian--02c286b60c628886753700e1.md) | 97 | `result-track:02c286b60c628886753700e1b57257566ccc7944af342de2ba9c7269bb7c9926` |
| 14 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/zeromatrix-charpoly--767844b3fdfd8c0631acc25b.md) | 100 | `result-track:767844b3fdfd8c0631acc25b3234f14e6c6ae5957bbace6f496cd07d938b0f81` |
| 15 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/zeromatrix-charpoly-zeros-real--13dab1b9f24a94c4752a4278.md) | 103 | `result-track:13dab1b9f24a94c4752a42788b39ad5811a656bae5947ab3e528ca9d6c4e7f29` |
| 16 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/hostilesource-nonreal-zero--788aa087fa528e5fc10feb18.md) | 109 | `result-track:788aa087fa528e5fc10feb18c04a22ee753b37973db7a2b39b065e09d401c076` |
| 17 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/finite-boundary-reality-does-not-identify-source--38c5069060843ddd66bfeead.md) | 114 | `result-track:38c5069060843ddd66bfeead82dda1c05904d83f014bff26f95a170c81facd2e` |
| 18 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/shiftedboundary--3b5fe9e50b0b39888d060309.md) | 123 | `declaration-track:3b5fe9e50b0b39888d060309683c90a9c88d1286e8b44d7ef4d990acf137aa25` |
| 19 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/squaremap--a7bfe3be2a9848f8c4e853ee.md) | 125 | `declaration-track:a7bfe3be2a9848f8c4e853ee7b815c4095f6466fa1f9c90b25bbc0aaf7efe184` |
| 20 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/negativeunitmatrix--0219078e883564350032f604.md) | 127 | `declaration-track:0219078e883564350032f60416af8e6d46299ba92ae56ce9557c01ef1375357e` |
| 21 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/negativeunitmatrix-hermitian--b0737938be58a473ba7a2395.md) | 129 | `result-track:b0737938be58a473ba7a2395081fe11531d223d92b70e99161f91fb747e3a714` |
| 22 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/negativeunitmatrix-charpoly--d4b7a0cf3378ed3bb717be9e.md) | 132 | `result-track:d4b7a0cf3378ed3bb717be9e337d03c26001b53b35a52719979738e107f7565b` |
| 23 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/negativeunitmatrix-characteristic-function--45d22a1331b8fb7e1b21de30.md) | 139 | `result-track:45d22a1331b8fb7e1b21de30dff1ada1cce665fd159bf4477f02d76ed69759d6` |
| 24 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/shiftedboundary-real-zeros--4c81cb872fca015bb13ba865.md) | 144 | `result-track:4c81cb872fca015bb13ba865fa8f0d8a7b911c08ab1a5d5830c5754988480e48` |
| 25 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/square-comparison-exact--6a370a070a4fc2734e4dab5d.md) | 149 | `result-track:6a370a070a4fc2734e4dab5d19e21f3cd8bfa1dece432f55af835ff4a93e563a` |
| 26 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/square-zero-transport--d04ddc451057b9ce98ca4d09.md) | 154 | `result-track:d04ddc451057b9ce98ca4d095071db7cb34eeaea902b2a6969da21d230c132b4` |
| 27 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant2d7fd49785aed60f8cc5eb371840c7030307d9799d072391bda203a6ba9089b1.lean/declarations/square-map-not-real-axis-reflecting--4ae18e1edaf035dca39be01e.md) | 158 | `result-track:4ae18e1edaf035dca39be01e9178951aadcf086fb321d74a084cf26702504e58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
