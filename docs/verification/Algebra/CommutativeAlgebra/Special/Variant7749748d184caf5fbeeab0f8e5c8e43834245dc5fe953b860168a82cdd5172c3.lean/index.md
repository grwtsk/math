# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Special.Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "705d66339726d2591b39171146880e467ac5d960",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `705d66339726d2591b39171146880e467ac5d960`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [erfCoeff_lo](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/erfcoeff-lo--5be086fbebb24daa66174c9c.md) | 47 | `declaration-track:5be086fbebb24daa66174c9c32681a7d892ba9ed9553f41729dc6061b8f01767` |
| 2 | `def` | [erfCoeff_hi](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/erfcoeff-hi--a82bcde9df5ede3599c30d7a.md) | 50 | `declaration-track:a82bcde9df5ede3599c30d7a78abd280e4dc0c91fb0dec992cc5743bfa79cca4` |
| 3 | `def` | [erfTaylorCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/erftaylorcoeffs--54eb8c0400201375fa034804.md) | 54 | `declaration-track:54eb8c0400201375fa0348046a26c5d4033e7ac35429f9b7041192e75d46c454` |
| 4 | `def` | [erfTaylorPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/erftaylorpoly--e60c63a49414137406460c3f.md) | 64 | `declaration-track:e60c63a49414137406460c3fc71c3f6833b82d33259a65f9a7c18b6bee7702c3` |
| 5 | `def` | [erfRemainderBound](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/erfremainderbound--259d962a4bcde25d78816215.md) | 69 | `declaration-track:259d962a4bcde25d7881621568af4d433915d1b4f0a9a8f4f67b09cbcf104bf6` |
| 6 | `theorem` | [erfRemainderBound_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/erfremainderbound-nonneg--d426757302ba92bbfd85bab8.md) | 78 | `result-track:d426757302ba92bbfd85bab86d1387ebdc4ec92cc72342be877c411cee8e70f7` |
| 7 | `def` | [tmErf](../../../../../mathematics/Algebra/CommutativeAlgebra/Special/Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3.lean/declarations/tmerf--ce55ba8dae39a2114e45ba2d.md) | 93 | `declaration-track:ce55ba8dae39a2114e45ba2d1fe7e35e357799b534eec404ed3424fd76c10abd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
