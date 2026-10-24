# Verification target: GRWTSK.Algebra.LinearAlgebra.Associator.Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0472c52193d147031935af563a46b44aea34824",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0472c52193d147031935af563a46b44aea34824`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lid--def8d7c5d5f02758600a27d2.md) | 39 | `declaration-track:def8d7c5d5f02758600a27d2b1b0717164f2fd2c840a33178088c54367a3ac53` |
| 2 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lid-tmul--355f9ffb043703a1076dc364.md) | 46 | `result-track:355f9ffb043703a1076dc364f523ca3c02dd71481ef0762852b695d966346786` |
| 3 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lid-symm-apply--8f0dd62fd990735dfaff9688.md) | 50 | `result-track:8f0dd62fd990735dfaff9688c74031b0edd2dbfae47f1de794bfef996541565a` |
| 4 | `lemma` | [includeRight_lid](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/includeright-lid--94452417cb75cc4e57032a12.md) | 53 | `result-track:94452417cb75cc4e57032a12e5882847da6cd9d555316d724590abc72cb38203` |
| 5 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/rid--8494edcaa5f0a10b68d31103.md) | 67 | `declaration-track:8494edcaa5f0a10b68d31103ff3faca057a95149091a07b0e7751694c1330b24` |
| 6 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/rid-tmul--412251e805dcc65b4de0f221.md) | 73 | `result-track:412251e805dcc65b4de0f221b2c8ff0735b7a9724e4ebe262a8f173db5754bcb` |
| 7 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/rid-symm-apply--9fa187b0cf41052c5261b033.md) | 77 | `result-track:9fa187b0cf41052c5261b033d1cb908faa2300db28c6d533eafc64237ea31fdf` |
| 8 | `theorem` | [lid_eq_rid](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lid-eq-rid--f4f6f3dc0928a51f98300085.md) | 81 | `result-track:f4f6f3dc0928a51f983000853ad1c82c354320e25b0827b4e7136cff8a1020b0` |
| 9 | `def` | [lidOfCompatibleSMul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lidofcompatiblesmul--325adee20fe6a3f8838181a3.md) | 92 | `declaration-track:325adee20fe6a3f8838181a3df229739f3e76c0b59554c5f4bde73ec0b7638c0` |
| 10 | `theorem` | [lidOfCompatibleSMul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lidofcompatiblesmul-tmul--4b1a3be0358e4d05c307369e.md) | 95 | `result-track:4b1a3be0358e4d05c307369ed013378f36a9e792d82ec5d5966c1416f2388679` |
| 11 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/assoc--09c5345b8278afbb45f8176b.md) | 106 | `declaration-track:09c5345b8278afbb45f8176bcda1e57d152b68eeebdb2d78327a66739eda9263` |
| 12 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/assoc-tmul--e67f344b14193046ebd4cb72.md) | 120 | `result-track:e67f344b14193046ebd4cb726d4bc258d4878bbbb84b527927a281c5bd5cc3a8` |
| 13 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/assoc-symm-tmul--c128a2b04b11e42255a60571.md) | 125 | `result-track:c128a2b04b11e42255a6057131aef18c434242ec8c29f97830bc82fc481c4336` |
| 14 | `lemma` | [map_map_comp_assoc_eq](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/map-map-comp-assoc-eq--f6caabbc0b4ce4ba63351cd4.md) | 132 | `result-track:f6caabbc0b4ce4ba63351cd4761cc2e664509917808e627720945b9d8a5ba50d` |
| 15 | `lemma` | [map_map_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/map-map-assoc--5243d4348dd43149e361cbcc.md) | 137 | `result-track:5243d4348dd43149e361cbccf6526002178efe449e80c670c0a88c2d47ac0abf` |
| 16 | `lemma` | [map_map_comp_assoc_symm_eq](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/map-map-comp-assoc-symm-eq--4ccd1b84efa0ff788b5fbc97.md) | 145 | `result-track:4ccd1b84efa0ff788b5fbc97068b71cd94a586199c9e4a42d7b8564eb235291c` |
| 17 | `lemma` | [map_map_assoc_symm](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/map-map-assoc-symm--415597138c14dd4fc6d31507.md) | 150 | `result-track:415597138c14dd4fc6d3150773ceb53707deeb59e3aa4facec869f687eec6777` |
| 18 | `def` | [leftComm](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/leftcomm--d9c27bf7bd61013a52dd57f8.md) | 165 | `declaration-track:d9c27bf7bd61013a52dd57f815192d28343091adb771054b01b59ee630f0f055` |
| 19 | `theorem` | [leftComm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/leftcomm-tmul--020ca82627bbaf4ff2251131.md) | 174 | `result-track:020ca82627bbaf4ff2251131af5ab2c5b51bb16e3fab43bb631ebeb784b9a296` |
| 20 | `theorem` | [leftComm_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/leftcomm-symm-tmul--3cc05db44766c86ef1213720.md) | 178 | `result-track:3cc05db44766c86ef1213720d273fd29e8f5563491dfd97246b8cb1ad09db526` |
| 21 | `def` | [tensorTensorTensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorcomm--f7e9fc7bf2d5ba785482c0ab.md) | 194 | `declaration-track:f7e9fc7bf2d5ba785482c0abfaab9606b4e3f6e66a7fe9775d2f69b6e979f143` |
| 22 | `theorem` | [tensorTensorTensorComm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorcomm-tmul--3c546a4c9481f24782798010.md) | 203 | `result-track:3c546a4c9481f24782798010c25fe1dce2046127cf8665864742d17d0abeecb4` |
| 23 | `theorem` | [tensorTensorTensorComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorcomm-symm--4355e6f59c0301876fb2c6d9.md) | 208 | `result-track:4355e6f59c0301876fb2c6d917bc029ba0faa42648ee673b705bc3e65c31b855` |
| 24 | `theorem` | [tensorTensorTensorComm_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorcomm-comp-map--169f1b7a0557d0828badf880.md) | 212 | `result-track:169f1b7a0557d0828badf8808a11bc1200497f378c2e74748eef36ee62928264` |
| 25 | `def` | [tensorTensorTensorAssoc](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorassoc--62095959679a798390e38911.md) | 229 | `declaration-track:62095959679a798390e38911a3992a0769a0b1fa0451be2edbc426e6431973fa` |
| 26 | `theorem` | [tensorTensorTensorAssoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorassoc-tmul--bf053938ef1a6230832c6cd9.md) | 236 | `result-track:bf053938ef1a6230832c6cd9dea9ceeda416447085bfcfc68c62eeea540c3540` |
| 27 | `theorem` | [tensorTensorTensorAssoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/tensortensortensorassoc-symm-tmul--75b85027f86c122c23c0543d.md) | 241 | `result-track:75b85027f86c122c23c0543d700edd64bd15d693efb3733744fd07c412b534e1` |
| 28 | `theorem` | [rTensor_tensor](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/rtensor-tensor--ec62281ce775cfb3de98c23e.md) | 259 | `result-track:ec62281ce775cfb3de98c23e9360046ac783d7b78fd7d21bc1f1b5fdd2c55e40` |
| 29 | `theorem` | [lid_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Associator/Variant74251204cc07bf07c1a338cffe8f97b866bbeefdeaae4379143b1a70a15aa9e2.lean/declarations/lid-comp-rtensor--9a0c11da5875a366e037e72c.md) | 265 | `result-track:9a0c11da5875a366e037e72c2cc33e090723af8bc4edd5bdbd6c05328c76cb4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
