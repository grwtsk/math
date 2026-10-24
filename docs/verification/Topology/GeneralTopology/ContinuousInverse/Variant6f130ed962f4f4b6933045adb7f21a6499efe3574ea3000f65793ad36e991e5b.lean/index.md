# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousInverse.Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbf1b77f5ae632652ef3cc0021772266176bcba8",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbf1b77f5ae632652ef3cc0021772266176bcba8`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContinuousLinearMap.HasLeftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/continuouslinearmap-hasleftinverse--3650fa3599345359a0bca3d1.md) | 95 | `declaration-track:3650fa3599345359a0bca3d10959f7cc8a927993ca894fddcdfa86036b8780a4` |
| 2 | `def` | [ContinuousLinearMap.HasRightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/continuouslinearmap-hasrightinverse--47afe6482ab1c7b1ddbdd87d.md) | 99 | `declaration-track:47afe6482ab1c7b1ddbdd87d33128547369364a933b0d1a035351ffdd0b2558b` |
| 3 | `def` | [leftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/leftinverse--c45d08df6d447fcf4082e028.md) | 109 | `declaration-track:c45d08df6d447fcf4082e02824a8dc585ea5875763ba8fcfb3e44299e49c3168` |
| 4 | `lemma` | [leftInverse_leftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/leftinverse-leftinverse--42de9157a4a90f729e17c08b.md) | 111 | `result-track:42de9157a4a90f729e17c08b4d30bc9745fffe91ed186042e53e24e2a358113c` |
| 5 | `lemma` | [injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/injective--5007b8e91eaf610b6637d4db.md) | 114 | `result-track:5007b8e91eaf610b6637d4dbb6831da55642ea2d2bc2e7048f85d5f8c824812b` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/example--9404fbaff7d84bb2437b09a7.md) | 117 | `declaration-track:9404fbaff7d84bb2437b09a7fc30cdc3b67237cf4b3f57ed1a699a659c5fa3f4` |
| 7 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/congr--4b2c0941dea6a615c9641001.md) | 120 | `result-track:4b2c0941dea6a615c96410016438e54a4d76219eec8f66be05bf1135c37a2517` |
| 8 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.LeftInverse.Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.ContinuousLinearEquiv.hasLeftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/root-grwtsk-topology-generaltopology-leftinverse-variantbdd245e682df9361--ceac20f03c917c73bfdfe73a.md) | 125 | `result-track:ceac20f03c917c73bfdfe73a0313b6545636728ea301c97b968424608d2d6275` |
| 9 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.LeftInverse.Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.ContinuousLinearEquiv.leftInverse_hasLeftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/root-grwtsk-topology-generaltopology-leftinverse-variantbdd245e682df9361--5d0ba55a3b653ad7fd812ab4.md) | 129 | `result-track:5d0ba55a3b653ad7fd812ab4ebc69383d2c01ec2091f17d0c2d13d46e2954477` |
| 10 | `lemma` | [of_isInvertible](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-isinvertible--6439352dfe30f859d1e4d488.md) | 137 | `result-track:6439352dfe30f859d1e4d48858bec2ae23156e0ededd141819b095763b31d192` |
| 11 | `lemma` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/prodmap--70ef2d198bbce6d2b6da65de.md) | 142 | `result-track:70ef2d198bbce6d2b6da65dedd2c64095affaab4cbaa79bde3ab05671752766b` |
| 12 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/comp--95920826758a3b6b773c8c06.md) | 151 | `result-track:95920826758a3b6b773c8c0640a3ce35863e0a98f79efb569d930a285379d51e` |
| 13 | `lemma` | [of_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-comp--c0acdf5009b805f681d879bf.md) | 159 | `result-track:c0acdf5009b805f681d879bf4bcc08d673326ac75933e5c66918235841ddc971` |
| 14 | `lemma` | [comp_continuousLinearEquivalence](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/comp-continuouslinearequivalence--420013afdea8ffc698537202.md) | 166 | `result-track:420013afdea8ffc6985372027d2b727b5172ab82b299145c3d1b324db8d94e95` |
| 15 | `lemma` | [continuousLinearEquivalence_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/continuouslinearequivalence-comp--1a9d43cb0b638d6ca8ec9a3b.md) | 170 | `result-track:1a9d43cb0b638d6ca8ec9a3b49474b7b92219d931ed2a2d320288efdfe1adfb5` |
| 16 | `lemma` | [inl](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/inl--3b62a4ceaad6d5903a8daeec.md) | 175 | `result-track:3b62a4ceaad6d5903a8daeeca3aae92e14247f9d0d8b809b2f87de852e5881a7` |
| 17 | `lemma` | [inr](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/inr--25e0f156759e9c4d0e82c381.md) | 181 | `result-track:25e0f156759e9c4d0e82c381a065d1a674ea9cea56b471fd451e85c52b1cd613` |
| 18 | `lemma` | [of_injective_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-injective-of-finitedimensional--c165db775e008aeaa769e217.md) | 195 | `result-track:c165db775e008aeaa769e217a996dab6a99179f1afcd0716ff47fbf62833fd65` |
| 19 | `lemma` | [closedComplemented_range](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/closedcomplemented-range--8134176ae7a154bf53cf7c95.md) | 216 | `result-track:8134176ae7a154bf53cf7c9592dd245b67da15378d23d65995a0e1afbcf5bd43` |
| 20 | `lemma` | [isClosed_range](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/isclosed-range--fe6e3ed795b32666d34ddf6d.md) | 232 | `result-track:fe6e3ed795b32666d34ddf6dcc547372cfe3c3e962f61517ad14ccaca898840a` |
| 21 | `def` | [complement](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/complement--86afc732a44c53467e8d6bf7.md) | 240 | `declaration-track:86afc732a44c53467e8d6bf73b3df9a3b63653e8c126a4c238f37d53ddf17526` |
| 22 | `lemma` | [isClosed_complement](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/isclosed-complement--1aa4a5c24921be9c441d0395.md) | 243 | `result-track:1aa4a5c24921be9c441d0395a1cf9795652d073b5071452f197d0aeb9eb46e72` |
| 23 | `lemma` | [isCompl_complement](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/iscompl-complement--74fcda059734d2581fe7de82.md) | 247 | `result-track:74fcda059734d2581fe7de823d30e1409cc2ee009c1518c0047e2d7403790c2d` |
| 24 | `lemma` | [of_injective_of_isClosed_range_of_closedComplement_range](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-injective-of-isclosed-range-of-closedcomplement-range--8f32d5513a1596493e8ed7b8.md) | 262 | `result-track:8f32d5513a1596493e8ed7b8a1bf2458882d2528f2336a378bbfde25d2b27fae` |
| 25 | `def` | [rightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/rightinverse--c5046802b80d11338e5e4974.md) | 281 | `declaration-track:c5046802b80d11338e5e4974e50e8b0cc90d8b4f9422893db89a18ad2296740e` |
| 26 | `lemma` | [rightInverse_rightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/rightinverse-rightinverse--f5c2af13276bb4843861a890.md) | 283 | `result-track:f5c2af13276bb4843861a890377dd4d272699eadffb52b0976a2d93bbcaf4732` |
| 27 | `lemma` | [surjective](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/surjective--844e0a73343f8c4c34fa190b.md) | 286 | `result-track:844e0a73343f8c4c34fa190b8d762c6ae6607ca843fb747afe425873ef6dd8f1` |
| 28 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/congr--47c9b64f7a3da5599dd0cbe9.md) | 289 | `result-track:47c9b64f7a3da5599dd0cbe9b43462a7cf0b65170d648581c2014c6133b4366c` |
| 29 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.LeftInverse.Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.ContinuousLinearEquiv.hasRightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/root-grwtsk-topology-generaltopology-leftinverse-variantbdd245e682df9361--c933a45118833a5f09a64f2c.md) | 294 | `result-track:c933a45118833a5f09a64f2c51d4c615d32c340c0f67d9605c2d6f43c5f1ef07` |
| 30 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.LeftInverse.Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.ContinuousLinearEquiv.rightInverse_hasRightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/root-grwtsk-topology-generaltopology-leftinverse-variantbdd245e682df9361--69657d06e928eb040e0f5d1e.md) | 298 | `result-track:69657d06e928eb040e0f5d1eb3af6b3824f3924e3dc7fd846e8469e08f0b9d7e` |
| 31 | `lemma` | [of_isInvertible](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-isinvertible--92c651aad0467de82e4b5869.md) | 304 | `result-track:92c651aad0467de82e4b5869391dd0f021bad2cd7160f1193e52425c0d8b9e00` |
| 32 | `lemma` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/prodmap--be2d9608af8b2d1549484212.md) | 309 | `result-track:be2d9608af8b2d1549484212f00c9b68faa6a98d8d5a2c6d23e82bed157912d8` |
| 33 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/comp--e9cd319ca5fe3ba7d26350ae.md) | 318 | `result-track:e9cd319ca5fe3ba7d26350ae976e0c52f4a1711ffb9bbe6a785321c51574d1ca` |
| 34 | `lemma` | [of_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-comp--219d3884cb86f52491abb09a.md) | 326 | `result-track:219d3884cb86f52491abb09a95e2129e93319b6e865caa4353e8d3d5b1533833` |
| 35 | `lemma` | [comp_continuousLinearEquivalence](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/comp-continuouslinearequivalence--15da1879bc45e8be4f311d17.md) | 331 | `result-track:15da1879bc45e8be4f311d1749a3c2f09cd75b1571ec11a7c68fffea16dcba6a` |
| 36 | `lemma` | [continuousLinearEquivalence_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/continuouslinearequivalence-comp--2833c2fbf50f563eefae84ad.md) | 335 | `result-track:2833c2fbf50f563eefae84ad014f8e39b3d980ee4512417e948bbaacf061ccfe` |
| 37 | `lemma` | [fst](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/fst--9b777ce4c9d8edbe15005d55.md) | 340 | `result-track:9b777ce4c9d8edbe15005d55538c44b665dce8c566cd698fe1b08fff5424ec79` |
| 38 | `lemma` | [snd](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/snd--8bd625788e518455ee00acea.md) | 346 | `result-track:8bd625788e518455ee00acea771d511e761197f01fc3d73002238b58ae70b4a4` |
| 39 | `lemma` | [of_surjective_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/declarations/of-surjective-of-finitedimensional--06680da7277324dd37e6763b.md) | 360 | `result-track:06680da7277324dd37e6763ba61816770bc82ce86a0357cecf39f76af1411a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
