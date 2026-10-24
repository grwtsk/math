# Verification target: GRWTSK.Geometry.DifferentialGeometry.Basic.Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a61c22694a381984a0e26021559c59d0aaf9efd",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a61c22694a381984a0e26021559c59d0aaf9efd`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffWithinAt.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-comp--2f21a53f1728a67f1a02f1eb.md) | 51 | `result-track:2f21a53f1728a67f1a02f1ebe91207f15779d0e366e09c49903c46944bc73e94` |
| 2 | `theorem` | [ContMDiffWithinAt.comp_of_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-comp-of-eq--5c6a139b1beaafd19de3d99b.md) | 81 | `result-track:5c6a139b1beaafd19de3d99baca065fd43e649577273003b244d5867715e1cf1` |
| 3 | `theorem` | [ContMDiffOn.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-comp--5ce7f38fa57b372712cfe547.md) | 89 | `result-track:5ce7f38fa57b372712cfe547d92402574b69fa48de2516bf92da814ed861c3ec` |
| 4 | `theorem` | [ContMDiffOn.comp'](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-comp--f9c81df6c3c5708c2ba37fec.md) | 96 | `result-track:f9c81df6c3c5708c2ba37fecda9adf83cebd463a719b081e36d962f7f561b96b` |
| 5 | `theorem` | [ContMDiff.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-comp--e806067c6dcea373e55a9e48.md) | 103 | `result-track:e806067c6dcea373e55a9e481934343024f8580127243118615fe4cf65614496` |
| 6 | `theorem` | [ContMDiffWithinAt.comp'](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-comp--656c7ece7bc22a279682f337.md) | 111 | `result-track:656c7ece7bc22a279682f3370a882aac413e332f966db171ace751785fe5b9eb` |
| 7 | `theorem` | [ContMDiffAt.comp_contMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-comp-contmdiffwithinat--0c0e4444b36097f96fccceaa.md) | 120 | `result-track:0c0e4444b36097f96fccceaaf62994ae218678f9a14f60eba872876477803ecf` |
| 8 | `theorem` | [ContMDiffAt.comp](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-comp--79e9c61e15c7da922b6df144.md) | 129 | `result-track:79e9c61e15c7da922b6df144ed0122bbf78f4511e7f8fd37040a38aabc832baa` |
| 9 | `theorem` | [ContMDiffAt.comp_of_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-comp-of-eq--fb218faad2b1fb2851600c25.md) | 134 | `result-track:fb218faad2b1fb2851600c25da0f12e67cfe3cb14ac3133025e40636aa18c70d` |
| 10 | `theorem` | [ContMDiff.comp_contMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-comp-contmdiffon--01b5ce82db98c930c72ba46f.md) | 140 | `result-track:01b5ce82db98c930c72ba46f38df1aba678809829b6d28ab3cc9294d6e2c8629` |
| 11 | `theorem` | [ContMDiffOn.comp_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-comp-contmdiff--3621b065d3e08b6c4a807980.md) | 146 | `result-track:3621b065d3e08b6c4a80798017ca94f9565e30fa7c3f00b5b2e6f492613f0237` |
| 12 | `theorem` | [contMDiff_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-id--bbe5b003f16edf02a81338a6.md) | 158 | `result-track:bbe5b003f16edf02a81338a68c1d0341fa796e12b35791ea3587ea29c72a0e0c` |
| 13 | `theorem` | [contMDiffOn_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-id--2e63a689618bb954b2cff5d9.md) | 164 | `result-track:2e63a689618bb954b2cff5d9b112b96584cf8f90297df88236bb955efda31e33` |
| 14 | `theorem` | [contMDiffAt_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-id--06e73046df0dda0a6fbe020d.md) | 169 | `result-track:06e73046df0dda0a6fbe020d2d0b0e8d9cbf7bec1013ee6a3f30636e3c899a1c` |
| 15 | `theorem` | [contMDiffWithinAt_id](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-id--d4162a6e8683ed69db9c271d.md) | 174 | `result-track:d4162a6e8683ed69db9c271d58c82e0ba61571fe1b9351a6cd6de20034bf5373` |
| 16 | `theorem` | [contMDiff_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-const--04e8166e0da82434c351d180.md) | 186 | `result-track:04e8166e0da82434c351d1809aabce83fc112fc9a5f14e231198a370ebc36c45` |
| 17 | `theorem` | [contMDiff_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-one--f9cbe7fd423f7e376b9a8459.md) | 193 | `result-track:f9cbe7fd423f7e376b9a8459c87b839b564be40286496706a4cc2b11f5e5993f` |
| 18 | `theorem` | [contMDiffOn_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-const--01d2408a3eceb1cf1164a06b.md) | 201 | `result-track:01d2408a3eceb1cf1164a06b77bd75b32f14cee84237dca96d5614f7eec726a9` |
| 19 | `theorem` | [contMDiffOn_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-one--3bb479d8b86e5953e60bef72.md) | 205 | `result-track:3bb479d8b86e5953e60bef7235162e6d74e3a932f353b1eefd065a44997f727a` |
| 20 | `theorem` | [contMDiffAt_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-const--bffe7e055b47c66efd1f2aab.md) | 214 | `result-track:bffe7e055b47c66efd1f2aab9f294862c29d2897c0b433e6e31bba44bc1da1f0` |
| 21 | `theorem` | [contMDiffAt_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-one--2bf3fb3d6ec2d3c94d3eebe1.md) | 218 | `result-track:2bf3fb3d6ec2d3c94d3eebe13d4e3c41f2f7d83f013350d337ab3f2ad8f5c2b2` |
| 22 | `theorem` | [contMDiffWithinAt_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-const--4c77ce7a7582e8ba4b57f2c5.md) | 226 | `result-track:4c77ce7a7582e8ba4b57f2c51d5d3ef6e1b765c8453a306ce0f08373c32b5ab7` |
| 23 | `theorem` | [contMDiffWithinAt_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-one--bdedcd7eefeb100b6b73460b.md) | 230 | `result-track:bdedcd7eefeb100b6b73460b28c6acd85fd6fbdce678cdd0879fb81292460c54` |
| 24 | `theorem` | [contMDiff_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-of-subsingleton--b97082899a5cd94a97c06db5.md) | 239 | `result-track:b97082899a5cd94a97c06db572e221860a0867011f60a2f8e121a2d0b21f9eff` |
| 25 | `theorem` | [contMDiffAt_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-of-subsingleton--95c3f33fe5f7ced817a90dc2.md) | 245 | `result-track:95c3f33fe5f7ced817a90dc22a8b5c9bafaffeab13cadc2f970c22615f80e36c` |
| 26 | `theorem` | [contMDiffWithinAt_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-of-subsingleton--74f06412e08d6996a96a7129.md) | 249 | `result-track:74f06412e08d6996a96a712983de543e8455f6d0d30d393a9931a7661c18e50f` |
| 27 | `theorem` | [contMDiffOn_of_subsingleton](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-of-subsingleton--fdbefb551caf00ee6fff1332.md) | 253 | `result-track:fdbefb551caf00ee6fff1332c406256ee1f2f3451242dbb7f7629bbbbd52fab6` |
| 28 | `lemma` | [contMDiff_of_discreteTopology](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-of-discretetopology--26295c4e8e41af31b7c3881f.md) | 256 | `result-track:26295c4e8e41af31b7c3881feaeb3b2c6d1d7d01a5cd887b5336b112c98df03b` |
| 29 | `theorem` | [contMDiff_of_mulTSupport](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-of-multsupport--cc5cae80e63246c1a08db804.md) | 269 | `result-track:cc5cae80e63246c1a08db804aacca4d0b25ec90486cabd903e581754cb3a6667` |
| 30 | `theorem` | [contMDiffWithinAt_of_notMem_mulTSupport](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffwithinat-of-notmem-multsupport--2aaebbe24d2a7236d9ae33c1.md) | 278 | `result-track:2aaebbe24d2a7236d9ae33c1f1ff9776a38a56bfe78cf806c7ba5173e635c5fd` |
| 31 | `theorem` | [contMDiffAt_of_notMem_mulTSupport](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-of-notmem-multsupport--f84cae350f6e7f9e94513bff.md) | 292 | `result-track:f84cae350f6e7f9e94513bff5d6feb1f15e2ba4dcf913807cf7ba182ab567506` |
| 32 | `theorem` | [contMDiffAt_subtype_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffat-subtype-iff--d48fa341d86b4b9dfee72118.md) | 309 | `result-track:d48fa341d86b4b9dfee72118061997f3b8465583573020934bdbb82016f8158e` |
| 33 | `theorem` | [contMDiff_subtype_val](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-subtype-val--d3b9ce7362c70dcd476bd55e.md) | 315 | `result-track:d3b9ce7362c70dcd476bd55eea737416212ee8c89f7599fa1c70adc7d5fd461b` |
| 34 | `theorem` | [ContMDiff.extend_one](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-extend-one--7e3f3a42a1b8d9bdc6c7fc55.md) | 320 | `result-track:7e3f3a42a1b8d9bdc6c7fc555ca101cb67e06c3bb8aafabd64dcdeb95a6b7843` |
| 35 | `theorem` | [contMDiff_inclusion](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-inclusion--374bd8b8ba15bb8d8e3b27f0.md) | 331 | `result-track:374bd8b8ba15bb8d8e3b27f026bd3b346f5bcbb065ed8aeb2f42efb1dd2ee02d` |
| 36 | `lemma` | [contMDiff_isOpenEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-isopenembedding--88dfade34136fa6458d48b69.md) | 361 | `result-track:88dfade34136fa6458d48b69426788d80a561bfc0b92ac7dc382dd0f478df59a` |
| 37 | `lemma` | [contMDiffOn_isOpenEmbedding_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiffon-isopenembedding-symm--a83d3109258022c36519d655.md) | 386 | `result-track:a83d3109258022c36519d655055952a3fb626e94fa95e584a2816efa6fe28cfd` |
| 38 | `lemma` | [ContMDiff.of_comp_isOpenEmbedding](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/declarations/contmdiff-of-comp-isopenembedding--6a9ba316f8dd75a99fb2fe78.md) | 414 | `result-track:6a9ba316f8dd75a99fb2fe7814a634a8120ffed8bf45f4ef7039a06aab8457a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
