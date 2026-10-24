# Verification target: GRWTSK.Algebra.CharZero.Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57fee95bb892fe0c56807ff3d18d191313498d7b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/index.md) · [Full source](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57fee95bb892fe0c56807ff3d18d191313498d7b`.

Source path: `GRWTSK/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.castEmbedding](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/nat-castembedding--80080825daca680522af8c1c.md) | 35 | `declaration-track:80080825daca680522af8c1c5554c6d8c73a31d07373e52e9602474682f38cbd` |
| 2 | `instance` | [CharZero.NeZero.two](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/charzero-nezero-two--704de508b32302cb65dc7d17.md) | 37 | `declaration-track:704de508b32302cb65dc7d1713040aea82692841007b10dad4af9f22f2922bf8` |
| 3 | `lemma` | [support_natCast](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/support-natcast--57e0230ac3dffea1a7029830.md) | 42 | `result-track:57e0230ac3dffea1a7029830b63549cb3fb814f4dc001d2eda4637bb490ca676` |
| 4 | `lemma` | [mulSupport_natCast](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/mulsupport-natcast--a672969122da1a1c2ffcc9e1.md) | 45 | `result-track:a672969122da1a1c2ffcc9e1733f42c8fbf0ac91c85d57fe0129ee0758d86dce` |
| 5 | `lemma` | [charZero](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/charzero--36807762480e43d207e9ec64.md) | 56 | `result-track:36807762480e43d207e9ec6406973a50494524f555c6a29c5e16ada8a42ec900` |
| 6 | `lemma` | [charZero_iff](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/charzero-iff--0edbebb7a54f1975a2f83f0c.md) | 60 | `result-track:0edbebb7a54f1975a2f83f0cfb46e6c3abbd1d99a2c6482ac3c023e9319d8e24` |
| 7 | `lemma` | [injective_nat](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/injective-nat--4c832b79da3332f344e8a8a7.md) | 65 | `result-track:4c832b79da3332f344e8a8a7130ced55c97bc6dec72186755811309058dadfff` |
| 8 | `theorem` | [add_self_eq_zero](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/add-self-eq-zero--92a4fb25173c02d32c3faa28.md) | 73 | `result-track:92a4fb25173c02d32c3faa28f621ffefd00c646206d7d7c7d397bc24add527a2` |
| 9 | `lemma` | [Nat.cast_pow_eq_one](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/nat-cast-pow-eq-one--e282e2b694fe8b38b36e3bd7.md) | 81 | `result-track:e282e2b694fe8b38b36e3bd7f1f55d1a7d08718e35cac4dadc0610b126ab09e9` |
| 10 | `theorem` | [CharZero.neg_eq_self_iff](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/charzero-neg-eq-self-iff--5f59ead61b2907a471a49a41.md) | 89 | `result-track:5f59ead61b2907a471a49a414528fbc9efa80e8356226045a478ca719552abc0` |
| 11 | `theorem` | [CharZero.eq_neg_self_iff](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/charzero-eq-neg-self-iff--3a6162a79c11ed47bc3b4f9c.md) | 92 | `result-track:3a6162a79c11ed47bc3b4f9ce8fb28977150513b5a1aa92eb020fb1380f9219a` |
| 12 | `theorem` | [nat_mul_inj](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/nat-mul-inj--d5310b15e1b5ef2d1b5e6a53.md) | 95 | `result-track:d5310b15e1b5ef2d1b5e6a53b56a8dd6b05453b16215890dcb5d59b1fa900190` |
| 13 | `theorem` | [nat_mul_inj'](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/nat-mul-inj--09c6a507ce36a878f723ca39.md) | 99 | `result-track:09c6a507ce36a878f723ca39f783c36751f7ee6216939ad4034e6ae51de4ba6a` |
| 14 | `theorem` | [units_ne_neg_self](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/units-ne-neg-self--756a3f72a04b9646878b7b5f.md) | 108 | `result-track:756a3f72a04b9646878b7b5f00d6d3503df1bd351ebdeffd3fb876b39798e59e` |
| 15 | `theorem` | [neg_units_ne_self](../../../../mathematics/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/declarations/neg-units-ne-self--acb542b21aafbac2e2ff8c6e.md) | 113 | `result-track:acb542b21aafbac2e2ff8c6e7912c5ce21c056a0e02563fa153e1c6a0847ea15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
