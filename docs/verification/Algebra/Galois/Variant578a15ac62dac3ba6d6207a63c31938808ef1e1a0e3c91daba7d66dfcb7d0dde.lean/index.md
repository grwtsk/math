# Verification target: GRWTSK.Algebra.Galois.Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84dfd4c47cd981412183ba77424574c428b62a16",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/index.md) · [Full source](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84dfd4c47cd981412183ba77424574c428b62a16`.

Source path: `GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Fixed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.NormalClosure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixingSubgroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois--2270fda75d5e170f6781b691.md) | 56 | `declaration-track:2270fda75d5e170f6781b691851f75142a24e68eb455bbfdc76a8e0e22692d14` |
| 2 | `theorem` | [isGalois_iff](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-iff--1bcb9c737204f3a5159e91db.md) | 63 | `result-track:1bcb9c737204f3a5159e91db4793a9eb28eb1e92ad4a17e2525926f9f70ea16d` |
| 3 | `instance` | [self](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/self--d44296417ebac76fe0efc549.md) | 76 | `declaration-track:d44296417ebac76fe0efc5496cc3b6eb53de9a7aaca95f5fca855ca477065bbb` |
| 4 | `theorem` | [integral](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/integral--64a97cba065763899e5014dc.md) | 82 | `result-track:64a97cba065763899e5014dcab6529134a744c97e2db5cb17f7252d1602f014e` |
| 5 | `theorem` | [separable](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/separable--c1b347165946cf76268c7bd7.md) | 86 | `result-track:c1b347165946cf76268c7bd7f7ffe9fe0eeb139662fa8a2d9e0c90aa3ad75bab` |
| 6 | `theorem` | [splits](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/splits--2cdfe04b25a9511bbbe6302a.md) | 90 | `result-track:2cdfe04b25a9511bbbe6302ac914d03ba79216d1f317f9d2669872e5b2aa7f7f` |
| 7 | `instance` | [of_fixed_field](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/of-fixed-field--79c0fc8ed251f7e2c03e89f2.md) | 96 | `declaration-track:79c0fc8ed251f7e2c03e89f2bebc6f893ac6410aa8cfd0c5dd32f5ef2faabae7` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank--f36b034cf5d15e3914485bfd.md) | 101 | `result-track:f36b034cf5d15e3914485bfd350861fa5b5e8ab068a08fde29c0c7ed557e23cf` |
| 9 | `theorem` | [card_aut_eq_finrank](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/card-aut-eq-finrank--5077b23bdcdb2864ab840ad8.md) | 111 | `result-track:5077b23bdcdb2864ab840ad896c1353390a6243858fc1d7f19d02ca58f4d06b2` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-tower-top-of-isgalois--deb9913178e43205922f5ccd.md) | 146 | `result-track:deb9913178e43205922f5ccd46ef36128effbc7fe23421f6eb7d0a399af485f4` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/instance--a175da6c4d0e240d4e2c0108.md) | 154 | `declaration-track:a175da6c4d0e240d4e2c0108405dfc4158890e0f249dcbebb59027498576f98f` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-iff-isgalois-bot--6406671787d86cc6c36f1993.md) | 159 | `result-track:6406671787d86cc6c36f1993a33460542d07f97b66ac27d3ab112d75b8340260` |
| 13 | `theorem` | [IsGalois.of_algEquiv](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-of-algequiv--c07230874f4ed801f8aaf143.md) | 166 | `result-track:c07230874f4ed801f8aaf143225149425594497634816155663ca6917f2f4665` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/algequiv-transfer-galois--5ffa33d232edb5a54ecc050b.md) | 171 | `result-track:5ffa33d232edb5a54ecc050b9995612f147470393887de511c1a2cd74700e236` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-iff-isgalois-top--5496a993de32ae3fbb450811.md) | 175 | `result-track:5496a993de32ae3fbb45081102197924e1ed41b18c1156437669bbc87705acc8` |
| 16 | `instance` | [isGalois_bot](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-bot--173298ca6349c48f3cc17dc2.md) | 179 | `declaration-track:173298ca6349c48f3cc17dc226894d5ae485e9fcb94af3cecf24b513a7eb4449` |
| 17 | `def` | [FixedPoints.intermediateField](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixedpoints-intermediatefield--6a98a14871c7af05f96726fe.md) | 193 | `declaration-track:6a98a14871c7af05f96726feea67b29ad188e6e599e099b578daa5524774269f` |
| 18 | `def` | [fixedField](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixedfield--2ccf573d595854e723967145.md) | 203 | `declaration-track:2ccf573d595854e723967145a5a59ca5b2ca4cdb09ac251d764df6de934b2530` |
| 19 | `theorem` | [finrank_fixedField_eq_card](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/finrank-fixedfield-eq-card--bc2b8a1da918ad4ca9bc0ea5.md) | 207 | `result-track:bc2b8a1da918ad4ca9bc0ea53c7cf837f549457c74b90afd0fc33c81f38e7338` |
| 20 | `def` | [fixingSubgroup](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixingsubgroup--fc530aadf6f6a80b2c53c0d4.md) | 213 | `declaration-track:fc530aadf6f6a80b2c53c0d47ebc162e8db89529d659cc8c150111045fb700f1` |
| 21 | `theorem` | [le_iff_le](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/le-iff-le--432d209a54e0771f3213fa70.md) | 217 | `result-track:432d209a54e0771f3213fa70b37b688e0b2f3d446d3687b3e4442bb062ca326a` |
| 22 | `def` | [fixingSubgroupEquiv](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixingsubgroupequiv--58d4d7113e3116fe5db81c34.md) | 222 | `declaration-track:58d4d7113e3116fe5db81c34cb43b7d7b49390175c443b763def6d42ba28c1e4` |
| 23 | `theorem` | [fixingSubgroup_fixedField](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixingsubgroup-fixedfield--18e077a54e482463753bfc84.md) | 230 | `result-track:18e077a54e482463753bfc8481e0cc40cc8a602cacd7b8d5e391c6a1df8e7b48` |
| 24 | `instance` | [fixedField.smul](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixedfield-smul--8b8975425dcbeaa11be8a70b.md) | 244 | `declaration-track:8b8975425dcbeaa11be8a70b120d04add71f8505c83abbfd1d83997c83ba2cad` |
| 25 | `instance` | [fixedField.algebra](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixedfield-algebra--49658b1a3f0840cdd2867dda.md) | 248 | `declaration-track:49658b1a3f0840cdd2867ddae7cba850f7fc3830b83e4e1e7a94455b64e049a6` |
| 26 | `instance` | [fixedField.isScalarTower](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixedfield-isscalartower--9a8ee7217e4fa09a59f0763d.md) | 258 | `declaration-track:9a8ee7217e4fa09a59f0763d603161cf54c3a3058006c262ef1f0e0c63037a5e` |
| 27 | `theorem` | [fixedField_fixingSubgroup](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/fixedfield-fixingsubgroup--04cbb19b633335bfda064485.md) | 266 | `result-track:04cbb19b633335bfda0644853e45c044b01668042ba650b0543df2b7cbeca535` |
| 28 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/card-fixingsubgroup-eq-finrank--6fc55ced93a8148fdaa5dc83.md) | 279 | `result-track:6fc55ced93a8148fdaa5dc83f490e2ebb1de88cb2241f9add3045cd3181f466f` |
| 29 | `def` | [intermediateFieldEquivSubgroup](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/intermediatefieldequivsubgroup--9f370c38c03a1131e1e8d60b.md) | 286 | `declaration-track:9f370c38c03a1131e1e8d60bebc95ae36ff52348cd0f2e28b6a2067c291ab602` |
| 30 | `def` | [galoisInsertionIntermediateFieldSubgroup](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/galoisinsertionintermediatefieldsubgroup--58c2fbd0a1dc87e75080202e.md) | 298 | `declaration-track:58c2fbd0a1dc87e75080202e939e7bc2b57b13c8a452ba8efd1e4131cae5f6b2` |
| 31 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/galoiscoinsertionintermediatefieldsubgroup--532ac6d86e2d6c5f5da74476.md) | 310 | `declaration-track:532ac6d86e2d6c5f5da744769153405bf67545de4784d2b1b703bc458f50edbc` |
| 32 | `theorem` | [is_separable_splitting_field](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/is-separable-splitting-field--b45b19420d566f9055687e26.md) | 331 | `result-track:b45b19420d566f9055687e266cf4d039095a3bfee48592629ac42acae3d181b5` |
| 33 | `theorem` | [of_fixedField_eq_bot](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/of-fixedfield-eq-bot--4687ae928c2a02d3abe382b9.md) | 342 | `result-track:4687ae928c2a02d3abe382b9ef88267f447f30455d6f732f70e4b2e9ff70261e` |
| 34 | `theorem` | [of_card_aut_eq_finrank](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/of-card-aut-eq-finrank--9033af523a909b0d69d003bc.md) | 348 | `result-track:9033af523a909b0d69d003bc54ee421efec81a64ef964559db47de80ecae6f65` |
| 35 | `theorem` | [of_separable_splitting_field_aux](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/of-separable-splitting-field-aux--04ebab8f0c00e5ba41a2bc64.md) | 367 | `result-track:04ebab8f0c00e5ba41a2bc645af87d3826cca32167a3048ece3fead15c147182` |
| 36 | `theorem` | [of_separable_splitting_field](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/of-separable-splitting-field--c3e732f4447b0a7986e1b78e.md) | 403 | `result-track:c3e732f4447b0a7986e1b78ec81b92cdee27e5ed7f5dc4d9c7784f0ef784ee82` |
| 37 | `theorem` | [tfae](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/tfae--ea8deaaf53683f91da727a9b.md) | 440 | `result-track:ea8deaaf53683f91da727a9b05dbcce428197eca113914f9bc309e22c3cf708c` |
| 38 | `instance` | [IsGalois.normalClosure](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/isgalois-normalclosure--1a1117487b56878283c258b9.md) | 467 | `declaration-track:1a1117487b56878283c258b968eb93af9c8a6e7c22f0e60f4de14c882ad79c3f` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean/declarations/instance--caa1beecfd228c3aabae6208.md) | 475 | `declaration-track:caa1beecfd228c3aabae6208e15279e36f1cf8a30d1a832502740753d3c5dc17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
