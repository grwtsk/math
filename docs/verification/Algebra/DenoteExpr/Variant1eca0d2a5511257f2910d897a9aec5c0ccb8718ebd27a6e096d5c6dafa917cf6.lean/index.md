# Verification target: GRWTSK.Algebra.DenoteExpr.Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bda144b931d1b8c154637daca12d1304db235b9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/index.md) · [Full source](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bda144b931d1b8c154637daca12d1304db235b9`.

Source path: `GRWTSK/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.Grind.Linarith.Poly.denoteExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/root-lean-grind-linarith-poly-denoteexpr--554623c809ba13861b12ec29.md) | 19 | `declaration-track:554623c809ba13861b12ec29b01548df486f10939d3f5300b570cd93aca41b24` |
| 2 | `def` | [_root_.Lean.Grind.Linarith.Expr.denoteExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/root-lean-grind-linarith-expr-denoteexpr--35d4251f9cf2aaaeb6c98795.md) | 35 | `declaration-track:35d4251f9cf2aaaeb6c9879555cf21aac99fe4fe8797fb33fc4b468412f40e88` |
| 3 | `def` | [mkEq](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/mkeq--726d09b602da1b6e92cf0470.md) | 47 | `declaration-track:726d09b602da1b6e92cf04706f6d3fcd56a2609d73f15a8adbea0e4b60359bf2` |
| 4 | `def` | [DiseqCnstr.denoteExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/diseqcnstr-denoteexpr--f9aa17fd7c8eee65ea51fb3b.md) | 51 | `declaration-track:f9aa17fd7c8eee65ea51fb3b16f37faf434a82edb9d894a7df3ff79d20e48009` |
| 5 | `def` | [denoteIneq](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/denoteineq--52a4df0aa97464777087b71b.md) | 54 | `declaration-track:52a4df0aa97464777087b71b67ee2fef6117875f53a157ebc169d101d25f8248` |
| 6 | `def` | [IneqCnstr.denoteExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/ineqcnstr-denoteexpr--42df9d475644547a50382fe4.md) | 60 | `declaration-track:42df9d475644547a50382fe4dcadcd904a4b7dbb00856d7ccaf3bf68cff301a3` |
| 7 | `def` | [EqCnstr.denoteExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/eqcnstr-denoteexpr--12219509c02df1a70fdbd057.md) | 63 | `declaration-track:12219509c02df1a70fdbd057ee7bb735315430fefdd8fdfccbe191db591a9ad2` |
| 8 | `def` | [denoteNum](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/denotenum--7cbe2c546621ef573a234339.md) | 66 | `declaration-track:7cbe2c546621ef573a2343391e5894794fcd016ae541907a4e149ff2ae406c43` |
| 9 | `def` | [_root_.Lean.Grind.CommRing.Poly.denoteAsIntModuleExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/root-lean-grind-commring-poly-denoteasintmoduleexpr--d302196fdd357c9efe74e2a4.md) | 69 | `declaration-track:d302196fdd357c9efe74e2a480592d21ba13d9536110fd6f1ab536b72955eb4f` |
| 10 | `def` | [_root_.Lean.Grind.CommRing.Poly.toIntModuleExpr](../../../../mathematics/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/declarations/root-lean-grind-commring-poly-tointmoduleexpr--6594ad87848cb9e5721422f9.md) | 74 | `declaration-track:6594ad87848cb9e5721422f9b291d73e36fe81268603dc11cf14e43157020ba3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
