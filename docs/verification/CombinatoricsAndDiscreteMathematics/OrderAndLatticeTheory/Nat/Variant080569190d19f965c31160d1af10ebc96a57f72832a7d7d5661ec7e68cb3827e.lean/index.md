# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Nat.Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23a8ab573b3add3849e1b2dbb9e235c856f38cf3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23a8ab573b3add3849e1b2dbb9e235c856f38cf3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/declarations/instorderbot--639eafc20881fcac8047c406.md) | 32 | `declaration-track:639eafc20881fcac8047c406dcda92fab7f33539101f9e628957780db7a77ed5` |
| 2 | `instance` | [instNoMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/declarations/instnomaxorder--aceb8f73ccef28f428437dea.md) | 36 | `declaration-track:aceb8f73ccef28f428437dea453fbc0a2996c545dee327a4cbbff7c12be011ed` |
| 3 | `lemma` | [bot_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/declarations/bot-eq-zero--c2ff78d0bbecd55060bc1bb1.md) | 41 | `result-track:c2ff78d0bbecd55060bc1bb1280e12cc334c1e9ad4ba62a11b2e2dc4d0fedd26` |
| 4 | `lemma` | [isLeast_find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/declarations/isleast-find--c6b55236935618c96e531a1c.md) | 44 | `result-track:c6b55236935618c96e531a1cd77b22b4c87ebe267714360876719610d27abae4` |
| 5 | `lemma` | [Set.Nonempty.isLeast_natFind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Nat/Variant080569190d19f965c31160d1af10ebc96a57f72832a7d7d5661ec7e68cb3827e.lean/declarations/set-nonempty-isleast-natfind--aaf50145637f956bb8ab691d.md) | 51 | `result-track:aaf50145637f956bb8ab691dafd87bba0ab816642efb82eea0284d9245d50d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
