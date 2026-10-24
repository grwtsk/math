# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Functor.Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26f7854188cab3856d926607645a6cb222be7c17",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26f7854188cab3856d926607645a6cb222be7c17`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean.json)

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
| 1 | `instance` | [functor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/functor--046fc31f24717be45a7511d2.md) | 50 | `declaration-track:046fc31f24717be45a7511d2275e4c3c5e5d06c8abab6625e258c1083b8fba8f` |
| 2 | `instance` | [lawfulFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/lawfulfunctor--88b4a1d7cf7bb73798e72e70.md) | 52 | `declaration-track:88b4a1d7cf7bb73798e72e70d8f8ce25a02adbe8d3ac6643fd7cfbb6127739f8` |
| 3 | `theorem` | [fmap_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/fmap-def--e810a38dc7ff080e248887cf.md) | 58 | `result-track:e810a38dc7ff080e248887cf3615ab77ae8c129642ea6ada1cc3bb04cd09d7e1` |
| 4 | `instance` | [pure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/pure--5434d4ca5ae288100a17f61c.md) | 65 | `declaration-track:5434d4ca5ae288100a17f61c80142234ca95218bbe00b4c3057561efe21d5dd9` |
| 5 | `theorem` | [pure_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/pure-def--03941c0088b91feeb0ff1e6b.md) | 69 | `result-track:03941c0088b91feeb0ff1e6b5be0010796c2331cc2d02ab95e39083481ba9667` |
| 6 | `instance` | [applicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/applicative--fde8e4d8496a6c2cd2e718c3.md) | 78 | `declaration-track:fde8e4d8496a6c2cd2e718c37860477f03d61a579b0a765c84e76990b25b6499` |
| 7 | `theorem` | [seq_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/seq-def--9a3b16291ebe565027979fb5.md) | 85 | `result-track:9a3b16291ebe565027979fb59ad7e9a7c3f2f2672682750803e70e19c8a7c59f` |
| 8 | `theorem` | [seqLeft_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/seqleft-def--0ef4588d62b0dc309fe44112.md) | 89 | `result-track:0ef4588d62b0dc309fe44112d47b2c62d2dc8436c77f9d55d9c3286d7ffe7cd9` |
| 9 | `theorem` | [seqRight_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/seqright-def--9a876d36be6c57f7d592dae6.md) | 93 | `result-track:9a876d36be6c57f7d592dae63f59c54b33c6fd7490da012175dbab8a96674b54` |
| 10 | `theorem` | [image₂_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/image-def--dba4ad487b46186c315b6efb.md) | 98 | `result-track:dba4ad487b46186c315b6efbe10d1244a25215f0ede8088e31e9eda4af53973a` |
| 11 | `instance` | [lawfulApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/lawfulapplicative--252d6fd2b10a3a9f5bc76d66.md) | 103 | `declaration-track:252d6fd2b10a3a9f5bc76d66592227867437979534bc29763ee2136627aba259` |
| 12 | `instance` | [commApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/commapplicative--535cfc405727bf3748279390.md) | 143 | `declaration-track:535cfc405727bf3748279390d501756c985e16ba1a2ea6ed592d18b6f2996f30` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/instance--831e5450e4c46be32bec0fa4.md) | 160 | `declaration-track:831e5450e4c46be32bec0fa4ff356bc3825e08bac0940a681ecf89fa86bda9ae` |
| 14 | `theorem` | [bind_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/bind-def--212ad6573a9777eeab4b9a76.md) | 164 | `result-track:212ad6573a9777eeab4b9a76b2ea966bbcc88e4f854cb8f96583b9dca7a9954f` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/instance--b36600baffd898a70e308230.md) | 167 | `declaration-track:b36600baffd898a70e308230d680d81968779300a82d7652cc5f03b2b1c9502c` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/instance--60900bb464a6c6fdbb6161c5.md) | 183 | `declaration-track:60900bb464a6c6fdbb6161c53ed20ae90eb76c55bf82926294af9b986aedf6dd` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/instance--a93c5cdd504a5f7c9d9be07e.md) | 187 | `declaration-track:a93c5cdd504a5f7c9d9be07ea0188771eb1b8a3fddac5f69dd3ac25a0adee7c9` |
| 18 | `def` | [traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/traverse--0d306a60db1d5108787c0bc0.md) | 206 | `declaration-track:0d306a60db1d5108787c0bc0862f245f8c1ebc5617b6b15f27f0be0991144637` |
| 19 | `theorem` | [id_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/id-traverse--ed40bf6728cf44407e3ee71e.md) | 210 | `result-track:ed40bf6728cf44407e3ee71e7aeb6aa76766be6a5d4d1488506565d26e3bfb53` |
| 20 | `theorem` | [map_comp_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/map-comp-coe--468e97d38d3cde9f4ad3690e.md) | 216 | `result-track:468e97d38d3cde9f4ad3690e85b043ff9931bdeb4836b6782b55ddb681693a9e` |
| 21 | `theorem` | [map_comp_coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/map-comp-coe-apply--0e778d4c97d5ff2371506432.md) | 222 | `result-track:0e778d4c97d5ff2371506432ce0b200c917517ab0f5534dffbda63f0b59ecb4d` |
| 22 | `theorem` | [map_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/declarations/map-traverse--d541d291f258934583348da1.md) | 227 | `result-track:d541d291f258934583348da1bb870e97e011ebb925a581333132b12289a119cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
