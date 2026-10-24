# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.PolePolar.Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01937c2ccafeabc95ea78696bcafeac636388fc5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01937c2ccafeabc95ea78696bcafeac636388fc5`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pole](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/pole--5f698684778ed6d003ae7bfb.md) | 53 | `declaration-track:5f698684778ed6d003ae7bfb1c16ad7b51729875fa697bef897752a4093b5b74` |
| 2 | `def` | [polar](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/polar--61ced766aada40985ec4a6f3.md) | 59 | `declaration-track:61ced766aada40985ec4a6f32a557e1778b2c74ff2292aa415825204ad3e5ab0` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/instance--2bf4652325379bb911f6ced9.md) | 62 | `declaration-track:2bf4652325379bb911f6ced901e94991901075c17c30241196e138ccd0c9a1c7` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/instance--14d68818e5df77f65d200cc5.md) | 66 | `declaration-track:14d68818e5df77f65d200cc5ad99833c47ba72cb8f60c07195e3ab1d1e9d589f` |
| 5 | `lemma` | [direction_polar](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/direction-polar--d668faa5690f9b6b81cabbc7.md) | 70 | `result-track:d668faa5690f9b6b81cabbc73bf21ff137c296dc7c5d9ae4e3c100d488b567c2` |
| 6 | `lemma` | [pole_polar](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/pole-polar--fce991c6c90b1cc4e4c1b0fa.md) | 79 | `result-track:fce991c6c90b1cc4e4c1b0fa86edbca66ab68eee887102515378202b92299a80` |
| 7 | `lemma` | [orthRadius_eq_polar_inversion](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/orthradius-eq-polar-inversion--0dee4dbcfe1033940389115f.md) | 82 | `result-track:0dee4dbcfe1033940389115fce293678f8119ff439d1644da66093031459f7db` |
| 8 | `lemma` | [polar_pole_orthRadius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/polar-pole-orthradius--f2c5beeef9a2c89f8dec1175.md) | 86 | `result-track:f2c5beeef9a2c89f8dec1175bc666bfac513df486b4fa470e377bff7c612bf88` |
| 9 | `lemma` | [polar_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/polar-center--37fe09c44adb51738310d05c.md) | 90 | `result-track:37fe09c44adb51738310d05c7f75b934033c006d7574be3027cff962131a1856` |
| 10 | `lemma` | [polar_zero_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/polar-zero-radius--fbb21beafb5a99952a2d7d9e.md) | 93 | `result-track:fbb21beafb5a99952a2d7d9e85a79711aa86d22a1c2ddd4416493e4ffd1f1cb3` |
| 11 | `lemma` | [polar_eq_orthRadius_self_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/polar-eq-orthradius-self-iff--063c387c52b1a09a6ad88f36.md) | 96 | `result-track:063c387c52b1a09a6ad88f36978b9dbb4be6b353604945f96d3458f87ba757af` |
| 12 | `lemma` | [mem_polar_iff_inner](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/mem-polar-iff-inner--c77e75d38d1dedf3e8b9167f.md) | 115 | `result-track:c77e75d38d1dedf3e8b9167f1a5a72d4f272263b9a9d3f6a3ea83ab97b09d26a` |
| 13 | `theorem` | [mem_polar_iff_mem_polar](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/mem-polar-iff-mem-polar--8a539f585042c5048e8c698b.md) | 132 | `result-track:8a539f585042c5048e8c698b2216857709dab4d245091a8e1b7af4be0821d957` |
| 14 | `lemma` | [mem_orthRadius_iff_mem_polar_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/mem-orthradius-iff-mem-polar-of-mem--300acdf983fdb24d74b814c1.md) | 136 | `result-track:300acdf983fdb24d74b814c13d7031a69a8c5c1db148a1c3f9ed1748ba4a087b` |
| 15 | `lemma` | [mem_polar_of_mem_of_mem_orthRadius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/mem-polar-of-mem-of-mem-orthradius--76c6c64b5a519abb886832df.md) | 146 | `result-track:76c6c64b5a519abb886832df864a672b544007a2a871bce8379ba53e7bfc8677` |
| 16 | `lemma` | [ncard_inter_polar_eq_two_of_radius_lt_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/PolePolar/Variant6e5de167ff9a44fafcdbee80737ce4d8f62d10b2b7894d4fb3612d7a722855ee.lean/declarations/ncard-inter-polar-eq-two-of-radius-lt-dist--6e83f787a978d0dbd75be210.md) | 152 | `result-track:6e83f787a978d0dbd75be210ea4408ae0f8fa2e88ce173f5cc9cdbeac044b528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
