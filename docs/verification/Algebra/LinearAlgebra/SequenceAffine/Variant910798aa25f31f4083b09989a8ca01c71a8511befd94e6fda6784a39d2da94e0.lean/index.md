# Verification target: GRWTSK.Algebra.LinearAlgebra.SequenceAffine.Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a0600b21029cae49c7b6f5785466efa9d2ec712",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a0600b21029cae49c7b6f5785466efa9d2ec712`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineTransition](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/affinetransition--a8d4f4a038a7b77e84836aa2.md) | 28 | `declaration-track:a8d4f4a038a7b77e84836aa219978b04abc4a8bba289cc88e2c37767e960f63c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/instance--0414298925258867b65227da.md) | 39 | `declaration-track:0414298925258867b65227daac4b0bc1ef2a5d28609c6e51fa0bbbd03e07e47b` |
| 3 | `theorem` | [apply_def](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/apply-def--3884f2299a62a56c525ed68c.md) | 43 | `result-track:3884f2299a62a56c525ed68c63eeff1bd7209996f80c6c7efbb35f7915fe21dd` |
| 4 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/id--68b8d587692654a4ad02dcd0.md) | 47 | `declaration-track:68b8d587692654a4ad02dcd0b015a7878a6f731fef4390f63960f07f1cd6b5de` |
| 5 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/comp--f0e18427907af0de013262cd.md) | 52 | `declaration-track:f0e18427907af0de013262cd105c943160078bace7f0cf418388387816311bea` |
| 6 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/comp-apply--1db5d40e672f936e079a6b73.md) | 59 | `result-track:1db5d40e672f936e079a6b7307cc0e58a7db9bc101f326808e1834b2cb10a8aa` |
| 7 | `theorem` | [id_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/id-apply--f394a09e04dd5b869bdef8bd.md) | 66 | `result-track:f394a09e04dd5b869bdef8bdeeb9bb788fd2324ecdce3707f47c48b49d204a1c` |
| 8 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/id-comp--f082a1d846704680764d21a8.md) | 71 | `result-track:f082a1d846704680764d21a88a98f4ccfaf26fd17fb68a5b9b82614e6116100e` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/comp-id--0bf1ff0d38e5cfd3bcf99ecf.md) | 79 | `result-track:0bf1ff0d38e5cfd3bcf99ecf538c1a9d366b53e137a9dad8d5770301e3e63323` |
| 10 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/comp-assoc--b9fd995e864dda22dc1fcc81.md) | 87 | `result-track:b9fd995e864dda22dc1fcc812f8e516e255f95949a21cb4f071b3be02568f638` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/instance--263e45438d044bd0b133df19.md) | 96 | `declaration-track:263e45438d044bd0b133df19a465a80fda873a3443db6ce39a87ffe500c6d3b4` |
| 12 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/one-apply--1302214f80663030e1a10e30.md) | 104 | `result-track:1302214f80663030e1a10e30a847843c8be548a84d54c62f1ad6c9273313cd41` |
| 13 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/mul-apply--32a59d6b5c69dda57d89bf73.md) | 110 | `result-track:32a59d6b5c69dda57d89bf73b20bce301ec76d6a5bc319ac5da07b61a044c5d7` |
| 14 | `def` | [replay](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/replay--a2cdc0f809dd7f6c7e9e30e3.md) | 118 | `declaration-track:a2cdc0f809dd7f6c7e9e30e36a1a710a988c857d066dc852cc3f9f4265708760` |
| 15 | `def` | [segment](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/segment--e705716499f1c5c935ca3a7f.md) | 123 | `declaration-track:e705716499f1c5c935ca3a7ff84242cef7de908c4668a9d88c1b5c8cbc2baf43` |
| 16 | `theorem` | [segment_nil](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/segment-nil--d1f19cab71b2ad1f19d6663f.md) | 128 | `result-track:d1f19cab71b2ad1f19d6663f86a95262bd2319c0732399edce678caf92da892d` |
| 17 | `theorem` | [segment_cons](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/segment-cons--4d039d2ab4fef132ca863698.md) | 132 | `result-track:4d039d2ab4fef132ca863698b80808c8f2ab4fd940cb7e207a595933230376ca` |
| 18 | `theorem` | [segment_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/segment-apply--b27d7ddc2dc9dd07dfbb64df.md) | 140 | `result-track:b27d7ddc2dc9dd07dfbb64df315706aaeb20ded899d4afa5cdae2baa45448072` |
| 19 | `theorem` | [segment_append](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/segment-append--2c931794663e3d5e9ffb0088.md) | 153 | `result-track:2c931794663e3d5e9ffb008876e98c99af030f62db60b2eff611c8e9830528c9` |
| 20 | `structure` | [ExactSequenceTransitionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/exactsequencetransitioncertificate--d3f11ceda68bf514f4d4085b.md) | 164 | `declaration-track:d3f11ceda68bf514f4d4085b4e11effcb57d172b1c4d97ac4bc340eac0daf2ca` |
| 21 | `structure` | [ApproxSequenceTransitionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant910798aa25f31f4083b09989a8ca01c71a8511befd94e6fda6784a39d2da94e0.lean/declarations/approxsequencetransitioncertificate--52611e8595185cfeea802447.md) | 180 | `declaration-track:52611e8595185cfeea802447bbd408f352e12867e37d9715ebbc65315abf036a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
