# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Zero.Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8ef39df5cc5e38eb770c22f10bc6f07eb4951bb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8ef39df5cc5e38eb770c22f10bc6f07eb4951bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean.json)

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
| 1 | `class` | [PreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveszeromorphisms--469f3f8aa35b66ecf15e45d0.md) | 48 | `declaration-track:469f3f8aa35b66ecf15e45d059051d5ac609dcb3a5eeff5848db7c34f9e60631` |
| 2 | `theorem` | [map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/map-zero--b62a502838946a6b25aed8b5.md) | 53 | `result-track:b62a502838946a6b25aed8b53d241ebcff0dc943b6ebde00f6795bad7616043c` |
| 3 | `lemma` | [map_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/map-iszero--ac5e514d13c9a6aded65b5f5.md) | 57 | `result-track:ac5e514d13c9a6aded65b5f5406aa9f4a27694b2ce17481761c182afa1b96e28` |
| 4 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/zero-of-map-zero--a4a7d26ad1f108bbd323a7e3.md) | 62 | `result-track:a4a7d26ad1f108bbd323a7e3720a55dfdb33aa45204655cd0d00f0613124418a` |
| 5 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/map-eq-zero-iff--36b2c1b21c43b70da5479640.md) | 66 | `result-track:36b2c1b21c43b70da5479640ef5b2c0938d2094a847a7d830a0bb97e8d2b199e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--cbd90bb542cb2a7934bb7a54.md) | 72 | `declaration-track:cbd90bb542cb2a7934bb7a54f5151d5f09252876c5dccf2b4b28b47bdd593102` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--3b24835b8a9b72d2c8577c5b.md) | 85 | `declaration-track:3b24835b8a9b72d2c8577c5b7e5355249e3ff5f27e6cf0c7e372e4bed42a8a16` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--43a4fa6801f874a29719a56d.md) | 97 | `declaration-track:43a4fa6801f874a29719a56d8482e705bbcafefe55229b9f7a8628e4fd62ebdc` |
| 9 | `instance` | [preservesZeroMorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveszeromorphisms-comp--6315cf2678c2adf15371d53c.md) | 104 | `declaration-track:6315cf2678c2adf15371d53c09a65763f42f5780c96599d61160f70b7648b7d0` |
| 10 | `lemma` | [preservesZeroMorphisms_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveszeromorphisms-of-iso--c5d26ebea722e1801a125d3c.md) | 108 | `result-track:c5d26ebea722e1801a125d3c852e8eaec1b1255a9ce2d9eaca885484ad9aacb5` |
| 11 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveszeromorphisms-evaluation-obj--a804228a85e23dc429f828db.md) | 113 | `declaration-track:a804228a85e23dc429f828db959cac28a6777b49d4cf9def79abbe0c320c5233` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--5caf3a20bcc754a4c12c3305.md) | 116 | `declaration-track:5caf3a20bcc754a4c12c3305487a3ef84f88166c064e3662953a7bb6c010e9b4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--aa75505df8e0990bc681f464.md) | 119 | `declaration-track:aa75505df8e0990bc681f464b95d8bb58abfb680fde17ffdd792b2eb2ea3a452` |
| 14 | `lemma` | [whiskerRight_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/whiskerright-zero--ba3095daa3c42a94b2084d9c.md) | 123 | `result-track:ba3095daa3c42a94b2084d9c5b62c59b73d75fd985dcbb139371639839a58529` |
| 15 | `lemma` | [FullyFaithful.preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/fullyfaithful-preserveszeromorphisms--4833f817b28a20bd13bb49c3.md) | 127 | `result-track:4833f817b28a20bd13bb49c32b993447bc62ab0f7ee582f08963290ff859ab5b` |
| 16 | `def` | [mapZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/mapzeroobject--78107f6af9ae6503f4ce0913.md) | 145 | `declaration-track:78107f6af9ae6503f4ce0913e5294845c26f847c10a188e955ec3ba1fae062f7` |
| 17 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveszeromorphisms-of-map-zero-object--2156d4565a26d79411d0ed3e.md) | 153 | `result-track:2156d4565a26d79411d0ed3e9f884b941d16ba5a78720d67f7c346153f2205e3` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--146c4aebc6e75ce3cc433f0b.md) | 160 | `declaration-track:146c4aebc6e75ce3cc433f0b140a73484462d93398147bf76404f1cc4f29fc4d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/instance--ef092645e4f0535f70e8ebe5.md) | 166 | `declaration-track:ef092645e4f0535f70e8ebe512f9dcc3cb6c95b3620f7e9d9416381443ef779a` |
| 20 | `lemma` | [preservesTerminalObject_of_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preservesterminalobject-of-preserveszeromorphisms--33a02f5c5c3792df0c26ff6a.md) | 175 | `result-track:33a02f5c5c3792df0c26ff6a1b1f61250cf884028f2461ece59d25e6320bd5f2` |
| 21 | `lemma` | [preservesInitialObject_of_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preservesinitialobject-of-preserveszeromorphisms--2f4d464cf3d4dd592d735801.md) | 181 | `result-track:2f4d464cf3d4dd592d735801076faf0af3680fe20f8c73930effcf46a618d443` |
| 22 | `lemma` | [preservesLimitsOfShape_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveslimitsofshape-of-iszero--91c0d2aaa569838acbf33a47.md) | 197 | `result-track:91c0d2aaa569838acbf33a4714f18ec1c7e34b11e51b18bf404f64d8a5fa1ab8` |
| 23 | `lemma` | [preservesColimitsOfShape_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preservescolimitsofshape-of-iszero--3bc91991e0b1639b6e78b034.md) | 203 | `result-track:3bc91991e0b1639b6e78b034f7c00d46fd92da804106450acc1362b036c538d5` |
| 24 | `lemma` | [preservesLimitsOfSize_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preserveslimitsofsize-of-iszero--b05bb3c8dcb6a5f07fd4ab14.md) | 209 | `result-track:b05bb3c8dcb6a5f07fd4ab143f1b46c26310f421308f93dbf22dd39a65914f60` |
| 25 | `lemma` | [preservesColimitsOfSize_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3de349826f590efa593f1584d498c5dac36d61e508f6a4364d949a3af52c776c.lean/declarations/preservescolimitsofsize-of-iszero--fe2e7692c9e4dabae0bf0474.md) | 213 | `result-track:fe2e7692c9e4dabae0bf0474794a08da7bb2a9a6dd2363cd6a41faa11cded0b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
