# Verification target: GRWTSK.Algebra.LinearAlgebra.Primitive.Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c81adb006eb6526a19101f8a7c9f9b08c1cfbe5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c81adb006eb6526a19101f8a7c9f9b08c1cfbe5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean.json)

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
| 1 | `structure` | [IsSkewPrimitiveElem](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/isskewprimitiveelem--4e7b303cfccd65a21b7c6f45.md) | 56 | `declaration-track:4e7b303cfccd65a21b7c6f4519a5a5d4163380ea6d36782536d4f93992efa40b` |
| 2 | `lemma` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/zero--edbc7074b2eebe124db7a338.md) | 64 | `result-track:edbc7074b2eebe124db7a3380c049014d1f006e27eb990d82d548c52b951c0ca` |
| 3 | `lemma` | [add](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/add--e1c1fdcafa2833074613b5f4.md) | 66 | `result-track:e1c1fdcafa2833074613b5f46007f99d5aa3085f1a2b7b2d3834608b05a176a6` |
| 4 | `lemma` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/smul--86d3d4465f4e2fd441ca538c.md) | 73 | `result-track:86d3d4465f4e2fd441ca538c072dc85af9829e6d0afdc3fc091375e49d515e8e` |
| 5 | `lemma` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/map--a052063313e2007b5e53c295.md) | 79 | `result-track:a052063313e2007b5e53c29582d0e4b0927d2e2159dd04d635877635f7799a5f` |
| 6 | `lemma` | [isSkewPrimitiveElem_map_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/isskewprimitiveelem-map-equiv--55916342f8f14bb1e34e69d2.md) | 88 | `result-track:55916342f8f14bb1e34e69d2ff095c91e3796d4455c3c52591b89fbddcc6ac88` |
| 7 | `def` | [skewPrimitive](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/skewprimitive--696332875f5d5c4f8ecf647d.md) | 97 | `declaration-track:696332875f5d5c4f8ecf647d08d097ffd0316e916c1999a3f902adb90e95bba8` |
| 8 | `lemma` | [mem_skewPrimitive](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/mem-skewprimitive--65411a41430cfc56c08fd741.md) | 103 | `result-track:65411a41430cfc56c08fd7413f73c2bc82e42d2e6433b9f2dce3a52c31b1e457` |
| 9 | `lemma` | [counit_eq_zero_of_comul_eq_tmul_add_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/counit-eq-zero-of-comul-eq-tmul-add-tmul--9d734237f81d73a766581b7a.md) | 110 | `result-track:9d734237f81d73a766581b7a7b46a857325413a0b7c6efaf2a327b30998ec870` |
| 10 | `lemma` | [IsSkewPrimitiveElem.of_comul_eq_tmul_add_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/isskewprimitiveelem-of-comul-eq-tmul-add-tmul--01165b7e56fe372e5a56c0cd.md) | 117 | `result-track:01165b7e56fe372e5a56c0cd61eed68a425f0b08db3be3f35927c051c14c91ac` |
| 11 | `lemma` | [isSkewPrimitiveElem_iff_comul_eq_tmul_add_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/isskewprimitiveelem-iff-comul-eq-tmul-add-tmul--8a83db9994d3219f183a3cfb.md) | 122 | `result-track:8a83db9994d3219f183a3cfb528db979794e3f665072ef3445d80505ba6fcca8` |
| 12 | `lemma` | [neg](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/neg--571c9d7d7096003ff20efdc2.md) | 134 | `result-track:571c9d7d7096003ff20efdc299afac617a5b1d9cf1c58f764fdd90a288a5c365` |
| 13 | `lemma` | [sub](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/sub--a05ed489626b4b0a06385268.md) | 139 | `result-track:a05ed489626b4b0a0638526857d178886b5611d66e6d4a30ef8a3a2d4bdd6167` |
| 14 | `lemma` | [isSkewPrimitiveElem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Primitive/Variant4f12177699084edce490f71282e74de54bf90d9009b846c166ee9cbfb3292b00.lean/declarations/isskewprimitiveelem-neg--a4cb5cadc62f8b66694f06e0.md) | 145 | `result-track:a4cb5cadc62f8b66694f06e0ff18ebb57e4f4c77f9738cbb3da76293f36b349c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
