# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Perm.Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf6aa654c15e44e6507143793a3f5903760d3c51",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf6aa654c15e44e6507143793a3f5903760d3c51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/permsoflist--6b13836ace97ab96eea7ae3b.md) | 39 | `declaration-track:6b13836ace97ab96eea7ae3b48629173e66941fa6c77dd33b7c0b53db3652c6c` |
| 2 | `theorem` | [length_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/length-permsoflist--8a01084f06a1131a80ec4485.md) | 43 | `result-track:8a01084f06a1131a80ec4485c31ab672cff7d27d76c5a64341f572d21e848d66` |
| 3 | `theorem` | [mem_permsOfList_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/mem-permsoflist-of-mem--63d946dd19d53637fd74b564.md) | 48 | `result-track:63d946dd19d53637fd74b564e68f7313f46388e225ccf21e4e56ff8bdc656641` |
| 4 | `theorem` | [mem_of_mem_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/mem-of-mem-permsoflist--81b4656379c892980a6b014d.md) | 70 | `result-track:81b4656379c892980a6b014dc2aa77dc4112158a4e3c6d85ef768c77a0c97079` |
| 5 | `theorem` | [mem_permsOfList_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/mem-permsoflist-iff--5a273830fdeff3d22962f4e7.md) | 87 | `result-track:5a273830fdeff3d22962f4e7b46004fa9b9912dfc580e3d7e85b88acc59aedcf` |
| 6 | `theorem` | [nodup_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/nodup-permsoflist--34019754c25243d85fd82656.md) | 91 | `result-track:34019754c25243d85fd82656a69f042632ec46a1e4f6779b3a27d70ad43c320e` |
| 7 | `def` | [permsOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/permsoffinset--cdab66012bfefdac0677e530.md) | 120 | `declaration-track:cdab66012bfefdac0677e530d8ca08281fbbde8aa84189d42c45133c2a8ecc11` |
| 8 | `theorem` | [mem_perms_of_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/mem-perms-of-finset-iff--b1611fba25b8c9a5541e3339.md) | 127 | `result-track:b1611fba25b8c9a5541e3339773faf6b81971ee8d73fca086be7ab09c8807ff6` |
| 9 | `theorem` | [card_perms_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/card-perms-of-finset--9c963c79a61f26933e57e7ff.md) | 131 | `result-track:9c963c79a61f26933e57e7ff1f0c89e0a98c97705cdd149126ed6a62755a1845` |
| 10 | `def` | [fintypePerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/fintypeperm--ba470137c333529f005fc491.md) | 136 | `declaration-track:ba470137c333529f005fc49102f0ce7e107893e671a516f98dddeb986e349dd6` |
| 11 | `instance` | [Equiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/equiv-instfintype--0cab533c95cf617796604edf.md) | 139 | `declaration-track:0cab533c95cf617796604edf298c7f27e7f076c34f46ab01681ba424cf4e8c31` |
| 12 | `instance` | [MulEquiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/mulequiv-instfintype--dce1a1fb965fb0adca2a0e55.md) | 148 | `declaration-track:dce1a1fb965fb0adca2a0e55248e1cf21902237ab809664c7ee33deea1b13d73` |
| 13 | `theorem` | [Fintype.card_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/fintype-card-perm--8ecb40bbea256ee200777a54.md) | 155 | `result-track:8ecb40bbea256ee200777a541e1f3af5e2e3fb0d602ad322d7436a13551c19c1` |
| 14 | `theorem` | [Fintype.card_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant1a021b8a92315c3886238a689e3f275e9b74eab635ef4cc26a54bab15bb18548.lean/declarations/fintype-card-equiv--436d244172c2242022ea95de.md) | 158 | `result-track:436d244172c2242022ea95de35f3af221a2ca6c0bedc4c71206286e8fbd35f15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
