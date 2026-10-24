# Verification target: GRWTSK.Algebra.GroupTheory.InjSurj.Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef88b19cd6ae9593f9215b934b6c493e02fa859",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef88b19cd6ae9593f9215b934b6c493e02fa859`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-mulzeroclass--7f85b46ed9c22c1ba76a8777.md) | 36 | `declaration-track:7f85b46ed9c22c1ba76a8777ef7464d3cb7a8619efc49c8ac1d5b85834c3bd7e` |
| 2 | `def` | [Function.Surjective.mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-mulzeroclass--b8112ee09ed4eb442197227a.md) | 47 | `declaration-track:b8112ee09ed4eb442197227a8421cadc39c1364a49a3abab360450754ce18770` |
| 3 | `theorem` | [Function.Injective.noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-nozerodivisors--ef1111d4dc70c83a4ac3deff.md) | 64 | `result-track:ef1111d4dc70c83a4ac3defff913c56983aa64ba45b887f0f78de0b3ad80f67f` |
| 4 | `theorem` | [Function.Injective.isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-isleftcancelmulzero--6073e85efaad46170022f7bd.md) | 71 | `result-track:6073e85efaad46170022f7bd3c7cd7a773bf7edb7502aa4f7cf0e7773ddc9f30` |
| 5 | `theorem` | [Function.Injective.isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-isrightcancelmulzero--21807ff0cab7afb6d6c193bc.md) | 78 | `result-track:21807ff0cab7afb6d6c193bc4374f08fdff3e9d84c76ffa3bce6419f4592ac73` |
| 6 | `def` | [Function.Injective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-mulzerooneclass--28d307f2bc6a3c8988b8bcea.md) | 94 | `declaration-track:28d307f2bc6a3c8988b8bcea288f0a2d234eaef01110c9709e9470a8adc153ab` |
| 7 | `def` | [Function.Surjective.mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-mulzerooneclass--df228b126b36b44173394b69.md) | 103 | `declaration-track:df228b126b36b44173394b6968b307dafa843160b4942a140ec6637f47a65c6d` |
| 8 | `def` | [Function.Injective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-semigroupwithzero--60d8cc9418f602b8cdbe6366.md) | 116 | `declaration-track:60d8cc9418f602b8cdbe63665cfc53c87ec3181607b28c5cfc0956d46acc9156` |
| 9 | `def` | [Function.Surjective.semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-semigroupwithzero--f66b3de387ebdd7db49374e6.md) | 125 | `declaration-track:f66b3de387ebdd7db49374e634af3eba34064f0a589a925d6a7aacae14347868` |
| 10 | `def` | [Function.Injective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-monoidwithzero--7736e7a60def6c5c5750fd4a.md) | 138 | `declaration-track:7736e7a60def6c5c5750fd4a55a3d26c783f54545829db30d34a47d69d11b174` |
| 11 | `def` | [Function.Surjective.monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-monoidwithzero--3852854f538d19e5fcc56112.md) | 148 | `declaration-track:3852854f538d19e5fcc56112cf3a8933142068fb7e1ee71e2d4bdb6bd03787d4` |
| 12 | `def` | [Function.Injective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-commmonoidwithzero--75709fab80e84a85bcd73e2b.md) | 158 | `declaration-track:75709fab80e84a85bcd73e2b20d1c74dbc8f40ff0193816d6ce49e90ff3297c9` |
| 13 | `def` | [Function.Surjective.commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-commmonoidwithzero--e52665d8c0bda9d89c498c92.md) | 168 | `declaration-track:e52665d8c0bda9d89c498c9223bec1de585e246b790675d21fbcae765ea0fe58` |
| 14 | `def` | [Function.Injective.cancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-cancelmonoidwithzero--4ff8f106777f8c0740c45a8e.md) | 184 | `declaration-track:4ff8f106777f8c0740c45a8eb2ff90e1a77084f4eebad843ce4b96f9eb8450ad` |
| 15 | `def` | [Function.Injective.cancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-cancelcommmonoidwithzero--9245419b9ac265fa35ed5b26.md) | 204 | `declaration-track:9245419b9ac265fa35ed5b266a582ee75549829e4bb6c4dd01c820ca104bb461` |
| 16 | `def` | [Function.Injective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-groupwithzero--3911ac5e96254d9690045b04.md) | 220 | `declaration-track:3911ac5e96254d9690045b04e4aa49399d5a115c7cea8339db6b01d5bb9c1683` |
| 17 | `def` | [Function.Surjective.groupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-groupwithzero--5a9e7fd6b1de4998f50612c1.md) | 236 | `declaration-track:5a9e7fd6b1de4998f50612c13b39ca797b8bc55e511879570ffedd4149da2bfc` |
| 18 | `def` | [Function.Injective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-injective-commgroupwithzero--bd1ee9f1641757c06d3f7a18.md) | 258 | `declaration-track:bd1ee9f1641757c06d3f7a18788730c498b8e742bb5cb3b07217e5b6e50b1fbf` |
| 19 | `def` | [Function.Surjective.commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/declarations/function-surjective-commgroupwithzero--9a883492ba480803ed044cf1.md) | 268 | `declaration-track:9a883492ba480803ed044cf13d5d006979bda2aa6efb2c3a355533880a51f666` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
