# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnionFind.Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e520aa72abf79c2d8195434ace3f954efbed044e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e520aa72abf79c2d8195434ace3f954efbed044e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean.json)

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
| 1 | `structure` | [UnionFind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/unionfind--5aa88efd6b9b22daeb460a0c.md) | 14 | `declaration-track:5aa88efd6b9b22daeb460a0c24e46fe91a93e99f051f4b9d6877fbd094511588` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/instance--495a02bdf709c338ae0b1634.md) | 25 | `declaration-track:495a02bdf709c338ae0b163478738554fd7137ebadae0ff9c4bf78a0a17b9d71` |
| 3 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/size--f50f44e6f6a1d010a46caf34.md) | 28 | `declaration-track:f50f44e6f6a1d010a46caf34ec046613511cc72c785a3aea5ef0de293c74ab4b` |
| 4 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/add--d27f53f5174aa063199b2cc1.md) | 31 | `declaration-track:d27f53f5174aa063199b2cc166ab61efc85ec3dc05510ddbc185833c3cc4bb7a` |
| 5 | `def` | [addArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/addarray--0b36e7396e1ae97beff7eacc.md) | 39 | `declaration-track:0b36e7396e1ae97beff7eacc1a80e03d476afb3a71defc5f0bce32c664443c72` |
| 6 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/ofarray--c216278dc7ed877e2eeb50a4.md) | 42 | `declaration-track:c216278dc7ed877e2eeb50a48b239eff2e6ccb0dc3c16b2f40e0157bba2e2143` |
| 7 | `def` | [findRepUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/findrepunsafe--ea457623f9d47768e845828f.md) | 45 | `declaration-track:ea457623f9d47768e845828fbe390bc4c25a0a7da0a4a176f94e80a5d5fedd84` |
| 8 | `opaque` | [findRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/findrep--f7df0b823dbfea1bf27289c4.md) | 55 | `declaration-track:f7df0b823dbfea1bf27289c456b8bb6ce3f718b9f410f1b99f562cb4c654e844` |
| 9 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/find--497d725bb54d9a00e94dd496.md) | 57 | `declaration-track:497d725bb54d9a00e94dd496b438014cc8b1cf7dc8bba0d35ca8add373f14ad6` |
| 10 | `def` | [mergeUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/mergeunsafe--ceeef0dad77dceecdf769e04.md) | 64 | `declaration-track:ceeef0dad77dceecdf769e046f2cee9aed8a3b10929f0672b2006d87f1f6d2f6` |
| 11 | `opaque` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/merge--9021bb05eaed16918193125c.md) | 87 | `declaration-track:9021bb05eaed16918193125cd81ccdcc4abe8e61ad7714ed3c3ee7623cb5a6e7` |
| 12 | `def` | [sets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/sets--e28971e5770610597b73db7f.md) | 89 | `declaration-track:e28971e5770610597b73db7f0ff8789702bf4557c5eb6fc1361ed5b08e36f695` |
| 13 | `def` | [cluster](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnionFind/Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f.lean/declarations/cluster--5a64eed111de21d70f2cc2a3.md) | 105 | `declaration-track:5a64eed111de21d70f2cc2a33cdbe34f82dfc9fe8f21885f69e13b14d11cecae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
