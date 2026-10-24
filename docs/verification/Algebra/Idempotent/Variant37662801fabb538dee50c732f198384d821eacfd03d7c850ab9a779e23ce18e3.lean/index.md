# Verification target: GRWTSK.Algebra.Idempotent.Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2197f748aed0fe890385f13b4000bab01b2a8553",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2197f748aed0fe890385f13b4000bab01b2a8553`.

Source path: `GRWTSK/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Idempotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_sub](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/one-sub--6d0edb8ccd9227ab43bcfba0.md) | 25 | `result-track:6d0edb8ccd9227ab43bcfba0af70bab81d5d1eb92b6d85859be538d89742ad6a` |
| 2 | `lemma` | [one_sub_iff](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/one-sub-iff--a39201fc0e61a3951347d894.md) | 29 | `result-track:a39201fc0e61a3951347d894b9d4c68ec6354e110231bd753dd347292f54d145` |
| 3 | `lemma` | [mul_one_sub_self](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/mul-one-sub-self--54c0d7dd0380b3689682c33f.md) | 33 | `result-track:54c0d7dd0380b3689682c33f6a77e8469e16ba5cfe8231818335b8bb27fc408c` |
| 4 | `lemma` | [one_sub_mul_self](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/one-sub-mul-self--f6c1d459f2d753915eccc401.md) | 37 | `result-track:f6c1d459f2d753915eccc4015d7720f92eec30ae5995e70173d757d0f3a5050a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/instance--e5cb62fe34b3c4b4e89b826c.md) | 40 | `declaration-track:e5cb62fe34b3c4b4e89b826cc6835a7acdf37f1168d8c3200fd6d2ee8835ce1a` |
| 6 | `lemma` | [coe_compl](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/coe-compl--bf0179ec04b76574d27c8af6.md) | 42 | `result-track:bf0179ec04b76574d27c8af64ec41ccc4f8f4c647d517f8584a8411485dd9211` |
| 7 | `lemma` | [compl_compl](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/compl-compl--6c939f649fd139c006fec9db.md) | 44 | `result-track:6c939f649fd139c006fec9db38f7a7efc05c1fbfb15a6ab0e731f6444d00af6b` |
| 8 | `lemma` | [zero_compl](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/zero-compl--528c69c1e54b6e339b7465b9.md) | 45 | `result-track:528c69c1e54b6e339b7465b991762ff547a677fa0834f7b951e94346d3510f5a` |
| 9 | `lemma` | [one_compl](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/one-compl--0f99769ef83129d2d52fa5c4.md) | 46 | `result-track:0f99769ef83129d2d52fa5c4ce8c5d9f15b54c44d59679de3e93f4fa80026649` |
| 10 | `lemma` | [of_mul_add](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/of-mul-add--6472cbbd0fe0503617773b6f.md) | 53 | `result-track:6472cbbd0fe0503617773b6fa5b3faf3a4d35bc383a1eab59cfb7368d5ce38e8` |
| 11 | `lemma` | [add_sub_mul_of_commute](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/add-sub-mul-of-commute--bb5c0a1ed5001016c6cf06eb.md) | 63 | `result-track:bb5c0a1ed5001016c6cf06ebd9178201870c06a206ff660de71ca3e3d253f24a` |
| 12 | `lemma` | [add_sub_mul](../../../../mathematics/Algebra/Idempotent/Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3.lean/declarations/add-sub-mul--e66fe78bcd35d9e4b8de3a39.md) | 74 | `result-track:e66fe78bcd35d9e4b8de3a39b70ac0768a8773ed4c996f5ada9d81472cd2edbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
