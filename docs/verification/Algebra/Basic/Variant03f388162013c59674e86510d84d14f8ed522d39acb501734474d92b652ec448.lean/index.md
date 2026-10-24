# Verification target: GRWTSK.Algebra.Basic.Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "196c467a47072a27f905f8d62defa5a6dcd7ec2f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `196c467a47072a27f905f8d62defa5a6dcd7ec2f`.

Source path: `GRWTSK/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Invertible` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Units.neg_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/units-neg-smul--d173687ae96ce58120578236.md) | 28 | `result-track:d173687ae96ce581205782368500c21a6bde0e02a261180b59e87603a350121c` |
| 2 | `theorem` | [invOf_two_smul_add_invOf_two_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/invof-two-smul-add-invof-two-smul--d08e8cdd05f504754a12044b.md) | 33 | `result-track:d08e8cdd05f504754a12044b527845f5aea29d3040022c9d9f72150223e7d427` |
| 3 | `theorem` | [map_inv_natCast_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/map-inv-natcast-smul--21ff8a11ff64c9df4c1f3bc6.md) | 38 | `result-track:21ff8a11ff64c9df4c1f3bc644ff935f23e2ac80ff6a005065cf92dac4beabd3` |
| 4 | `theorem` | [map_inv_intCast_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/map-inv-intcast-smul--5cf491a4e0161c18cff4a240.md) | 55 | `result-track:5cf491a4e0161c18cff4a240f981b7b679e5304625ad98b1c15a92c3f925e477` |
| 5 | `theorem` | [inv_natCast_smul_eq](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/inv-natcast-smul-eq--ad4bd7bd785c206e018c714b.md) | 65 | `result-track:ad4bd7bd785c206e018c714b5d42e26800b92d45a449f525db076b01bf8bda46` |
| 6 | `theorem` | [inv_intCast_smul_eq](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/inv-intcast-smul-eq--ef8f8f25a0f6d0f11782fe49.md) | 72 | `result-track:ef8f8f25a0f6d0f11782fe4930af1fa4e3b1796be438ef89601fb0164cef378c` |
| 7 | `theorem` | [inv_natCast_smul_comm](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/inv-natcast-smul-comm--e4bffd24ad1fc27cf1ae7bf3.md) | 78 | `result-track:e4bffd24ad1fc27cf1ae7bf3ad00dbb41a50ace5c6aa567d4a0f98341c1ea47b` |
| 8 | `theorem` | [inv_intCast_smul_comm](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/inv-intcast-smul-comm--6888b36dc5371977386dd984.md) | 85 | `result-track:6888b36dc5371977386dd9846ba157fffbf7e16a0a5780d3749d4a37835d410d` |
| 9 | `lemma` | [support_smul_subset_left](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/support-smul-subset-left--695bf3ff5dd2ffbc0b38ccf1.md) | 92 | `result-track:695bf3ff5dd2ffbc0b38ccf13ba82fc7923cca0e9a7a1e860f975aab2cf44513` |
| 10 | `lemma` | [support_smul_subset_right](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/support-smul-subset-right--72b9b23e2de3f73db527fc3b.md) | 98 | `result-track:72b9b23e2de3f73db527fc3b3b5030c2f9aef07795b5ba369787d5c23f3432dd` |
| 11 | `lemma` | [support_const_smul_of_ne_zero](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/support-const-smul-of-ne-zero--019b986cdfc5825e334f8542.md) | 102 | `result-track:019b986cdfc5825e334f854241b10ca584578a49f76e92ed706da20e4fdb9b7b` |
| 12 | `lemma` | [support_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/support-smul--7af58c806727705311f1ac1c.md) | 106 | `result-track:7af58c806727705311f1ac1c9b7eaf72c36875fddb057a5ca8869c924d5fa369` |
| 13 | `lemma` | [support_const_smul_subset](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/support-const-smul-subset--e9500bd43368b8ee68d93aac.md) | 110 | `result-track:e9500bd43368b8ee68d93aacba2a40d8671db633f595b6c363cfac5be70f525d` |
| 14 | `lemma` | [indicator_smul_apply](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-smul-apply--199f33b065537c6ffcfccbb3.md) | 119 | `result-track:199f33b065537c6ffcfccbb35a84a6b633dc8e2a277e39be64648e8030577d28` |
| 15 | `lemma` | [indicator_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-smul--f105f09c2d42653fa4f2ce02.md) | 125 | `result-track:f105f09c2d42653fa4f2ce028aa839d2ec701f4bfbca20299fd5214c1e43a832` |
| 16 | `lemma` | [indicator_const_smul_apply](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-const-smul-apply--6e53e9fab5df11088b2364d4.md) | 129 | `result-track:6e53e9fab5df11088b2364d41b9f05300ca4455b1a7c49912b02c4390708ddfb` |
| 17 | `lemma` | [indicator_const_smul](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-const-smul--bc25f15982574d51c43ae8ad.md) | 133 | `result-track:bc25f15982574d51c43ae8ad4bbc3a3b3ff9256e6f715231999c2604752a24af` |
| 18 | `lemma` | [indicator_smul_apply_left](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-smul-apply-left--077b0c5b00e8cdfba1814268.md) | 142 | `result-track:077b0c5b00e8cdfba1814268f4719d1305395bc3fe406a953e1646d8e0968ba6` |
| 19 | `lemma` | [indicator_smul_left](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-smul-left--88b919b79e16d1fc85da82db.md) | 148 | `result-track:88b919b79e16d1fc85da82dbc724e7ac594a0bb91ab67488eaa6ab34baeb1cd7` |
| 20 | `lemma` | [indicator_smul_const_apply](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-smul-const-apply--078f7987ae5f383cee491837.md) | 152 | `result-track:078f7987ae5f383cee4918371f2ff60987a188a4cfb490f9cf5883f2426bac27` |
| 21 | `lemma` | [indicator_smul_const](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/indicator-smul-const--b6c8ea26aa3b6102203cd307.md) | 155 | `result-track:b6c8ea26aa3b6102203cd30730afe721ea45add9a76a98eda6f3172cd3cf0635` |
| 22 | `lemma` | [smul_indicator_one_apply](../../../../mathematics/Algebra/Basic/Variant03f388162013c59674e86510d84d14f8ed522d39acb501734474d92b652ec448.lean/declarations/smul-indicator-one-apply--19ff90a32f3954910d8bad9b.md) | 165 | `result-track:19ff90a32f3954910d8bad9b2a08fc52b2de5e94c583e61eb0263e0ac7c18027` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
