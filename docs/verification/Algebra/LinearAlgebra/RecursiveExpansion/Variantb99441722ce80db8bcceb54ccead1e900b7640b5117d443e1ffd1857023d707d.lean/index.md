# Verification target: GRWTSK.Algebra.LinearAlgebra.RecursiveExpansion.Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7d3e3a3b885f322a9a44f9aaf33916de0761ec2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7d3e3a3b885f322a9a44f9aaf33916de0761ec2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.TorsionSite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RecursiveExpansionStatus](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/declarations/recursiveexpansionstatus--382e51d81e4782e5b8606a3b.md) | 13 | `declaration-track:382e51d81e4782e5b8606a3bea8baeca3ce5524b0d740e6dd61d843de6b0772b` |
| 2 | `structure` | [RecursiveExpansionNode](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/declarations/recursiveexpansionnode--7930642e265096d0cf55a987.md) | 25 | `declaration-track:7930642e265096d0cf55a9875edf6b36c8324d292a6242c5abb80b2053afc112` |
| 3 | `structure` | [RecursiveExpansionStep](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/declarations/recursiveexpansionstep--30d492c32850ab6f6e66e121.md) | 32 | `declaration-track:30d492c32850ab6f6e66e121e6ba6ffed1f117abcc0d153582922d76f1e006c3` |
| 4 | `def` | [terminalStatus](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/declarations/terminalstatus--1fbfb6ec1a6c01a3de636419.md) | 39 | `declaration-track:1fbfb6ec1a6c01a3de636419f551a57f6d83b5fbe3ce7faf6b0fe97ea71718bd` |
| 5 | `theorem` | [terminal_node_status_visible](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/declarations/terminal-node-status-visible--ca1025a982368278b64bfd10.md) | 49 | `result-track:ca1025a982368278b64bfd107b35d9029ed698a1a1ed0e660e02c4376fabe7b0` |
| 6 | `theorem` | [mlx_gemma_response_not_proof_authority](../../../../../mathematics/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/declarations/mlx-gemma-response-not-proof-authority--2213dd7a19837996c5dbcdfe.md) | 55 | `result-track:2213dd7a19837996c5dbcdfee268499d5a3545d28923885714127e73cdafc318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
