# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5907760f81953770ab56bc343f8a8dfecfda1cc5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5907760f81953770ab56bc343f8a8dfecfda1cc5`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/powmonoidhom--6552790dac5d4d0ad82ed61f.md) | 42 | `declaration-track:6552790dac5d4d0ad82ed61fdb9a2fc2375ceef3d4170ee54bdd23cfa085af0e` |
| 2 | `def` | [zpowGroupHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/zpowgrouphom--be0f0f658ffe5988e59656ed.md) | 57 | `declaration-track:be0f0f658ffe5988e59656ed10e46cfbb11d5fe0c1ac227ed52bc25c3be1b746` |
| 3 | `def` | [invMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/invmonoidhom--90fabb7741c430186b238f77.md) | 65 | `declaration-track:90fabb7741c430186b238f77caa7551130fd1221156ad62a346a082219d14e43` |
| 4 | `theorem` | [coe_invMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/coe-invmonoidhom--378bff521dcb058e54bd9c35.md) | 71 | `result-track:378bff521dcb058e54bd9c35b6be37f27d7637f75c7dfb3c072a16c1efc00584` |
| 5 | `theorem` | [invMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/invmonoidhom-apply--a42c817fd509bbadc14251cd.md) | 74 | `result-track:a42c817fd509bbadc14251cd788cad80d78e8c4b369ba8d43422f9c205c03eaf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/instance--32a9c387ec60fcba57ea1f94.md) | 84 | `declaration-track:32a9c387ec60fcba57ea1f94965fc16a473241718255823ab2cba10342a132f1` |
| 7 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/mul-apply--98f770e4284520d09ead3e5f.md) | 92 | `result-track:98f770e4284520d09ead3e5fa566c65a07bf06d783c07227c10b9ceeb1265161` |
| 8 | `theorem` | [mul_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/mul-comp--f85205be432960f3d311b240.md) | 96 | `result-track:f85205be432960f3d311b240ccb5c9f1019d1aa3cb278caf61caa2af9f8c909e` |
| 9 | `theorem` | [comp_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/comp-mul--209dccddfc3d99e93b71395b.md) | 100 | `result-track:209dccddfc3d99e93b71395bea237e4c5c22d57af1197c85e6efe846bc1e8343` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.PowMonoidHom.Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.injective_iff_map_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/root-grwtsk-algebra-grouptheory-powmonoidhom-varianteaa75b830586c7edffde--3a6b7f0436081daccd8ec66f.md) | 117 | `result-track:3a6b7f0436081daccd8ec66f8bee13adec79c0f3f0a96f5c6c67a408dee2cd82` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.PowMonoidHom.Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.injective_iff_map_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/root-grwtsk-algebra-grouptheory-powmonoidhom-varianteaa75b830586c7edffde--c1c1d7e54b8fda7fe3700a0e.md) | 130 | `result-track:c1c1d7e54b8fda7fe3700a0ebf1c54c54eb3a4c850c85aa21b0a7072852f64fe` |
| 12 | `def` | [ofMapMulInv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/ofmapmulinv--b4a5c0f9028a381fd0cc9b72.md) | 143 | `declaration-track:b4a5c0f9028a381fd0cc9b7279be22715ddb33ed01eb1d9c3a070b5df896c17e` |
| 13 | `theorem` | [coe_of_map_mul_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/coe-of-map-mul-inv--b9deb4bf0c15e97d5ee21c0f.md) | 154 | `result-track:b9deb4bf0c15e97d5ee21c0f1348e731ef28b57754e9fec0e9436dc1dda63657` |
| 14 | `def` | [ofMapDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/ofmapdiv--142b88addefc887703fc31dd.md) | 160 | `declaration-track:142b88addefc887703fc31ddea0f54e7c42c96daaf153ff30417a0cb7bff4dce` |
| 15 | `theorem` | [coe_of_map_div](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/coe-of-map-div--72d4c63b7265129424962b89.md) | 164 | `result-track:72d4c63b7265129424962b897034cdcc240da18c7a01d36aa47e72c764376bef` |
| 16 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/mul--017c90938a0d44c9ed4ddcd1.md) | 175 | `declaration-track:017c90938a0d44c9ed4ddcd17132e97663d8b06ca602adda33ee383ac81ba03e` |
| 17 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/mul-apply--d788d39a77e617daef3eefb5.md) | 186 | `result-track:d788d39a77e617daef3eefb5cee8c28ce15a0cdceac2488f6fd1c44902c24b54` |
| 18 | `lemma` | [mul_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/mul-comp--d7a8b812410678033ba565c8.md) | 189 | `result-track:d7a8b812410678033ba565c82ecdfbb90cdee5f6c66a96c771c15815dab0fc27` |
| 19 | `lemma` | [comp_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/comp-mul--a00c746b0a40b9587e3af8d8.md) | 193 | `result-track:a00c746b0a40b9587e3af8d84f20ecf1ccdda36bbcd13c9a5237cd2fa096df63` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/instance--43c840c05ab3b6e96833ae19.md) | 206 | `declaration-track:43c840c05ab3b6e96833ae1905ba4bd0b8646aed3d39c94f1407ea83fcc23f29` |
| 21 | `lemma` | [inv_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/inv-apply--acf163bd766a03b3c1742925.md) | 209 | `result-track:acf163bd766a03b3c17429258a530a78fd038aeb862f41ab6ab5bc00e1f27868` |
| 22 | `theorem` | [inv_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/inv-comp--7d7f5d6e10ec790353a96b45.md) | 212 | `result-track:7d7f5d6e10ec790353a96b4504d75345f93bff23bf348c502a9b3c6e70d566e7` |
| 23 | `theorem` | [comp_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/comp-inv--1cd0bac2b9ab66fce5d7f4fa.md) | 215 | `result-track:1cd0bac2b9ab66fce5d7f4fa8aa4cdc3f7773d89e5eed37c7e4e89f1b3ec3b75` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/instance--b8f2c801a473bc09e68b4685.md) | 223 | `declaration-track:b8f2c801a473bc09e68b46856824ecf5979af7ca4c292862cef20bee7750b655` |
| 25 | `lemma` | [div_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/div-apply--f5253479a9b828507edfe033.md) | 227 | `result-track:f5253479a9b828507edfe0336d8af175de65a84a2ff4756803c859c0cc49ffae` |
| 26 | `lemma` | [div_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/div-comp--54ee36901cebcc4114aa2161.md) | 230 | `result-track:54ee36901cebcc4114aa216152b3362aaeff529cdbfa1434c62e01825b37558f` |
| 27 | `lemma` | [comp_div](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/comp-div--4115bc4dd34900d2d4ed594c.md) | 233 | `result-track:4115bc4dd34900d2d4ed594c33bbedb909fc5ae2a61cdb47e624ba6bfbe1b094` |
| 28 | `def` | [commGroupOfInjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/commgroupofinjective--743a02ec05d952a9d1f24d8d.md) | 239 | `declaration-track:743a02ec05d952a9d1f24d8d4ac3ff9b1cd3681fa06deb0693fd62bce610acb1` |
| 29 | `def` | [commGroupOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/declarations/commgroupofsurjective--e8fc0890e7febcff9bbc82c7.md) | 244 | `declaration-track:e8fc0890e7febcff9bbc82c7822a955052029f51ef4477e05484748bf3978b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
