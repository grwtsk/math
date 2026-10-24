# Verification target: GRWTSK.Algebra.UniversalAlgebra.AbsoluteValue.Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02821cd5c9b0b8441f02146543c38a86f9ee45ed",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02821cd5c9b0b8441f02146543c38a86f9ee45ed`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AbsoluteValue.map_units_int](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean/declarations/absolutevalue-map-units-int--b81d89cb7a760b9ffdc97bc2.md) | 27 | `result-track:b81d89cb7a760b9ffdc97bc27927e07d9802463b56c36f668099163f15a3587d` |
| 2 | `theorem` | [AbsoluteValue.map_units_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean/declarations/absolutevalue-map-units-intcast--4ebb98e571d98cac771d3600.md) | 31 | `result-track:4ebb98e571d98cac771d3600762f86920777835a7b589c290b28d984f54b7b24` |
| 3 | `theorem` | [AbsoluteValue.map_units_int_smul](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean/declarations/absolutevalue-map-units-int-smul--9809cb34813303cca0f2b6e9.md) | 35 | `result-track:9809cb34813303cca0f2b6e93ed7e3c9c3c2bbd8dc99bd09fb68d624d72b0661` |
| 4 | `def` | [Int.natAbsHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc.lean/declarations/int-natabshom--3a99947815af3cfa620c0ade.md) | 40 | `declaration-track:3a99947815af3cfa620c0aded5e253b8372abddee9576ea45befd6deb76d2ecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
