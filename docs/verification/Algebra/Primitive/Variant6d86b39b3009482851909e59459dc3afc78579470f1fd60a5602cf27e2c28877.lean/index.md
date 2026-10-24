# Verification target: GRWTSK.Algebra.Primitive.Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b908b522073a39e2e6468d57f25b4965d5e76881",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/index.md) · [Full source](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b908b522073a39e2e6468d57f25b4965d5e76881`.

Source path: `GRWTSK/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsPrimitiveElem](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/declarations/isprimitiveelem--d3d88cf83e72e99a104f3b42.md) | 54 | `declaration-track:d3d88cf83e72e99a104f3b429a42d7e96c0d67a866a4c18c12d41d7b34e84dfe` |
| 2 | `lemma` | [IsPrimitiveElem.ne_one](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/declarations/isprimitiveelem-ne-one--e1e10345a1e5b51c2dab6394.md) | 56 | `result-track:e1e10345a1e5b51c2dab6394991b488587b9047d5d49897043be50fa0b3fe992` |
| 3 | `lemma` | [counit_eq_zero_of_comul_eq_tmul_add_tmul](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/declarations/counit-eq-zero-of-comul-eq-tmul-add-tmul--6c05bf79a9b5e2add2dd2cf6.md) | 62 | `result-track:6c05bf79a9b5e2add2dd2cf62ce10778c88de213d49678a92a06b66f94a1f1da` |
| 4 | `lemma` | [isPrimitiveElem_iff_comul_eq_tmul_add_tmul](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/declarations/isprimitiveelem-iff-comul-eq-tmul-add-tmul--1b38a6b9572900510d544d50.md) | 66 | `result-track:1b38a6b9572900510d544d5071136822a2f5de8da2f27df56e95d15c1700b19e` |
| 5 | `lemma` | [IsPrimitiveElem.commutator](../../../../mathematics/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/declarations/isprimitiveelem-commutator--65c7d356dd5dc66113596658.md) | 76 | `result-track:65c7d356dd5dc66113596658380564d682012bdaa9e98a25dbf6a8f4aec6d4f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
