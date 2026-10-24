# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TokenGraph.Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e70eab2b1e5f69188da23b18a2b0f77077f0c9d0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e70eab2b1e5f69188da23b18a2b0f77077f0c9d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.RelationAlgebra` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemanticTokenization.Segmentation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TokenNode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/declarations/tokennode--2c78d8269703ebe79a15d0ab.md) | 10 | `declaration-track:2c78d8269703ebe79a15d0ab9cd8f6edba179fb6bc79b375d475acc0c1b43bd8` |
| 2 | `structure` | [SemanticEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/declarations/semanticedge--ae1468f813210ccc87f1a1be.md) | 21 | `declaration-track:ae1468f813210ccc87f1a1bef3df8f5e055289e2922e6c44b8a41fc9f77c14bc` |
| 3 | `structure` | [TokenGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/declarations/tokengraph--1ddd875d323bf80562eaea61.md) | 34 | `declaration-track:1ddd875d323bf80562eaea615d9499aa5f63079bd199c2d728009b918bc9f6b0` |
| 4 | `inductive` | [SemanticPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/declarations/semanticpath--ed872a30285d6eb69a61696f.md) | 54 | `declaration-track:ed872a30285d6eb69a61696f8e7b9c8349da4ff972a0ed56b82c8a4d40760f79` |
| 5 | `structure` | [TokenConnectivityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/declarations/tokenconnectivitycertificate--e219b1f4959f5e3d35bd3137.md) | 68 | `declaration-track:e219b1f4959f5e3d35bd3137b4354efb8b8116e428bb2fda925ff92da7645f96` |
| 6 | `theorem` | [tokenGraph_edge_evidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/declarations/tokengraph-edge-evidence--7eccc0c607cd0e4e57f02118.md) | 82 | `result-track:7eccc0c607cd0e4e57f02118b5ca056ce76dfdc5413f7525328c61689e282bda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
