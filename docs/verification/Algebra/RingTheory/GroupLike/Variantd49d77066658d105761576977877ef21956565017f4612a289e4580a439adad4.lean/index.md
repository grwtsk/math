# Verification target: GRWTSK.Algebra.RingTheory.GroupLike.Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25124f1abf8e97a4cc29e06692dde1b5b002f89c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25124f1abf8e97a4cc29e06692dde1b5b002f89c`.

Source path: `GRWTSK/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsGroupLikeElem](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/isgrouplikeelem--3039c39a551109a5a9658d9d.md) | 37 | `declaration-track:3039c39a551109a5a9658d9d3c2dbec623fecda5c2ea1cecf826eebe28447005` |
| 2 | `lemma` | [isGroupLikeElem_self](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/isgrouplikeelem-self--927873a20eac8f9e6c8574cd.md) | 45 | `result-track:927873a20eac8f9e6c8574cd25b90dec61a3f308161a3522cddf837f89045c74` |
| 3 | `lemma` | [IsGroupLikeElem.ne_zero](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/isgrouplikeelem-ne-zero--aea7eee2e4026db79ec84ba8.md) | 48 | `result-track:aea7eee2e4026db79ec84ba848ac8fc841cf0ae1221a6afbbc2c455a320ccb55` |
| 4 | `lemma` | [IsGroupLikeElem.map](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/isgrouplikeelem-map--3529e206e6feba1eb299ee12.md) | 52 | `result-track:3529e206e6feba1eb299ee128d7c952dc5af3473f3b3171efbe3709e402a15fc` |
| 5 | `lemma` | [isGroupLikeElem_map_equiv](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/isgrouplikeelem-map-equiv--dd9765a1c21bf4330db428cc.md) | 58 | `result-track:dd9765a1c21bf4330db428cc39e6a2938c8ea1bc568c183e16da02f132990159` |
| 6 | `structure` | [GroupLike](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/grouplike--95767606c8fc635120e01aee.md) | 66 | `declaration-track:95767606c8fc635120e01aeec4107269e38c0b4c1db6e957e6f4062dcee9790e` |
| 7 | `instance` | [instCoeOut](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/instcoeout--6bc8e5b176a1179a96ed13e6.md) | 79 | `declaration-track:6bc8e5b176a1179a96ed13e6b051e4b9db2fb4b18a1b10e24a5b7c007f4f85c5` |
| 8 | `lemma` | [val_injective](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/val-injective--33122e8b063db151a1c845a3.md) | 81 | `result-track:33122e8b063db151a1c845a3b6987f9f9fd8c9cfb0bd94e0a9651071ddfa9930` |
| 9 | `lemma` | [val_inj](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/val-inj--04bfdcad0e0e6b693c807376.md) | 83 | `result-track:04bfdcad0e0e6b693c807376b187badd69c7f5a2bb28992ed9053bfdbeffd0e7` |
| 10 | `def` | [valEquiv](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/valequiv--f60e53c9cc033738c571aa67.md) | 88 | `declaration-track:f60e53c9cc033738c571aa6786a3ce43a6a9336861a10274300ca6693c4bcbf8` |
| 11 | `lemma` | [linearIndepOn_isGroupLikeElem](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/linearindepon-isgrouplikeelem--86551914096a66fb7a8685ac.md) | 103 | `result-track:86551914096a66fb7a8685acc89f31a2234734fa2330bde71f13e84eba534925` |
| 12 | `lemma` | [linearIndep_groupLikeVal](../../../../../mathematics/Algebra/RingTheory/GroupLike/Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4.lean/declarations/linearindep-grouplikeval--9656cceb0592395da4025681.md) | 157 | `result-track:9656cceb0592395da40256818e6e503ff35d7e545565708ed5e53d875e78c02d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
