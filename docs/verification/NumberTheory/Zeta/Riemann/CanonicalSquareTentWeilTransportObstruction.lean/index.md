# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8574428b3b3571d303bb739f2f678b6d1a656a7d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8574428b3b3571d303bb739f2f678b6d1a656a7d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisCombination](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/basiscombination--b07b90a23cc4a542b3889025.md) | 36 | `declaration-track:b07b90a23cc4a542b3889025828864c8a0d9f0a4146ef51a1dc9a76cb5180fd5` |
| 2 | `theorem` | [basisCombination_apply_self](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/basiscombination-apply-self--5f18092109ef811f0c6119f4.md) | 40 | `result-track:5f18092109ef811f0c6119f4a9dc2095cfac5bb292c2035d5b9a6dfe6680ca19` |
| 3 | `theorem` | [basisCombination_apply_of_ne](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/basiscombination-apply-of-ne--d4e07c250fde6f6b1581484f.md) | 45 | `result-track:d4e07c250fde6f6b1581484f69b006e9d36e7775fe02e2ee1970162b3a5074a0` |
| 4 | `theorem` | [sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/sourcepolarizedform-basis-eq-arithmeticcrosscoefficient--8cab093dba655b9e2cc00183.md) | 52 | `result-track:8cab093dba655b9e2cc001834f243c10b5fa5240fd44dad50c20a7f16c87104a` |
| 5 | `structure` | [GuinandWeilCompactSupportModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/guinandweilcompactsupportmodel--9f60ef51a86410182f6794cc.md) | 79 | `declaration-track:9f60ef51a86410182f6794ccb395953922d6230885d90edfcdf8d070e199a4db` |
| 6 | `structure` | [ExactSourceBoundTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/exactsourceboundtransport--23905a58ee81689ca8bba54f.md) | 100 | `declaration-track:23905a58ee81689ca8bba54fffdd925e1113ab18736f63ff1a132f04f18655a5` |
| 7 | `theorem` | [basis_cross_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/basis-cross-eq--f01dd99220c97b8c6b69852b.md) | 119 | `result-track:f01dd99220c97b8c6b69852b5bca3537817343adf63b266bb0791c58d8b05973` |
| 8 | `theorem` | [distinct_basis_cross_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/distinct-basis-cross-zero--29cb227e3676c22055dbd92c.md) | 139 | `result-track:29cb227e3676c22055dbd92cf1327cab1f07d5d70dd7bce9f4cc293f6e7269b9` |
| 9 | `theorem` | [image_diagonal_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/image-diagonal-eq--0045d9eae64f434976209621.md) | 157 | `result-track:0045d9eae64f434976209621b20075999d6842aa471156907db5874af7dbaa94` |
| 10 | `theorem` | [image_diagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/image-diagonal-nonnegative--5fb37ae3e4aa85f92ccc87b2.md) | 170 | `result-track:5fb37ae3e4aa85f92ccc87b24ced518413398f510260b37c782cc0c275c0d5c9` |
| 11 | `theorem` | [positiveCone_preserved_on_image](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/positivecone-preserved-on-image--c7fc81a9013d0e4923475389.md) | 182 | `result-track:c7fc81a9013d0e4923475389e6cda0e0365495fda59cb5c2c72f2e42223a3f14` |
| 12 | `structure` | [NonzeroClassicalCrossWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/nonzeroclassicalcrosswitness--756b2f32bc262501a400c8f4.md) | 196 | `declaration-track:756b2f32bc262501a400c8f4110a6e97113f8fc96afd41b225647d268da4bef0` |
| 13 | `theorem` | [no_exactSourceBoundTransport_of_nonzeroCross](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/no-exactsourceboundtransport-of-nonzerocross--aedaa3e8f8f5dbf450389d48.md) | 209 | `result-track:aedaa3e8f8f5dbf450389d48f17f62768a806658fefc08407638c3514c437b6c` |
| 14 | `theorem` | [transport_or_nonzeroCross_obstruction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/declarations/transport-or-nonzerocross-obstruction--ce3ed785b9f75b91949313d0.md) | 222 | `result-track:ce3ed785b9f75b91949313d0a56dbef563120bc288345795963add802e7a6515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
