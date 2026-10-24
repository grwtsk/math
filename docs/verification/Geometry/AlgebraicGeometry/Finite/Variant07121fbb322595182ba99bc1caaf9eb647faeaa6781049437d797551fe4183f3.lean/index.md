# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Finite.Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e431600ee8c828684aa0e597c811b5d9f39ece48",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e431600ee8c828684aa0e597c811b5d9f39ece48`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean.json)

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
| 1 | `class` | [IsFinite](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/isfinite--f910c020d9c0b246478428a2.md) | 40 | `declaration-track:f910c020d9c0b246478428a2722883d54898c14079eb6e6866a98cc27bc0cd72` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--e8c2a83a122675a9d92e73dd.md) | 48 | `declaration-track:e8c2a83a122675a9d92e73dd657eee40bfd343aa0aaaf401e5049e7e9300b3cd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--2a3d0f920b4134f269e0b83a.md) | 56 | `declaration-track:2a3d0f920b4134f269e0b83af7fc3a2723a631aa39d990dc2a1ee789aefe9bee` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--d044fbfc9030281e9b6c7dd2.md) | 61 | `declaration-track:d044fbfc9030281e9b6c7dd24a56f299731f54c536489f8a880e188485729cf0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--458c86bc9a91eb06b606ef56.md) | 66 | `declaration-track:458c86bc9a91eb06b606ef564e56945ed24dabb3d7dc845c0a81fdf8db1cef59` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--09350e8452f9b2c6b247c553.md) | 70 | `declaration-track:09350e8452f9b2c6b247c55312f98ebaaddc7078380367582aa2a4b89212f30b` |
| 7 | `lemma` | [SpecMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/specmap-iff--f147afd645a616b14e7e1c17.md) | 74 | `result-track:f147afd645a616b14e7e1c178e586fb2151fd2d934860d4e0039c573bca82241` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--066a2a41be76241ea6dac298.md) | 82 | `declaration-track:066a2a41be76241ea6dac298f0895b9ec2a9fb58598eb2b89056bed5b0e4bd80` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--d54e70ea66eb44c5fee265ad.md) | 84 | `declaration-track:d54e70ea66eb44c5fee265ad16c1fe269a63334f487a07cfad9e9393e02cb1b2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--ebcd065da5b7064ef0e2d953.md) | 88 | `declaration-track:ebcd065da5b7064ef0e2d953e1b20d98c941b43c23f9e4be98f2ae68951d2949` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--1709ae515c86ce76bc241c3e.md) | 92 | `declaration-track:1709ae515c86ce76bc241c3e03edaf244f14f41538ad8284b1983b4807e563cf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--760a0978778e92e4f0b86bc1.md) | 96 | `declaration-track:760a0978778e92e4f0b86bc1ac2032a2e427b0ff6e5029667d35e5974e991cd2` |
| 13 | `lemma` | [iff_isIntegralHom_and_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/iff-isintegralhom-and-locallyoffinitetype--8c4ac050a416e61d2cae2345.md) | 100 | `result-track:8c4ac050a416e61d2cae234589fc990219dbb441056b0cd983cf52263cb60bcb` |
| 14 | `lemma` | [eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/eq-inf--a914a7eb31491b734813b3d2.md) | 113 | `result-track:a914a7eb31491b734813b3d2566ae5ebad17e59bdf77dc9bf5feb2815c704d70` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--a225eecd9a033c48f9ce480f.md) | 117 | `declaration-track:a225eecd9a033c48f9ce480ff851a0257d5c2ebc8db214b51849e5b014e5fc10` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--b60f892168913310c8b748d3.md) | 120 | `declaration-track:b60f892168913310c8b748d31f35252818d0c9fc2da9152819e1622e03c5536c` |
| 17 | `lemma` | [_root_.AlgebraicGeometry.IsClosedImmersion.iff_isFinite_and_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/root-algebraicgeometry-isclosedimmersion-iff-isfinite-and-mono--ada46b04582508723a6ba949.md) | 124 | `result-track:ada46b04582508723a6ba94992b33d6558668229156c86d0cd89a24d4b4f141f` |
| 18 | `lemma` | [_root_.AlgebraicGeometry.IsClosedImmersion.eq_isFinite_inf_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/root-algebraicgeometry-isclosedimmersion-eq-isfinite-inf-mono--ca861c64759da157eef05333.md) | 140 | `result-track:ca861c64759da157eef053334a1b9e6b33083876fef383c46172276ac3a6fd1c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--cf75e175cc07395725615257.md) | 144 | `declaration-track:cf75e175cc0739572561525783f51e2ad9d1e21cc65ba66370436218538b8611` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--5781be6d734c459a45023829.md) | 147 | `declaration-track:5781be6d734c459a4502382914e942030487b20e57fee2a82282830f68f833c5` |
| 21 | `lemma` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/of-comp--b7bcfe973bd55902b2428c17.md) | 151 | `result-track:b7bcfe973bd55902b2428c17ac1683bc54f7e7a5a8e719a7cff1937684607694` |
| 22 | `lemma` | [comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/comp-iff--79e281c4fd7ad162792c6349.md) | 154 | `result-track:79e281c4fd7ad162792c634999d7b72803485c0b2c2519788f2ef47974cbd69c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/instance--2a22cd2b296d083fe434c2d2.md) | 159 | `declaration-track:2a22cd2b296d083fe434c2d2ada32579669c27c888a7bc50ab30dcdb0cdd306d` |
| 24 | `lemma` | [Scheme.Hom.finite_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/scheme-hom-finite-apptop--dbd7d68fa4e295db147d94bb.md) | 170 | `result-track:dbd7d68fa4e295db147d94bb054711cdb94020e13336eb89d4dfd993ecd06bfe` |
| 25 | `lemma` | [isFinite_iff_locallyOfFiniteType_of_jacobsonSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/isfinite-iff-locallyoffinitetype-of-jacobsonspace--98c7395a02cb5310e526b2e5.md) | 178 | `result-track:98c7395a02cb5310e526b2e55ace7a2c8cf5315272c30b69da9bd6ef56cc06ef` |
| 26 | `lemma` | [Scheme.Hom.closePoints_subset_preimage_closedPoints](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/scheme-hom-closepoints-subset-preimage-closedpoints--ebf13bc9da71a925e43bb6e3.md) | 209 | `result-track:ebf13bc9da71a925e43bb6e3a4c3ff94cf14c03a630d60dd8a281d3d2fe39bbe` |
| 27 | `lemma` | [isClosed_singleton_iff_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant07121fbb322595182ba99bc1caaf9eb647faeaa6781049437d797551fe4183f3.lean/declarations/isclosed-singleton-iff-locallyoffinitetype--ed7dc5babbc9821c1521ae28.md) | 221 | `result-track:ed7dc5babbc9821c1521ae2873c9970fdf60ae41de7d3b22e55f714c1827dc24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
