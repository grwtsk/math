# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextResolver.Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab89f27567d1935753fdb23d5a9585a81757d8b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab89f27567d1935753fdb23d5a9585a81757d8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Context` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Continuation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContextCutValidator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/declarations/contextcutvalidator--dbdb976cfc4ad9d586b534b3.md) | 15 | `declaration-track:dbdb976cfc4ad9d586b534b3401d58e04f18bc0e441480ea7a634b3b480d47d8` |
| 2 | `structure` | [ContextResolverProfile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/declarations/contextresolverprofile--245c307df97b228ab1920b12.md) | 29 | `declaration-track:245c307df97b228ab1920b128a9cd5e0ade528695e122fad929e765b40160d07` |
| 3 | `inductive` | [ContextResolution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/declarations/contextresolution--62573a91f10cba369cfa01e5.md) | 59 | `declaration-track:62573a91f10cba369cfa01e55ffc159ffa1e7ec5b533ecf9782724b1e8adbd8e` |
| 4 | `def` | [ContextResolution.IsRejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/declarations/contextresolution-isrejected--d6faf2dd86b74260f89a5c1c.md) | 87 | `declaration-track:d6faf2dd86b74260f89a5c1cc276187812023675d97bb23461ebc63d98f98bc7` |
| 5 | `def` | [resolveCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variante487370bbe14c39a7224e99255987652144d8231118c86b08015b119303b1e88.lean/declarations/resolvecut--71ef87195b269174c6ece59b.md) | 104 | `declaration-track:71ef87195b269174c6ece59b505615d114e0502140533a9ff3b215f416ebb427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
