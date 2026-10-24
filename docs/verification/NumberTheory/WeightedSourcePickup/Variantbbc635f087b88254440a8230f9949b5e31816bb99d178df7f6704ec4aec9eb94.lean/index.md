# Verification target: GRWTSK.NumberTheory.WeightedSourcePickup.Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e090029032b0ce8c05231f93d1229884f89758b2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e090029032b0ce8c05231f93d1229884f89758b2`.

Source path: `GRWTSK/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomPickup](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/atompickup--78878b87d6b71a06b194eda5.md) | 21 | `declaration-track:78878b87d6b71a06b194eda5d68f587c2f2b2d396816bb27a76df3ff405d2ad5` |
| 2 | `def` | [pickupWeight](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/pickupweight--50be076be9fbae482d817e2e.md) | 25 | `declaration-track:50be076be9fbae482d817e2e3c8fd738069d56fa1f6b137de56c038af5ed0e32` |
| 3 | `theorem` | [inverse_sqrt_eq_negative_half](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/inverse-sqrt-eq-negative-half--62ac4aa20f2f3011cf9a2df7.md) | 30 | `result-track:62ac4aa20f2f3011cf9a2df740f156de2f9b897bf545130aaf3f115c86219424` |
| 4 | `theorem` | [exp_reset](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/exp-reset--f33ba645f43f53ee7379cf60.md) | 34 | `result-track:f33ba645f43f53ee7379cf6022db3ebade1a90dacda2609a07f922deeb70ca08` |
| 5 | `theorem` | [exp_negative_reset](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/exp-negative-reset--e589aabd6fdf3c3ee347a2e0.md) | 39 | `result-track:e589aabd6fdf3c3ee347a2e06a17893d29041214fd5480e504089fc12ea5c954` |
| 6 | `theorem` | [exp_half](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/exp-half--097698e20c8ba20a932d1a97.md) | 44 | `result-track:097698e20c8ba20a932d1a97a87a1617084398d8663951423469f608c4550d2b` |
| 7 | `theorem` | [exp_negative_half](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/exp-negative-half--e48ee41d8d57bdb7919de0c2.md) | 51 | `result-track:e48ee41d8d57bdb7919de0c2bc1d19f331afb7f03710cc94c7cd81565bd4fea9` |
| 8 | `theorem` | [cutoff_order](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/cutoff-order--be0736310f8419b351df7ead.md) | 55 | `result-track:be0736310f8419b351df7eada1425e8b30c0da091095e9e7c67a07df8cbc7433` |
| 9 | `theorem` | [weight_low](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-low--d8ab56d2db3528b1ad11299a.md) | 60 | `result-track:d8ab56d2db3528b1ad11299a57d012a51c6ef5f76d4fe5b04faf05f19aff05f2` |
| 10 | `theorem` | [weight_middle](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-middle--ba5f4526045dfadbc458de96.md) | 67 | `result-track:ba5f4526045dfadbc458de96625bbf0f3c2e84c006caafd3e854d4b89304f4b1` |
| 11 | `theorem` | [weight_above](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-above--f0e85677fd6fe062a8d771c2.md) | 72 | `result-track:f0e85677fd6fe062a8d771c2196cc1a45fd2090b216dae29daac21431ac1660b` |
| 12 | `theorem` | [weight_reset](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-reset--908979b1e77611129fe0e8ab.md) | 78 | `result-track:908979b1e77611129fe0e8abe0a9f47c5df13373afbc185868d5436c37770d50` |
| 13 | `theorem` | [weight_upper_touch](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-upper-touch--f472c41f9098f48a25f49d56.md) | 83 | `result-track:f472c41f9098f48a25f49d56f6a2807a3dd5d3b1d01c7b5ec16e1871a6bc44a4` |
| 14 | `theorem` | [weight_lower_touch](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-lower-touch--3f6fb8cc2d806c81782a5123.md) | 95 | `result-track:3f6fb8cc2d806c81782a51230d68e22399c108409f82ef73225a4cf008cf88a0` |
| 15 | `theorem` | [weight_nonneg](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-nonneg--bf00f68a2a0bc8f535bef80a.md) | 100 | `result-track:bf00f68a2a0bc8f535bef80a1009efe1b7a50891711040174bcc862414deb7c2` |
| 16 | `theorem` | [weight_le_inverse_sqrt](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-le-inverse-sqrt--01564025aafa2f276a0a6dad.md) | 121 | `result-track:01564025aafa2f276a0a6dad9bef5406bb7831707326f5a41dbbfc79a84709c3` |
| 17 | `def` | [integerInventory](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/integerinventory--bd3f6ba3aa43891280ddc51a.md) | 138 | `declaration-track:bd3f6ba3aa43891280ddc51a8f57fa17226b752ef7bd44182bc2c77868615245` |
| 18 | `def` | [weightedRecording](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weightedrecording--e26b3607bda6a65eb165e30e.md) | 145 | `declaration-track:e26b3607bda6a65eb165e30e2dbef1de8b65fd5874c699b943aa6995549ac774` |
| 19 | `def` | [diagonalEnergy](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/diagonalenergy--9e5660789b4cf74fdd5fd824.md) | 153 | `declaration-track:9e5660789b4cf74fdd5fd8247bd4fe448fc12fbf87d038e15639ea1289ba4971` |
| 20 | `theorem` | [moebius_square_le_one](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/moebius-square-le-one--499fa00d3d742fafadc9b675.md) | 157 | `result-track:499fa00d3d742fafadc9b6754ea59cc91cd3c565731920af33ff6e34099ab553` |
| 21 | `theorem` | [weight_square_le](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/weight-square-le--1c84c527afcdf15d32968a0d.md) | 163 | `result-track:1c84c527afcdf15d32968a0d04819d99872f970ad621fddb73255a709d26b195` |
| 22 | `theorem` | [diagonal_paid](../../../../mathematics/NumberTheory/WeightedSourcePickup/Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94.lean/declarations/diagonal-paid--1ea09393a1392ace3dce23a6.md) | 176 | `result-track:1ea09393a1392ace3dce23a6dcad8935f38fac36673ef1bcf066a72959c3a138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
