# Verification target: GRWTSK.Algebra.GroupTheory.OfStabilizer.Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135b74e30ed958a1acb5a0da8e61741c3407a74b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135b74e30ed958a1acb5a0da8e61741c3407a74b`.

Source path: `GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Embedding` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Embedding` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofStabilizer](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer--eec9b1c9735d58eee30906d6.md) | 62 | `declaration-track:eec9b1c9735d58eee30906d67041b3c51cc54a576c2b20bcfabdea0f8423a1f4` |
| 2 | `theorem` | [ofStabilizer_carrier](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-carrier--e1f3738a26a737efc5b6e803.md) | 73 | `result-track:e1f3738a26a737efc5b6e803f86a2c2369e3d29c60732be002e9121b941b1630` |
| 3 | `theorem` | [mem_ofStabilizer_iff](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/mem-ofstabilizer-iff--c1f9dffee5609d6d48e32bcc.md) | 77 | `result-track:c1f9dffee5609d6d48e32bccac9c8041066242b947c9a5115a0a3131451032f7` |
| 4 | `theorem` | [neq_of_mem_ofStabilizer](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/neq-of-mem-ofstabilizer--fdc7d2ffa509d8570f7d187e.md) | 81 | `result-track:fdc7d2ffa509d8570f7d187ef6bedf6512417bf53fa4dfaf294f797fdfe58372` |
| 5 | `lemma` | [Enat_card_ofStabilizer_eq_add_one](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/enat-card-ofstabilizer-eq-add-one--91a49564536cb19d37c3e42a.md) | 85 | `result-track:91a49564536cb19d37c3e42a0471fcfbb068cd08a200ad04f87a5540ff50f38a` |
| 6 | `lemma` | [nat_card_ofStabilizer_eq](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/nat-card-ofstabilizer-eq--ffec24aaa61178bd97da1093.md) | 93 | `result-track:ffec24aaa61178bd97da10937d8c5af18b2aa1aa5f860d4b802f16dbb06e2f67` |
| 7 | `def` | [_root_.SubAddAction.ofStabilizer.conjMap](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/root-subaddaction-ofstabilizer-conjmap--b20155aaa2117eb1cd26a2cc.md) | 105 | `declaration-track:b20155aaa2117eb1cd26a2ccaad66960db110add67e4d5b09673a6af62f1c629` |
| 8 | `def` | [ofStabilizer.conjMap](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-conjmap--48c22edd95eebe50e7689102.md) | 117 | `declaration-track:48c22edd95eebe50e7689102ad9728c79fac680b3be58ef8b514dd964e12cbfe` |
| 9 | `theorem` | [ofStabilizer.conjMap_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-conjmap-apply--12dd8cec29cbb95f94df85a0.md) | 127 | `result-track:12dd8cec29cbb95f94df85a0fa9bece718461f25dfae94be581d9ba3ea736b7c` |
| 10 | `theorem` | [_root_.AddAction.stabilizerEquivStabilizer_compTriple](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/root-addaction-stabilizerequivstabilizer-comptriple--2987e519d329c10d2cce0b61.md) | 130 | `result-track:2987e519d329c10d2cce0b61fc343f9e3562fa15eeb57cd63d65c17644cdb7bc` |
| 11 | `theorem` | [_root_.MulAction.stabilizerEquivStabilizer_compTriple](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/root-mulaction-stabilizerequivstabilizer-comptriple--103516374178849cea9c2c99.md) | 141 | `result-track:103516374178849cea9c2c99c6f37660cd6f0247d8134c96b86f3c83e4124278` |
| 12 | `theorem` | [ofStabilizer.conjMap_comp_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-conjmap-comp-apply--7bfee54ba0f033beaf4f076d.md) | 150 | `result-track:7bfee54ba0f033beaf4f076d8103b268e6e2dd3b16ac1fa0d35aa694a28ce345` |
| 13 | `theorem` | [ofStabilizer.conjMap_comp_inv_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-conjmap-comp-inv-apply--2c8d41e3ccf6d90ea66e453c.md) | 155 | `result-track:2c8d41e3ccf6d90ea66e453c859cad87cb5f887e9d4d94982dd40ebb1a271929` |
| 14 | `theorem` | [ofStabilizer.inv_conjMap_comp_apply](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-inv-conjmap-comp-apply--b0236206398b73bffa047647.md) | 160 | `result-track:b0236206398b73bffa047647420435bffbf33c3895e933555b626198c2133060` |
| 15 | `theorem` | [ofStabilizer.conjMap_comp](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-conjmap-comp--4ed5b516222abb10b7ba5656.md) | 165 | `result-track:4ed5b516222abb10b7ba565611b9ed577d6334fba0b57d8bd47f70ec0604f5d6` |
| 16 | `theorem` | [ofStabilizer.conjMap_bijective](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-conjmap-bijective--e36ec0b4f927eb38711b7635.md) | 171 | `result-track:e36ec0b4f927eb38711b7635fe5b368fe1a0892e5a5b2351dff1eca70cfcf792` |
| 17 | `def` | [ofStabilizer.snoc](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-snoc--9f6d01b036a589bf9617c6a2.md) | 183 | `declaration-track:9f6d01b036a589bf9617c6a2edfbb8808a3bb8e2ffc3dbb0a681ef96c48f2977` |
| 18 | `theorem` | [ofStabilizer.snoc_castSucc](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-snoc-castsucc--c898e177613df7c7199ed0df.md) | 190 | `result-track:c898e177613df7c7199ed0dfcf3453e9c3cd0d1e284a22c22f2bedb86f7c1a47` |
| 19 | `theorem` | [ofStabilizer.snoc_last](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/ofstabilizer-snoc-last--f6e0b08bbc87209b9bf746e7.md) | 195 | `result-track:f6e0b08bbc87209b9bf746e75a94c3d5d5b190419ad947778e57ad19b14ded6b` |
| 20 | `lemma` | [exists_smul_of_last_eq](../../../../../mathematics/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/declarations/exists-smul-of-last-eq--77114227720c3d1a35484056.md) | 201 | `result-track:77114227720c3d1a354840569a96fcbbc8f8e1eff4fe297b4f73240702879613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
