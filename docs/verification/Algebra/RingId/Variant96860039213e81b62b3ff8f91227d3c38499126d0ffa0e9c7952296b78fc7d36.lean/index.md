# Verification target: GRWTSK.Algebra.RingId.Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c27403ce66e22e760d6388fb2699c4a9a8cec5a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c27403ce66e22e760d6388fb2699c4a9a8cec5a`.

Source path: `GRWTSK/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Insts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getCommRingId?](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/declarations/getcommringid--3e889dcf238e53d38c89d6d1.md) | 21 | `declaration-track:3e889dcf238e53d38c89d6d16ec55f225efcc9d48bab910230d66cf5ec18cf34` |
| 2 | `def` | [getNonCommRingId?](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/declarations/getnoncommringid--e86fdc2a647dc2b3d4a95fbc.md) | 124 | `declaration-track:e86fdc2a647dc2b3d4a95fbc75007b60884cdd3cd5256a1b7756e35ab57416b0` |
| 3 | `def` | [setCommSemiringId](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/declarations/setcommsemiringid--86b7622bc63f28a6e9ba2f64.md) | 146 | `declaration-track:86b7622bc63f28a6e9ba2f64c1297607cf2aef8f7f213cd6f9041c313e187f94` |
| 4 | `def` | [getCommSemiringId?](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/declarations/getcommsemiringid--45e832f33ad86aeb84ec2374.md) | 149 | `declaration-track:45e832f33ad86aeb84ec2374616e1e46050eda386885f884bc277a7a7d60d5ac` |
| 5 | `def` | [getNonCommSemiringId?](../../../../mathematics/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/declarations/getnoncommsemiringid--9ace21dafe2381faa3e4dd81.md) | 173 | `declaration-track:9ace21dafe2381faa3e4dd81cbca7bc497369884498d2340fee8e645a9503a1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
