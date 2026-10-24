# Verification target: GRWTSK.Topology.GeneralTopology.Gluing.Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "802ab5a48fc2bafc2785400233ac230009dd09c4",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `802ab5a48fc2bafc2785400233ac230009dd09c4`.

Source path: `GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GlueData` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Opens` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/gluedata--5492e32b42084d131d2b5b8e.md) | 95 | `declaration-track:5492e32b42084d131d2b5b8ecadf6086b2af04ca47ad012d8d80759192f77fcd` |
| 2 | `theorem` | [π_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/surjective--ce7fca486065823ffb7b305d.md) | 107 | `result-track:ce7fca486065823ffb7b305d364ff553ea49a73911c76c267810aabb7c327059` |
| 3 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/isopen-iff--aae4ed3a24581103cc262971.md) | 112 | `result-track:aae4ed3a24581103cc262971112ed187d150d1b1a973c310d62f8851fc404cd3` |
| 4 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/jointly-surjective--c4b229a03aeb181c8433875a.md) | 127 | `result-track:c4b229a03aeb181c8433875a5a1ec9f1a63949b67c1ba0e7c8541b2ddddee595` |
| 5 | `def` | [Rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/rel--a452538257dee1eb619de045.md) | 135 | `declaration-track:a452538257dee1eb619de04585ff2eddf38e0af5807b6f65da49af94a949e577` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/rel-equiv--010542d093e74df024e3e98f.md) | 140 | `result-track:010542d093e74df024e3e98fcdf4edca4059f51a5bd478648b10c84140689541` |
| 7 | `theorem` | [eqvGen_of_π_eq](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/eqvgen-of-eq--31bba3e6d7a272a6b4daffd9.md) | 167 | `result-track:31bba3e6d7a272a6b4daffd9bfe94692cb2152c550bf79bde732b9742992809d` |
| 8 | `theorem` | [ι_eq_iff_rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/eq-iff-rel--f4164c9af0e467b26ebb3196.md) | 206 | `result-track:f4164c9af0e467b26ebb3196947580937bf551f390d359df790861c8abb7ea81` |
| 9 | `theorem` | [ι_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/injective--8f089668833e80267433caac.md) | 240 | `result-track:8f089668833e80267433caac0447dfb5082418caf7443cbba6474b678d3e1b3a` |
| 10 | `instance` | [ι_mono](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/mono--2dd6e3cc24a85067e85b8db8.md) | 251 | `declaration-track:2dd6e3cc24a85067e85b8db8039c71f1d1c5589526c09de37b1e8b6646c7c817` |
| 11 | `theorem` | [image_inter](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/image-inter--a3dd1e0f61b1f40e461f761b.md) | 256 | `result-track:a3dd1e0f61b1f40e461f761be108a9c8af0d9357c97750c25353c4567b71e283` |
| 12 | `theorem` | [preimage_range](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/preimage-range--29aa67cc37a8c7efa458c055.md) | 278 | `result-track:29aa67cc37a8c7efa458c0550ec58af6c4e2bf78ebc293aea7f3f87ed08492b2` |
| 13 | `theorem` | [preimage_image_eq_image](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/preimage-image-eq-image--5642b781e45e4a872d5db3e4.md) | 285 | `result-track:5642b781e45e4a872d5db3e4780d169b39228a28d3d7a2a0fe74dd5dc79f10a7` |
| 14 | `theorem` | [preimage_image_eq_image'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/preimage-image-eq-image--970b56d6fb4e575a1be60f47.md) | 300 | `result-track:970b56d6fb4e575a1be60f472451b36cf5210f337c9263168e3646d34e607f49` |
| 15 | `theorem` | [open_image_open](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/open-image-open--799727530fdaf4cf5b59ea5b.md) | 319 | `result-track:799727530fdaf4cf5b59ea5b28599de367fefbd9d72b25ed160a50b382168f7a` |
| 16 | `theorem` | [ι_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/openembedding--4bdc9f791e55b4bc4d2ce031.md) | 329 | `result-track:4bdc9f791e55b4bc4d2ce031b01dd8bb88098201a343abc37d4d578af442cd67` |
| 17 | `structure` | [MkCore](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/mkcore--9857ecc2581cfe1c07b3146f.md) | 349 | `declaration-track:9857ecc2581cfe1c07b3146fd85d036d854edb6f34b21c29240e4bf055464e03` |
| 18 | `theorem` | [MkCore.t_inv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/mkcore-t-inv--81b2b13703641a9caaca5d37.md) | 364 | `result-track:81b2b13703641a9caaca5d373900de19b9bd10243f0ae915326cf1aa485aa97a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/instance--f27080a1931d40c28ab258c5.md) | 373 | `declaration-track:f27080a1931d40c28ab258c5d33b01282ef340cd7cca008d1aa2d9e4d440075d` |
| 20 | `def` | [MkCore.t'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/mkcore-t--cc6e080a56b5ee8bc4b9db33.md) | 377 | `declaration-track:cc6e080a56b5ee8bc4b9db33b0046bf61818261a9e007879881e927747d026de` |
| 21 | `def` | [mk'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/mk--4ac1d0820cb242bba8ee10f8.md) | 395 | `declaration-track:4ac1d0820cb242bba8ee10f80f0935ada1fc70f90fe14016807c4a399346a1db` |
| 22 | `def` | [ofOpenSubsets](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/ofopensubsets--75c5906aede9ed2f34f6d395.md) | 435 | `declaration-track:75c5906aede9ed2f34f6d3951cb62d2895f746838f91b8c75fb95442ecaedfbe` |
| 23 | `def` | [fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/fromopensubsetsglue--fe96319619bb8ef78b0c7ca0.md) | 459 | `declaration-track:fe96319619bb8ef78b0c7ca0d20e47a2e8bc999916dc1cc32a7e978c9032f122` |
| 24 | `theorem` | [ι_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/fromopensubsetsglue--03b80e72b7fd4e98fa80d9c2.md) | 467 | `result-track:03b80e72b7fd4e98fa80d9c202348fea353fca1fd360561490cfe4d6848dff36` |
| 25 | `theorem` | [fromOpenSubsetsGlue_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/fromopensubsetsglue-injective--b6b0c0e88b8f1bf0701fc27c.md) | 473 | `result-track:b6b0c0e88b8f1bf0701fc27c4ea078bf0d75739820c6c6a45f68d273aaa25544` |
| 26 | `theorem` | [fromOpenSubsetsGlue_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/fromopensubsetsglue-isopenmap--e300e3775ecf13af082fa804.md) | 488 | `result-track:e300e3775ecf13af082fa804c563ea52b2160ee4fbd35a56cd50b25cbc13fbc0` |
| 27 | `theorem` | [fromOpenSubsetsGlue_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/fromopensubsetsglue-openembedding--20f9b484cf044a449f316e57.md) | 512 | `result-track:20f9b484cf044a449f316e57a11c5d4a1d6e464fdc576fd6c4098ebb4dddcb18` |
| 28 | `theorem` | [range_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/range-fromopensubsetsglue--4583dbb31395b17bb66ed719.md) | 518 | `result-track:4583dbb31395b17bb66ed7196b2a48e854eed71bb13de0ab46ab19658343c337` |
| 29 | `def` | [openCoverGlueHomeo](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/declarations/opencovergluehomeo--c2b48ce1abaa0431d0883d3e.md) | 534 | `declaration-track:c2b48ce1abaa0431d0883d3e5a9ad82fb45dcbc902bdd265b179f27d4fb0819b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
