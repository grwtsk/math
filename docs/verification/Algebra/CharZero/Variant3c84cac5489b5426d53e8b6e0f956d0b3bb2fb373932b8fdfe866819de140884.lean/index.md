# Verification target: GRWTSK.Algebra.CharZero.Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c87768e842322f66fb35fef9bff602a33df8fdd7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/index.md) · [Full source](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c87768e842322f66fb35fef9bff602a33df8fdd7`.

Source path: `GRWTSK/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.castEmbedding](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/nat-castembedding--b858bc73b7687492ef1bbc88.md) | 27 | `declaration-track:b858bc73b7687492ef1bbc88db8d45c0bc2b814e00ed4764fc3a19fa93a87340` |
| 2 | `instance` | [CharZero.NeZero.two](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/charzero-nezero-two--3f95e69643ec63fb0764d2a8.md) | 29 | `declaration-track:3f95e69643ec63fb0764d2a8e3934ad479974fd11ec9645d7761bc9bbd784a78` |
| 3 | `lemma` | [support_natCast](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/support-natcast--c410e4e91ada24eee7c9e5f2.md) | 34 | `result-track:c410e4e91ada24eee7c9e5f275f5bc02981ade99947b9f3360deb16ae1b42f75` |
| 4 | `lemma` | [mulSupport_natCast](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/mulsupport-natcast--05db295b4eb94833bb8b2485.md) | 37 | `result-track:05db295b4eb94833bb8b24857261922290cb0cc37334732d0169c6e634a20d12` |
| 5 | `lemma` | [charZero](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/charzero--89f3d6e0e8c0c6fd37b64c7f.md) | 48 | `result-track:89f3d6e0e8c0c6fd37b64c7f4f2676578d8a2173e59b8cc68b59c636e2f43fae` |
| 6 | `lemma` | [charZero_iff](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/charzero-iff--73e48500983ee2707d4c4676.md) | 52 | `result-track:73e48500983ee2707d4c4676ee9f682425916e83c49ff598b8250adc5ae3c856` |
| 7 | `lemma` | [injective_nat](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/injective-nat--d240e85e3004fa48eebe79b2.md) | 57 | `result-track:d240e85e3004fa48eebe79b20c72e0b142ec7d10c093d7794d701bccf89ed305` |
| 8 | `theorem` | [add_self_eq_zero](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/add-self-eq-zero--e557a89917568b87ef7e71b0.md) | 65 | `result-track:e557a89917568b87ef7e71b08d7547a55199d4daa432c945f9ed91c8e3564dc6` |
| 9 | `lemma` | [Nat.cast_pow_eq_one](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/nat-cast-pow-eq-one--20ffd5921d389d000a05f28b.md) | 73 | `result-track:20ffd5921d389d000a05f28b7f37f08712c4733034bd1fa1aee7f33bc65a83f4` |
| 10 | `theorem` | [CharZero.neg_eq_self_iff](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/charzero-neg-eq-self-iff--50fb728b364c83fb989b9490.md) | 81 | `result-track:50fb728b364c83fb989b949009420d7c5a7d1e58a64b3b2cb083740ffdb2ed62` |
| 11 | `theorem` | [CharZero.eq_neg_self_iff](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/charzero-eq-neg-self-iff--d26697ca78f3fd2830bffb16.md) | 84 | `result-track:d26697ca78f3fd2830bffb1667fb68f1d7177c8c96fddb289ae26c5c8eacb341` |
| 12 | `theorem` | [nat_mul_inj](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/nat-mul-inj--7b66c17329cdc149fa3f4e64.md) | 87 | `result-track:7b66c17329cdc149fa3f4e6423b597fb5e3581f104e65099c6aa512f50b00321` |
| 13 | `theorem` | [nat_mul_inj'](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/nat-mul-inj--0c91fb77571cbc18633a2e1f.md) | 91 | `result-track:0c91fb77571cbc18633a2e1ffd14a9e2b4148bc4ef1930b2e32743c71a1279f9` |
| 14 | `theorem` | [units_ne_neg_self](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/units-ne-neg-self--4365b15a014ad59ad2503db5.md) | 100 | `result-track:4365b15a014ad59ad2503db5212fc0f80f97818cd6c4733404c4b203368e7b28` |
| 15 | `theorem` | [neg_units_ne_self](../../../../mathematics/Algebra/CharZero/Variant3c84cac5489b5426d53e8b6e0f956d0b3bb2fb373932b8fdfe866819de140884.lean/declarations/neg-units-ne-self--bf0173445dc0ea2f49ee797e.md) | 105 | `result-track:bf0173445dc0ea2f49ee797ecb1137a80bddf7064a06a57e97f6fe84bbf2e9a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
