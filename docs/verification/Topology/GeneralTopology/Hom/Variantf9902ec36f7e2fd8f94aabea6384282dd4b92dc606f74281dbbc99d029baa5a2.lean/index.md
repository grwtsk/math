# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c1466d21f02cfda3d84dcf6305c33168bef33d0",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c1466d21f02cfda3d84dcf6305c33168bef33d0`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/isspectralmap--d79f40001d1ce3ac9d230d2f.md) | 38 | `declaration-track:d79f40001d1ce3ac9d230d2f7d5e02611d036986812f2e94dba27dfe0158ae0f` |
| 2 | `theorem` | [IsCompact.preimage_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/iscompact-preimage-of-isopen--991654aceafd6655fc1c9f3b.md) | 44 | `result-track:991654aceafd6655fc1c9f3bdf6725f77e6391290cb798c93486692fd970c3f4` |
| 3 | `theorem` | [IsSpectralMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/isspectralmap-continuous--27e92792f534c8379fc6a56b.md) | 49 | `result-track:27e92792f534c8379fc6a56b33d87cc21928a972da193934d102385a522a184f` |
| 4 | `theorem` | [isSpectralMap_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/isspectralmap-id--db1160ba07deab89bc446195.md) | 53 | `result-track:db1160ba07deab89bc446195f5f715de4712e9e7e6a26c26316e44c6fd28891e` |
| 5 | `theorem` | [IsSpectralMap.comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/isspectralmap-comp--9f21d3e5320917a7c8a0199c.md) | 57 | `result-track:9f21d3e5320917a7c8a0199c19a0b7dbb1273549d90156d2e85189f9c0430684` |
| 6 | `structure` | [SpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/spectralmap--c3c9fbb0de3c1f50b6fbc319.md) | 66 | `declaration-track:c3c9fbb0de3c1f50b6fbc319210e8f3a149e4d5add468f9914713a5312ab4790` |
| 7 | `class` | [SpectralMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/spectralmapclass--18a56bc66166df0188e16c97.md) | 78 | `declaration-track:18a56bc66166df0188e16c9757c809ad0f1a0f393ddcdd76e112febce531de1a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/instance--26fd4826151c0cbe71c6683e.md) | 91 | `declaration-track:26fd4826151c0cbe71c6683e910525b25b1813fa178a7e05272ca2ef5d1686f1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/instance--66e4acbe62306beb3e53fa25.md) | 96 | `declaration-track:66e4acbe62306beb3e53fa25739425fa616a0b3d9ce1531fe1c7478a8aff1c0a` |
| 10 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/tocontinuousmap--5ca63177ad9b75e940880835.md) | 108 | `declaration-track:5ca63177ad9b75e9408808352eecd41ede39f0a8fc58866ea55534b0d6c213c1` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/instance--666fe89e3f3226780385617f.md) | 112 | `declaration-track:666fe89e3f3226780385617fa21d3b38b02d2dbe0f09a2db756f43c64b05274d` |
| 12 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/tofun-eq-coe--0609b82e6ffc60fcef4a426b.md) | 125 | `result-track:0609b82e6ffc60fcef4a426bfa1b8ce53cd391abf8e7ea35e245f09f76d75ed9` |
| 13 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/ext--96ad91c35205c2898aea71cd.md) | 130 | `result-track:96ad91c35205c2898aea71cde72aa6f465a2579fc4cb3c7373a3aa92ca55bb98` |
| 14 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/copy--adede2da2c36783a65e8bf65.md) | 136 | `declaration-track:adede2da2c36783a65e8bf650426531f2cf8f22239fb2bfb5a872eddb6edf863` |
| 15 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/coe-copy--fff7fd1a69928bb4906c5df9.md) | 141 | `result-track:fff7fd1a69928bb4906c5df95cb11149d37d8a35bfe48271d5fb5f6623ca8498` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/copy-eq--11199cc752b7ed8514a76f1b.md) | 145 | `result-track:11199cc752b7ed8514a76f1b9dc05f0acb310bdd9e0e526897e645d35afd7040` |
| 17 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/id--38ccacf18a2064782fb154cf.md) | 152 | `declaration-track:38ccacf18a2064782fb154cf1d4c81c7f9f7f04e8872e09f3db3f0abdf09a88a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/instance--cc7035b39e88d48dbcf73327.md) | 156 | `declaration-track:cc7035b39e88d48dbcf73327b634eb3e449213ef9eb79fe80d907e3056288a27` |
| 19 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/coe-id--090cffcedce36795cba753a5.md) | 160 | `result-track:090cffcedce36795cba753a59bb5fa8ad9f869c12ed158e9b4da233ee0d75bd9` |
| 20 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/id-apply--387402d9417d097780127182.md) | 167 | `result-track:387402d9417d0977801271823d5788266678a2515809d0efe6c6573276680de0` |
| 21 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/comp--77b35587671c686a601ed8e1.md) | 172 | `declaration-track:77b35587671c686a601ed8e14830148b99e15c4d8030545e16689c0dde67ab3b` |
| 22 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/coe-comp--780760b97f5241faebfa6bd0.md) | 177 | `result-track:780760b97f5241faebfa6bd0c1f78a37721ac441e46e5ca722d896a32473ef35` |
| 23 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/comp-apply--ecc2d31c38b5d75c68e8d7e1.md) | 182 | `result-track:ecc2d31c38b5d75c68e8d7e127848519e151648a878fb7294561aec16503d87b` |
| 24 | `theorem` | [coe_comp_continuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/coe-comp-continuousmap--da71fed4266f4bde0ede5bcf.md) | 187 | `result-track:da71fed4266f4bde0ede5bcf40e2f70784bb1ea9420e0775c4f5905fae86663b` |
| 25 | `theorem` | [coe_comp_continuousMap'](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/coe-comp-continuousmap--849c72dc736eaf6b556df03d.md) | 192 | `result-track:849c72dc736eaf6b556df03dba47bf3def0341845f9c244b630c2799d4fdb10a` |
| 26 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/comp-assoc--5a44f32be04ac5cd2414483e.md) | 198 | `result-track:5a44f32be04ac5cd2414483ee65285d3b233f2eda575be3fc7403e3bee366596` |
| 27 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/comp-id--55d5ef4edfc282f9e04decb7.md) | 204 | `result-track:55d5ef4edfc282f9e04decb709d8b61575555b3f0110c3144505aeff03d494b2` |
| 28 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/id-comp--8a75aaec68c45fd8473a58c2.md) | 209 | `result-track:8a75aaec68c45fd8473a58c26e8875e6fab504be95a83a9110cef5cee3492111` |
| 29 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/cancel-right--367a71e609a6f937b2c07907.md) | 213 | `result-track:367a71e609a6f937b2c07907e1e53808ff3ef87489ffc20915f8469582836bc3` |
| 30 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/declarations/cancel-left--95c775d5560e44f2130b164c.md) | 219 | `result-track:95c775d5560e44f2130b164c20d9d4f472af420e3f151860d9bc5381e01be8cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
