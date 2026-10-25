# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointTransport.Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2dfa320be06bef3eb17e5d303910fbcfc9b38df",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2dfa320be06bef3eb17e5d303910fbcfc9b38df`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.PropertyTransport` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.DiscreteFixedPoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFixedPointProperty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/declarations/exactfixedpointproperty--c49a6a080976720e0b188793.md) | 31 | `declaration-track:c49a6a080976720e0b1887937c95752a8d622a52a98557621f278ed4d3e2b8c1` |
| 2 | `structure` | [OperatorPathNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/declarations/operatorpathnaturality--168c5248a72af805419de898.md) | 44 | `declaration-track:168c5248a72af805419de8985e3823761354cd0128331ae0efd152621bb8feb2` |
| 3 | `theorem` | [fixedPointNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/declarations/fixedpointnaturality--d02203759b760704edf896b1.md) | 64 | `result-track:d02203759b760704edf896b1ba0be612ba3a3dcb5aba6b6125a274da435a3e7a` |
| 4 | `def` | [transportFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/declarations/transportfixedpoint--49044f69c76d8e013968bcfc.md) | 82 | `declaration-track:49044f69c76d8e013968bcfcaf5b26927718f957dd7caa285e9dc7b0d0c618ad` |
| 5 | `theorem` | [transportFixedPoint_point](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d.lean/declarations/transportfixedpoint-point--a17972f6ba21243bac19d194.md) | 94 | `result-track:a17972f6ba21243bac19d1948a37a51c22b6d1c53b4c615383fd85a8db6f9fe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
