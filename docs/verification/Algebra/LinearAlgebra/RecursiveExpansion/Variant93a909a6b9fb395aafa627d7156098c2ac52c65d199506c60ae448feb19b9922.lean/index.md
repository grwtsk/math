# Verification target: GRWTSK.Algebra.LinearAlgebra.RecursiveExpansion.Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c31d4f05ee5ed78f4b3552824ebf0c2bd0e656a6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c31d4f05ee5ed78f4b3552824ebf0c2bd0e656a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.TorsionSite` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RecursiveExpansionStatus](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/declarations/recursiveexpansionstatus--fa61b5babb0cf09ad5d2da99.md) | 5 | `declaration-track:fa61b5babb0cf09ad5d2da9934fe7b9a27d8568792fc993bce981922bd55af3d` |
| 2 | `structure` | [RecursiveExpansionNode](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/declarations/recursiveexpansionnode--4c896ba7ef015731be386d30.md) | 17 | `declaration-track:4c896ba7ef015731be386d30be8c2e84d8dec71b8d46f0d2514a9f032a70cea0` |
| 3 | `structure` | [RecursiveExpansionStep](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/declarations/recursiveexpansionstep--a6dab46712ee5a4f8eece724.md) | 24 | `declaration-track:a6dab46712ee5a4f8eece7243655289900e9d1687c05f244afd55ed16497518c` |
| 4 | `def` | [terminalStatus](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/declarations/terminalstatus--ca0e6397577abd0e9691501a.md) | 31 | `declaration-track:ca0e6397577abd0e9691501a286a310125e24b641f09d666e3bde89a1f225bc7` |
| 5 | `theorem` | [terminal_node_status_visible](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/declarations/terminal-node-status-visible--88c18c20b2a3a7515e8a4f49.md) | 41 | `result-track:88c18c20b2a3a7515e8a4f492ea5853a1bb362d44820d4094bc5a4c4d502025f` |
| 6 | `theorem` | [mlx_gemma_response_not_proof_authority](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922.lean/declarations/mlx-gemma-response-not-proof-authority--0e10a1c3557aea1450ddf89c.md) | 47 | `result-track:0e10a1c3557aea1450ddf89cac87d5b68d0e007af0d51868a2e6c1914624b290` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
