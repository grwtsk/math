# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eq.Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8af2e04546c4adae6e581ce3ea45bc894ea4924b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8af2e04546c4adae6e581ce3ea45bc894ea4924b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Inv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isNat_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/declarations/isnat-eq-false--51f4463f52eadb492dd8f7f7.md) | 26 | `result-track:51f4463f52eadb492dd8f7f7e7d12d9d54f96899830b92562d4507ccee819299` |
| 2 | `theorem` | [isInt_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/declarations/isint-eq-false--85675582c5e61705d6bfa4ee.md) | 30 | `result-track:85675582c5e61705d6bfa4ee3fdfb7a60a40bea60ad67a52a36309e1e5eac681` |
| 3 | `theorem` | [Rat.invOf_denom_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/declarations/rat-invof-denom-swap--773455caad963260a9bf6c1b.md) | 34 | `result-track:773455caad963260a9bf6c1b210eb152283a20f85b3480a245841bc6c9d4657b` |
| 4 | `theorem` | [isRat_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/declarations/israt-eq-false--68e2653c4eb0012147a61da9.md) | 39 | `result-track:68e2653c4eb0012147a61da9de058ae5f528a69883cceaef61c80c4944336563` |
| 5 | `def` | [evalEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant11ab1589e05f3c2b63918bf6e8bf7036eb819f3f224d5141e9a0a222e94415d9.lean/declarations/evaleq--a8f6100d995a941c3138abc8.md) | 48 | `declaration-track:a8f6100d995a941c3138abc83d9977b31647032e08b17be733d4f9cb85f8c6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
