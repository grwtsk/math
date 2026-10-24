# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c9adfb63879116a11487bcec4bca47efcfca3e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c9adfb63879116a11487bcec4bca47efcfca3e`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Monoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/monoid-ext--246670a7f73a585522a6578a.md) | 43 | `result-track:246670a7f73a585522a6578a88fec6932f881df0417c767d60ad7280e826465b` |
| 2 | `theorem` | [CommMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/commmonoid-tomonoid-injective--8fe57cb5ec23954180aefab5.md) | 59 | `result-track:8fe57cb5ec23954180aefab5771ed611b05dce02855b7b9e08c6cd1e201d2815` |
| 3 | `theorem` | [CommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/commmonoid-ext--6b5d84a84fe87eda8b3fe1d1.md) | 65 | `result-track:6b5d84a84fe87eda8b3fe1d1ede9219ee6ff575a7320160a7601fc99870de172` |
| 4 | `theorem` | [LeftCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/leftcancelmonoid-tomonoid-injective--c5745b2dd595d87bb25c169f.md) | 70 | `result-track:c5745b2dd595d87bb25c169f4010f0a0451fb5dd9c73b0320d67e5c5cd0ef560` |
| 5 | `theorem` | [LeftCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/leftcancelmonoid-ext--a42779b68fddb28f2ae726ec.md) | 76 | `result-track:a42779b68fddb28f2ae726ecd0cd92f7ad04f73f4aa622fc2dc8944158b3a9c4` |
| 6 | `theorem` | [RightCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/rightcancelmonoid-tomonoid-injective--bf23512c190c7f5e5a8122a1.md) | 82 | `result-track:bf23512c190c7f5e5a8122a18ff03e458e53788d0aa4656d1dd3992e419934f6` |
| 7 | `theorem` | [RightCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/rightcancelmonoid-ext--8c5a3a1dcc461710ed622dde.md) | 88 | `result-track:8c5a3a1dcc461710ed622dde5e9cf1ff3cd2e75634d4b095dfdc6965c0c57fd3` |
| 8 | `theorem` | [CancelMonoid.toLeftCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/cancelmonoid-toleftcancelmonoid-injective--af25010d912b63f4d3bb5133.md) | 94 | `result-track:af25010d912b63f4d3bb51336d2c5425055efce87abf59a84925e55dc212ec0b` |
| 9 | `theorem` | [CancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/cancelmonoid-ext--701e642b9a504570dc749355.md) | 100 | `result-track:701e642b9a504570dc74935575d133e8e7eaf6dda031668b716eb441b85f0b1a` |
| 10 | `theorem` | [CancelCommMonoid.toCommMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/cancelcommmonoid-tocommmonoid-injective--a4fc7a615ae0ca3c45472941.md) | 106 | `result-track:a4fc7a615ae0ca3c454729418d8122331007ca1bedff31097c5d4fbd8ff355d0` |
| 11 | `theorem` | [CancelCommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/cancelcommmonoid-ext--67caf87d5675f772d0efc252.md) | 114 | `result-track:67caf87d5675f772d0efc25243e943742028e269030dca565ca315cf5ee444e0` |
| 12 | `theorem` | [DivInvMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/divinvmonoid-ext--32f4e02a84ef348f5cc08ff7.md) | 120 | `result-track:32f4e02a84ef348f5cc08ff71856f72fb943c020b054ef45050d63627fb55a5b` |
| 13 | `lemma` | [Group.toDivInvMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/group-todivinvmonoid-injective--cb797902d049dc2bbadb5595.md) | 141 | `result-track:cb797902d049dc2bbadb55952cd949050e877932d5cdb11bf36c423f21ce98dc` |
| 14 | `theorem` | [Group.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/group-ext--f2617a9a81e4fdce72087f6a.md) | 145 | `result-track:f2617a9a81e4fdce72087f6ac6c288176cb9738f17dfed2c2e3720dbd1373a28` |
| 15 | `lemma` | [CommGroup.toGroup_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/commgroup-togroup-injective--93b88f46698bf3f08817f97c.md) | 158 | `result-track:93b88f46698bf3f08817f97c4f1a5dc95612bd2071178dd0944af6c152f34efc` |
| 16 | `theorem` | [CommGroup.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant698c269ebb66370c0ddde49da6df8da78f562c4ac711b7151af4112f8ea6490c.lean/declarations/commgroup-ext--f513236ad54c0d6dcfff8fb1.md) | 162 | `result-track:f513236ad54c0d6dcfff8fb1797e63b0ef890d7b2566714e1a603c0893fab8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
