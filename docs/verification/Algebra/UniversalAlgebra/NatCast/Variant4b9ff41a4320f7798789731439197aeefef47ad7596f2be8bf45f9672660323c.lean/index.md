# Verification target: GRWTSK.Algebra.UniversalAlgebra.NatCast.Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a566781c46668b8c947104e5b7e371daebfd0974",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a566781c46668b8c947104e5b7e371daebfd0974`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_factorial_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/declarations/natcast-factorial-of-le--b1d7b68ec9935a4839f7dd44.md) | 35 | `result-track:b1d7b68ec9935a4839f7dd44d8413afca10b35a6be33675104680ee04d49658b` |
| 2 | `theorem` | [natCast_factorial_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/declarations/natcast-factorial-of-lt--1cb18a29436534f1835093a8.md) | 47 | `result-track:1cb18a29436534f1835093a87992bdb49759aa1aea9df399223748de14b81f76` |
| 3 | `theorem` | [natCast_factorial_of_algebra](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/declarations/natcast-factorial-of-algebra--8d4984c41b3ee9e0f200e36d.md) | 52 | `result-track:8d4984c41b3ee9e0f200e36de9cec5115090267056cd2baedde7acef32043746` |
| 4 | `theorem` | [natCast_factorial_iff_of_charP](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/declarations/natcast-factorial-iff-of-charp--4b2802ba478f01bfc8237403.md) | 64 | `result-track:4b2802ba478f01bfc8237403535acaed4769c6a4c22b5de4b2c68d7ab7bad286` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
