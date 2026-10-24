# Verification target: GRWTSK.Algebra.GroupTheory.TilingArithmeticComparison.Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "469722554822223ecb508922a9562473daa9d008",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `469722554822223ecb508922a9562473daa9d008`.

Source path: `GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.Comparison` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Assembly.Interface` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Composition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Datum](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/datum--76b253bbc2de97ac31de9f87.md) | 48 | `declaration-track:76b253bbc2de97ac31de9f87e6d19c6d7c1470b6476f89e3bc45bfd35d4174c1` |
| 2 | `def` | [cubicalSpec](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/cubicalspec--af04b306a6a3069371ac4ede.md) | 115 | `declaration-track:af04b306a6a3069371ac4edec39178d636501458f24d05f2e79114b971604d35` |
| 3 | `def` | [cubicalCanonical](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/cubicalcanonical--59042c40c4220b44fdef1358.md) | 120 | `declaration-track:59042c40c4220b44fdef13586d349e0e6226a5f853686622f0d5af8c4d526e22` |
| 4 | `def` | [assemblyDatum](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/assemblydatum--b976bcc1ebf292d591e8946d.md) | 127 | `declaration-track:b976bcc1ebf292d591e8946d26157c67321a353ecfd9f5ebcf87ea21e841e642` |
| 5 | `def` | [assemblyCanonical](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/assemblycanonical--581ac452ad1a15e0625e6afd.md) | 135 | `declaration-track:581ac452ad1a15e0625e6afdcd1682545c58fc4cdf37bce9fbae1380acea8a1d` |
| 6 | `def` | [realizationDatum](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/realizationdatum--c3eecd202a9792b092e30b75.md) | 142 | `declaration-track:c3eecd202a9792b092e30b75235d67277a08353a74c04604029255020dcc0a5e` |
| 7 | `def` | [localizationChange](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/localizationchange--667212b4246203db28ed00f6.md) | 150 | `declaration-track:667212b4246203db28ed00f6a5b69d4be4802feb0fc8f09126f8946edc710700` |
| 8 | `def` | [etaleDatum](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/etaledatum--2c5a569a29cdd993e5e4ab27.md) | 157 | `declaration-track:2c5a569a29cdd993e5e4ab27afecefc4d05651f46eac6c2cfead407a90aa60f1` |
| 9 | `def` | [etaleCanonical](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/etalecanonical--14c70d7b9bfe21c496e357f2.md) | 171 | `declaration-track:14c70d7b9bfe21c496e357f21c61be23b69a50947b3b04af79d6b516e66d8237` |
| 10 | `def` | [cubicalCertified](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/cubicalcertified--6fe35089a533a78e5419cb02.md) | 184 | `declaration-track:6fe35089a533a78e5419cb02240dcd75cc5041fce60d2b81effaa250c3a45a63` |
| 11 | `def` | [assemblyCertified](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/assemblycertified--31d4ee3c749b50995a0d6f97.md) | 198 | `declaration-track:31d4ee3c749b50995a0d6f977c42a6795d5a300cb28cf40af1fce871209684a7` |
| 12 | `def` | [realizationCertified](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/realizationcertified--74b72fab391559ac4c0c4be2.md) | 205 | `declaration-track:74b72fab391559ac4c0c4be23432ee1ab2436c7b26f57d11a04041bc2c5c0e35` |
| 13 | `def` | [etaleCertified](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/etalecertified--769d8b712ef6d9c38e54254f.md) | 212 | `declaration-track:769d8b712ef6d9c38e54254fe41a81e3efa91929577f74c155561371ed9bbbfd` |
| 14 | `def` | [integralComposite](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/integralcomposite--1f402ebc9cda646d8f860c49.md) | 219 | `declaration-track:1f402ebc9cda646d8f860c49950450d746cfb391c7bee13901da3d70226bbbf5` |
| 15 | `def` | [composite](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite--331d08c79465890b934fb7e7.md) | 231 | `declaration-track:331d08c79465890b934fb7e76bf6f665208654319c003b6488fb92106b9a8e1b` |
| 16 | `theorem` | [composite_apply](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-apply--e11bdbdf2a5e92f7fef80df6.md) | 238 | `result-track:e11bdbdf2a5e92f7fef80df66869fd7b8eeb1c0a1ab7cbc822551e7ec68e384c` |
| 17 | `theorem` | [composite_assumptions](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-assumptions--901c55df84a18c30360d6a9f.md) | 248 | `result-track:901c55df84a18c30360d6a9f43f45da3c83493f640504a2cb01a44888e479360` |
| 18 | `theorem` | [composite_coefficientSource](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-coefficientsource--82a62f49b5f2b70f069e3971.md) | 256 | `result-track:82a62f49b5f2b70f069e397107bc5c7e3f45a3207e86a59443f1d19646ba86bc` |
| 19 | `theorem` | [composite_coefficientTarget](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-coefficienttarget--e130f54ffd1e03d77f4c81f6.md) | 262 | `result-track:e130f54ffd1e03d77f4c81f639320d37f39752728da18a0a3856dfb140d31694` |
| 20 | `theorem` | [composite_scope](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-scope--9e91a70bb35a8d7e20d5993c.md) | 267 | `result-track:9e91a70bb35a8d7e20d5993cab39cfa1f091c1b8c8bcb7efec0beb11d18c21d4` |
| 21 | `theorem` | [composite_scope_ne_framework](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-scope-ne-framework--c7475155d7ae64d0354dbe82.md) | 279 | `result-track:c7475155d7ae64d0354dbe82018d82c9f337ba5ef05def208b5eb6bdfe6af231` |
| 22 | `def` | [representedComposite](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/representedcomposite--c4cb6b5b94199ff8efe6193d.md) | 294 | `declaration-track:c4cb6b5b94199ff8efe6193d34230ea9c25b95cd50bbea0e69535d7395252b9d` |
| 23 | `theorem` | [representedComposite_apply](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/representedcomposite-apply--68e6f521ed01ebaacc7648d4.md) | 306 | `result-track:68e6f521ed01ebaacc7648d41bf451c0f34bdd6565d803a31628178b83b1d930` |
| 24 | `def` | [unitRepresentation](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/unitrepresentation--2814a844b27ea0d4b201bbf1.md) | 324 | `declaration-track:2814a844b27ea0d4b201bbf139399decdd923aea6541fea04fb987ee0397175b` |
| 25 | `def` | [unitGroupRingMap](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/unitgroupringmap--e354829aaee6d0f356faa85a.md) | 328 | `declaration-track:e354829aaee6d0f356faa85ac3f6891aeaee09f0be99808e684e3ef6697bf829` |
| 26 | `def` | [representation](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/representation--e30fa1e8d6be059e9b79cd4e.md) | 333 | `declaration-track:e30fa1e8d6be059e9b79cd4e5354af78c6e8833fcc6c5a2af3e3ef8ace0f3cdd` |
| 27 | `def` | [localization](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/localization--51f133c626287450f104d6ba.md) | 346 | `declaration-track:51f133c626287450f104d6bae8411aad45549097fe0b9b13d40a6d1fbb8a4499` |
| 28 | `def` | [datum](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/datum--53b9f85ae43f9af3fe5234f6.md) | 354 | `declaration-track:53b9f85ae43f9af3fe5234f69810047cf7bd3af0b00ab635c7d2808c37a675bc` |
| 29 | `theorem` | [assembly_isomorphismClaim](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/assembly-isomorphismclaim--8369446bae9f244fda673244.md) | 391 | `result-track:8369446bae9f244fda6732449d8db322f5eb19e290c246959e5e38e67369f646` |
| 30 | `theorem` | [composite_assumptions_iff](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/composite-assumptions-iff--5caad7c6cf2464d402b2445a.md) | 398 | `result-track:5caad7c6cf2464d402b2445a78cd3280189032446a39c11a0369b672e5076151` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/example--12b280d73c1538d4c351e4e9.md) | 412 | `declaration-track:12b280d73c1538d4c351e4e914da81356bfbbd55426261cc78e9b3381ffca16f` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/example--691342fb8b25df9aa4ca1d89.md) | 418 | `declaration-track:691342fb8b25df9aa4ca1d89c6ae7afce2c49d6dd309f57b19717523a8cc11f7` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/example--67be3995d01e66f4c43ebd69.md) | 424 | `declaration-track:67be3995d01e66f4c43ebd6956b423284dd2020d700c0848403b007f64467f60` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/example--6cd2bbcba819ac19f0fc529f.md) | 436 | `declaration-track:6cd2bbcba819ac19f0fc529f5b0b1a4e874a9f93e59080d606c205a44b9077d8` |
| 35 | `def` | [representationFor](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/representationfor--5e34edd8e499de809970a3bf.md) | 442 | `declaration-track:5e34edd8e499de809970a3bf251c32f3a276b469f145de0b4e32e14de2309b1e` |
| 36 | `def` | [represented](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/represented--5a0b16b906c84f5cfd5ab801.md) | 446 | `declaration-track:5a0b16b906c84f5cfd5ab80145ba0d0b5c03b94604bfa85ff7c3214a30972021` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/TilingArithmeticComparison/Variant440fc2cb5fdaafcc41fd4968e1997af6912ecc5b3c4ee200d7907e51784056ca.lean/declarations/example--0ed3c6a7e2768a9ec8baf31c.md) | 452 | `declaration-track:0ed3c6a7e2768a9ec8baf31c5659f4a1a395b7e11754aaa8b9a20ba43f691d90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
