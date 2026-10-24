# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MinMax.Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de014275ed509bebd700df981e9562e26194bbe7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de014275ed509bebd700df981e9562e26194bbe7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/instance--5e725d6c8b901129a62dd08a.md) | 33 | `declaration-track:5e725d6c8b901129a62dd08af88fb04e9f9529b4264148c3fde8fd4128d32554` |
| 2 | `theorem` | [max_le_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-le-max--9cf37bcd3026fe46ac780977.md) | 38 | `result-track:9cf37bcd3026fe46ac78097702e1d91593a3dff3e8818405c41d9cd16a1fe7bd` |
| 3 | `theorem` | [max_le_max_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-le-max-left--e52599fd4729e270dc41a966.md) | 42 | `result-track:e52599fd4729e270dc41a96699f0c63209c31abc1f3a9ff448612348f9dba66c` |
| 4 | `theorem` | [max_le_max_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-le-max-right--1ebf91e27817f9c032d19c6c.md) | 45 | `result-track:1ebf91e27817f9c032d19c6c18ab5eed132fb18b36bcc98cc7dd58a64c031449` |
| 5 | `theorem` | [le_max_of_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/le-max-of-le-left--ed40764a35032b5538670b73.md) | 48 | `result-track:ed40764a35032b5538670b73dcabdf57488b5cf3262f640e739e79f56300eff9` |
| 6 | `theorem` | [le_max_of_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/le-max-of-le-right--5a96b26ec1189ecca3651ea5.md) | 52 | `result-track:5a96b26ec1189ecca3651ea57412b9f747498d828c175c2066a30da4d55bd68c` |
| 7 | `theorem` | [lt_max_of_lt_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/lt-max-of-lt-left--3cfb941aedc12de1f79a092c.md) | 56 | `result-track:3cfb941aedc12de1f79a092cb6ba966f70841042f145fd7dfdc769d94b975537` |
| 8 | `theorem` | [lt_max_of_lt_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/lt-max-of-lt-right--e2e30c79496dacbdfbd9cc46.md) | 60 | `result-track:e2e30c79496dacbdfbd9cc460cff2aed19b074250698475e618b3a9557c53b4b` |
| 9 | `lemma` | [max_min_distrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-min-distrib-left--626aa6322e19d957efe799a1.md) | 64 | `result-track:626aa6322e19d957efe799a1e8e27a05c9d06dfec8461efd2ddafd6ea0f07963` |
| 10 | `lemma` | [max_min_distrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-min-distrib-right--be139817fc1dbf6c1ed2797e.md) | 68 | `result-track:be139817fc1dbf6c1ed2797e7b29a025813aebb73e6780a55278572164daaa20` |
| 11 | `theorem` | [min_le_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-le-max--23d2a345bd79c1ecf2e2b633.md) | 71 | `result-track:23d2a345bd79c1ecf2e2b6332e1f7da538af260a8831738b95f724c72a747345` |
| 12 | `theorem` | [min_eq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-eq-left-iff--7317ec8d6c4b0e74fd36d88b.md) | 75 | `result-track:7317ec8d6c4b0e74fd36d88b0a8c9464195a8002b05b9b91dd4800af0033b155` |
| 13 | `theorem` | [min_eq_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-eq-right-iff--dbc25ad9f977b49279839851.md) | 79 | `result-track:dbc25ad9f977b4927983985187df3b5ca293f4006fd945c1472bc8ba44025cb8` |
| 14 | `theorem` | [min_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-cases--dc28cf9de480728cf84f73e2.md) | 89 | `result-track:dc28cf9de480728cf84f73e2442972b2d82d1b973a239e6a67962927d7678207` |
| 15 | `theorem` | [min_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-eq-iff--867abf500d97de2851eec66a.md) | 93 | `result-track:867abf500d97de2851eec66a85c886af1702a3412b0380b983d314468db0b866` |
| 16 | `theorem` | [min_lt_min_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-lt-min-left-iff--50c9c7dcd788e4ef6b63918c.md) | 97 | `result-track:50c9c7dcd788e4ef6b63918cc69cc6d9ccbd62ff0436f10211bcfa5178a638f4` |
| 17 | `theorem` | [min_lt_min_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-lt-min-right-iff--66e9ca5dd70606fadfc6f64a.md) | 101 | `result-track:66e9ca5dd70606fadfc6f64a7100b97962c456bbe1d4102f53e41ebffc750357` |
| 18 | `instance` | [max_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-idem--07fbb72a8866146ab0153697.md) | 106 | `declaration-track:07fbb72a8866146ab01536978e08fb56ffb5f10441fb9dbfb80551ff16db11a4` |
| 19 | `theorem` | [min_lt_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-lt-max--6ea53915e9df90d8cd456a6f.md) | 109 | `result-track:6ea53915e9df90d8cd456a6fe8fc0e7346100d733561cd4fa20ae7e58440c49d` |
| 20 | `theorem` | [max_lt_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-lt-max--0cc34789790b13b34e8f2194.md) | 113 | `result-track:0cc34789790b13b34e8f2194a7755c5f946170aa6f3ef4a232f32475e1df504c` |
| 21 | `lemma` | [min_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-right-comm--a6848a01ec80c4f4fdd3c1e3.md) | 117 | `result-track:a6848a01ec80c4f4fdd3c1e363b80eedb64a05940943e6becc2b5db186702064` |
| 22 | `theorem` | [MonotoneOn.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/monotoneon-map-max--b73851869dd46c500166f8ea.md) | 124 | `result-track:b73851869dd46c500166f8ea6097adaaa950138f5a07a3a225832f7dd76970ce` |
| 23 | `theorem` | [AntitoneOn.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/antitoneon-map-max--87ba23b5b671878329eb71ce.md) | 130 | `result-track:87ba23b5b671878329eb71ce8c20c2ae85f4c542aa83ce67cc8c82ac7b161c41` |
| 24 | `theorem` | [Monotone.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/monotone-map-max--1fc7b2afa0bfb5faa3e087b8.md) | 134 | `result-track:1fc7b2afa0bfb5faa3e087b85d006688d254dbb2008a5f9956272552965cc3a2` |
| 25 | `theorem` | [Antitone.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/antitone-map-max--a2f0d3ef2e36ccf21dd8f305.md) | 138 | `result-track:a2f0d3ef2e36ccf21dd8f305b1c061adbb274b05c8759e2fad3569850832dc5c` |
| 26 | `theorem` | [min_choice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/min-choice--67059e05785b9598c9a3ff00.md) | 142 | `result-track:67059e05785b9598c9a3ff00602c5bb7f0e5648d24d3e39daebdef778bbec931` |
| 27 | `theorem` | [le_of_max_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/le-of-max-le-left--3ec2a2df3a06e590344727af.md) | 145 | `result-track:3ec2a2df3a06e590344727af55446ad88085dd1fe5dd3f6bd4d74de37de3c117` |
| 28 | `theorem` | [le_of_max_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/le-of-max-le-right--aa724545e34e70babc298853.md) | 149 | `result-track:aa724545e34e70babc298853df6eabeab5344186e60a842421d11c2fb3a8ebe2` |
| 29 | `instance` | [instCommutativeMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/instcommutativemax--0e29d239057f2b6877a48b8a.md) | 152 | `declaration-track:0e29d239057f2b6877a48b8ada265f3f6ea849733e1af4ae7bc558f87b828b02` |
| 30 | `instance` | [instAssociativeMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/instassociativemax--834aab6ca812afed749d4405.md) | 153 | `declaration-track:834aab6ca812afed749d4405987d424adaeb67725477c8ee788df5b540d3ceda` |
| 31 | `theorem` | [max_left_commutative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantd240cae7cecee39478184cd446d4fc2289166b20db71b1ed59e469805784a80c.lean/declarations/max-left-commutative--87385096396ebb99bbc7ddeb.md) | 156 | `result-track:87385096396ebb99bbc7ddeba5c35987e3d1bcb3b8ed63dc5930f0b0286327cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
