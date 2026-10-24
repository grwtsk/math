# Verification target: GRWTSK.Algebra.GroupTheory.Aut.Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50da9f999c7295bd8ca2fee78353a6ce1ce19bba",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50da9f999c7295bd8ca2fee78353a6ce1ce19bba`.

Source path: `GRWTSK/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingAut](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/declarations/ringaut--6812da2c88cd523d3eb4e3f0.md) | 28 | `declaration-track:6812da2c88cd523d3eb4e3f0b5584ef0a30d3707c125d0185036f86cfc0ea151` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/declarations/instance--cce5dc77434b04caef754ca5.md) | 35 | `declaration-track:cce5dc77434b04caef754ca5108dc3b307822f8e49627b51900edc9a6a7a573e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/declarations/instance--fcbda91b86dc34805c761a14.md) | 44 | `declaration-track:fcbda91b86dc34805c761a14e831006f096bf6e8e36227f04593c1d92d58bcbe` |
| 4 | `def` | [toAddAut](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/declarations/toaddaut--42e40fe6b6a0b6d54d2749fb.md) | 48 | `declaration-track:42e40fe6b6a0b6d54d2749fbedb7836499f45a456629485ee7ffaa2e85555e09` |
| 5 | `def` | [toMulAut](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/declarations/tomulaut--b04adaaf4557cf27e0604d1c.md) | 54 | `declaration-track:b04adaaf4557cf27e0604d1c6554757c861eda07a313ac0523ee3db3d4b42eab` |
| 6 | `def` | [toPerm](../../../../../mathematics/Algebra/GroupTheory/Aut/Variant2a494f613822365f582ddcf393b8eb32c3b0db4e568bd87495a57505db0cce97.lean/declarations/toperm--b3317f4a5341fc6dbefab435.md) | 60 | `declaration-track:b3317f4a5341fc6dbefab4351e10c2b403d91395bae7a7ea5fc2ade2c3d2ca2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
