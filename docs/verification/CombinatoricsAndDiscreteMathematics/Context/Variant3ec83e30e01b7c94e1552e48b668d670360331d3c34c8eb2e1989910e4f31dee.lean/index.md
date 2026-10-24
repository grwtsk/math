# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Context.Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6a212a4149856a46f90e36e0cd5c7522cd7b5d4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6a212a4149856a46f90e36e0cd5c7522cd7b5d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Cut` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Identity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProtectedDistinction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/declarations/protecteddistinction--8a4a6bc0c9d3fecf12367ce9.md) | 24 | `declaration-track:8a4a6bc0c9d3fecf12367ce95f33565fb773c40f816545f6797214114b577644` |
| 2 | `def` | [requiredProtectedDistinctions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/declarations/requiredprotecteddistinctions--abd32d3c517bfd03d3504e2c.md) | 39 | `declaration-track:abd32d3c517bfd03d3504e2c9b75914fe00a4dfcaaa7ba741f2c1dbfd11a0814` |
| 3 | `structure` | [ContextEnvelope](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/declarations/contextenvelope--9691ad45863b21283c454df6.md) | 56 | `declaration-track:9691ad45863b21283c454df61fa52cf43b2df351cba313ba38ba72b21a7c4b86` |
| 4 | `def` | [ContextEnvelope.preservesRequired](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/declarations/contextenvelope-preservesrequired--8c6acd13dbeeba5f4828f67b.md) | 70 | `declaration-track:8c6acd13dbeeba5f4828f67b79395f09efe4f4e76ebbf01753c1ea8b48885f19` |
| 5 | `structure` | [ContextBoundCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/declarations/contextboundcut--770d25385d4a4427321c374f.md) | 75 | `declaration-track:770d25385d4a4427321c374f3dce7f589efa5e148cbe923745d3378cb90e0425` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
