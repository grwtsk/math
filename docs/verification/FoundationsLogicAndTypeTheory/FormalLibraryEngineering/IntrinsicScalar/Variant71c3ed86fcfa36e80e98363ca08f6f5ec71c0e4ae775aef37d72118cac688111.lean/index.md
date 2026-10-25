# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrinsicScalar.Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b65bffe23485e179f1cf6e1cb5bcd404d356ea2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b65bffe23485e179f1cf6e1cb5bcd404d356ea2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.StructuralIsomorphism` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntrinsicScalarClassifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/declarations/intrinsicscalarclassifier--1f9ba581a261eee59624921c.md) | 23 | `declaration-track:1f9ba581a261eee59624921c0855f843a9cd6b104354a3462a6b59d56835d1ff` |
| 2 | `def` | [intrinsicScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/declarations/intrinsicscalar--a49f784f681b19673196402e.md) | 35 | `declaration-track:a49f784f681b19673196402e6c411d75d830d49c3956ae02a1d5de1411821181` |
| 3 | `theorem` | [intrinsicScalar_isoInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/declarations/intrinsicscalar-isoinvariant--19eed1a499f47f99b567f3a4.md) | 40 | `result-track:19eed1a499f47f99b567f3a47fccf46ceb729303e711ea139d81b8d90c2c886f` |
| 4 | `theorem` | [intrinsicScalar_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/declarations/intrinsicscalar-complete--5c206cd06c3a91b2aad0dfdd.md) | 47 | `result-track:5c206cd06c3a91b2aad0dfddc13aa5ddf21913ead28625164644c2daa2f01803` |
| 5 | `theorem` | [intrinsicScalar_has_no_embedded_element_selector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrinsicScalar/Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111.lean/declarations/intrinsicscalar-has-no-embedded-element-selector--9484c80a4e878d6b91365796.md) | 60 | `result-track:9484c80a4e878d6b91365796ead1bf74b28b7ad4600113eb02487461aeb8cb68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
