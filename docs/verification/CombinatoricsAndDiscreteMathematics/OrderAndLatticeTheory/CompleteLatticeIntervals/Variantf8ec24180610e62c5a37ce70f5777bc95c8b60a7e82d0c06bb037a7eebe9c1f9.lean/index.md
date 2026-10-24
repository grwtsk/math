# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLatticeIntervals.Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2c3636110fc828c3cd36ac40c1515701eb97378",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2c3636110fc828c3cd36ac40c1515701eb97378`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LatticeIntervals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subsetSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subsetsupset--8ba751e2ae4c6eba4482678d.md) | 37 | `declaration-track:8ba751e2ae4c6eba4482678d36c342433a6692eef63833b8f8f05b7c952af101` |
| 2 | `theorem` | [subset_sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-ssup-def--5803b47c4dd5086912341d4c.md) | 47 | `result-track:5803b47c4dd5086912341d4c6dff6d9c8730e3754e2f26e4a797774be6eddfb8` |
| 3 | `theorem` | [subset_sSup_of_within](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-ssup-of-within--7206f3980b99d1c8946a6af2.md) | 54 | `result-track:7206f3980b99d1c8946a6af21344a9e8dca64a51000784b13829ded8c93b51f4` |
| 4 | `theorem` | [subset_sSup_emptyset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-ssup-emptyset--282276e2642acd6ce33cd572.md) | 58 | `result-track:282276e2642acd6ce33cd572dae4467e41d788a067f4a1d99506039a9ffcb603` |
| 5 | `theorem` | [subset_sSup_of_not_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-ssup-of-not-bddabove--18c28861d6beae665f00dac8.md) | 62 | `result-track:18c28861d6beae665f00dac82c2e6709f19368b018afca4eca1ba4f1312d471a` |
| 6 | `def` | [subsetInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subsetinfset--afff800115538658a2d4dc50.md) | 76 | `declaration-track:afff800115538658a2d4dc50ca993e3b283a2c3b3675def800445566a834715f` |
| 7 | `theorem` | [subset_sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-sinf-def--566d2ca0180c4ae28a8b7f46.md) | 86 | `result-track:566d2ca0180c4ae28a8b7f46f9f2c1a5ea7a300f0744905cd2959d9319ec8fa4` |
| 8 | `theorem` | [subset_sInf_of_within](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-sinf-of-within--ed2bc3f98fcbdcaee4c8d0ff.md) | 93 | `result-track:ed2bc3f98fcbdcaee4c8d0ff26c1229c8ac678fbecfc09b96b53d62ff95d0610` |
| 9 | `theorem` | [subset_sInf_emptyset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-sinf-emptyset--0c60a76dddff71968c3e0525.md) | 97 | `result-track:0c60a76dddff71968c3e052527dc16d9791823ecec98a1ebf8fdb05e636760c8` |
| 10 | `theorem` | [subset_sInf_of_not_bddBelow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subset-sinf-of-not-bddbelow--ee1ab9ffb82429bfe4fabb7c.md) | 101 | `result-track:ee1ab9ffb82429bfe4fabb7c9eca67bfda58c0af96434827bb00f1e87a81248b` |
| 11 | `abbrev` | [subsetConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/subsetconditionallycompletelinearorder--0a1b3b0e3139af0231285698.md) | 119 | `declaration-track:0a1b3b0e3139af023128569888d008857d709ba4e695073701a4e9ee6ee80e76` |
| 12 | `theorem` | [sSup_within_of_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/ssup-within-of-ordconnected--a164a92c6f39c8b3b2acce7a.md) | 145 | `result-track:a164a92c6f39c8b3b2acce7a8a719b8deb8775f2e7753266ec7efc812b854795` |
| 13 | `theorem` | [sInf_within_of_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/sinf-within-of-ordconnected--3dfc586312712b73cd165a91.md) | 155 | `result-track:3dfc586312712b73cd165a910dba4b2f164dd8782fb47543ec52d6d03f014069` |
| 14 | `instance` | [ordConnectedSubsetConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/ordconnectedsubsetconditionallycompletelinearorder--4f1477dc864640f10f0e60da.md) | 165 | `declaration-track:4f1477dc864640f10f0e60dae852e8dc78cd6d3f056a8797de2a479b04109200` |
| 15 | `instance` | [Set.Icc.completeLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/set-icc-completelattice--2eeac4be3de18e0fc54c7aa4.md) | 177 | `declaration-track:2eeac4be3de18e0fc54c7aa4dccde390823a2f7da005e4cb3bcdc0e4326eefbb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/instance--63374e4905c00fb4ea159b38.md) | 210 | `declaration-track:63374e4905c00fb4ea159b38085ba6d99116b0af910b874eff9a7b0230580200` |
| 17 | `lemma` | [Set.Icc.coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/set-icc-coe-ssup--2962b1f6ec51d2fdc3551617.md) | 214 | `result-track:2962b1f6ec51d2fdc35516170b1aecdb0e246b040b7e22cc13516782d9340621` |
| 18 | `lemma` | [Set.Icc.coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/set-icc-coe-sinf--6aae52bd4f1b4a5cde923dbe.md) | 219 | `result-track:6aae52bd4f1b4a5cde923dbef5ec42608c53277aa1bddb599abc9e7a3e087bd2` |
| 19 | `lemma` | [Set.Icc.coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/set-icc-coe-isup--c2253214e7f91a7a67adc468.md) | 224 | `result-track:c2253214e7f91a7a67adc4683691aa1752c8407e080937887b69529e82b9b62e` |
| 20 | `lemma` | [Set.Icc.coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/set-icc-coe-iinf--1aea271b708ec0366605f2c6.md) | 229 | `result-track:1aea271b708ec0366605f2c6965a7f133fec62c163e294bc7b9d8f863c7ade05` |
| 21 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/instcompletelattice--06556dfd83255ebf3af01342.md) | 240 | `declaration-track:06556dfd83255ebf3af01342f50f862b3dfacad86a492f3aac836d43cbd54350` |
| 22 | `theorem` | [coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/coe-ssup--8d70b95f92d402f89cc709f6.md) | 252 | `result-track:8d70b95f92d402f89cc709f646e3e2e87dafa83bb49ba5a3299e89854b62079a` |
| 23 | `theorem` | [coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/coe-isup--15463abc951ffa9d1dfdca28.md) | 254 | `result-track:15463abc951ffa9d1dfdca289d97316d7f7e43265260a2186803ad9e0959c22a` |
| 24 | `theorem` | [coe_biSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/coe-bisup--a9a20e044da8b68fe03db0d4.md) | 257 | `result-track:a9a20e044da8b68fe03db0d4f23c6410abe3239fd70c1a1caf8733d512eb1e7b` |
| 25 | `theorem` | [coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/coe-sinf--922aa4a27789c520ab83d799.md) | 259 | `result-track:922aa4a27789c520ab83d7993647b4afab044726e85079a68210fead49ea2e61` |
| 26 | `theorem` | [coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/coe-iinf--3619673add5a631b810bd533.md) | 261 | `result-track:3619673add5a631b810bd5336285329d45a584ca424299ba692d9b63b65d6172` |
| 27 | `theorem` | [coe_biInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean/declarations/coe-biinf--7366373eb8213cc7376300fd.md) | 264 | `result-track:7366373eb8213cc7376300fdf894787b32dbd535c3711752efc32c05fb23068f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
