# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63661a9d1569127e6f6fa4601e5f7116ab4ce90a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63661a9d1569127e6f6fa4601e5f7116ab4ce90a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Accumulate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/instance--174e3bbfd0165fb77c214ea7.md) | 26 | `declaration-track:174e3bbfd0165fb77c214ea7f624b5822737f5bfd1d8be8d15eaf9d91dfb2640` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/instance--aa795538ade024a8f923686f.md) | 30 | `declaration-track:aa795538ade024a8f923686fdc1ea422e58501488a8f1ff7433b531f712f2732` |
| 3 | `theorem` | [sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-def--2e5177603b620e3fb78ff72c.md) | 34 | `result-track:2e5177603b620e3fb78ff72cb4ff38c6733e735fed28b2d26f76495a26129573` |
| 4 | `theorem` | [sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/ssup-def--98ddbdd795c481fb29069b8d.md) | 38 | `result-track:98ddbdd795c481fb29069b8d36b1b6f22de06a14ac636231138ddc08290bf108` |
| 5 | `theorem` | [_root_.Set.Infinite.Nat.sSup_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/root-set-infinite-nat-ssup-eq-zero--61831712de0bace6c8090c9b.md) | 42 | `result-track:61831712de0bace6c8090c9b301e0746cb5f366256e58e32126d7079ee04950c` |
| 6 | `theorem` | [sInf_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-eq-zero--76390b35bcc2c1c4dc2c861b.md) | 48 | `result-track:76390b35bcc2c1c4dc2c861bfdf4d3b6cf5f6c6126d026bea8d72522933eabf0` |
| 7 | `theorem` | [sInf_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-empty--34208fdde6396a10c8ca446a.md) | 56 | `result-track:34208fdde6396a10c8ca446a123a3425f6ac24939ab4bcc6eceadb08159dea5d` |
| 8 | `theorem` | [iInf_of_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/iinf-of-empty--44fd1de79c7d3feec97bc781.md) | 62 | `result-track:44fd1de79c7d3feec97bc7816aaafd0d8c3aead2c80cbd801d4a13b522119cc7` |
| 9 | `lemma` | [iInf_const_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/iinf-const-zero--d50b07d969ed93d532cdd392.md) | 67 | `result-track:d50b07d969ed93d532cdd392b52d02dadd9ce9865abd8de714a5f5ec4563aee0` |
| 10 | `theorem` | [sInf_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-mem--60c81fe6fbff27d926fad84c.md) | 70 | `result-track:60c81fe6fbff27d926fad84c56e879f09c941075e91e1707c38dd9d52d2cd4ac` |
| 11 | `theorem` | [notMem_of_lt_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/notmem-of-lt-sinf--12a6a07a1ae8c5cebf3189bf.md) | 75 | `result-track:12a6a07a1ae8c5cebf3189bf80043dbfaed5d2b19c43de4cd7afa03e39b03cab` |
| 12 | `theorem` | [sInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-le--0d2ba9ca8b73ed8c8c4ef144.md) | 83 | `result-track:0d2ba9ca8b73ed8c8c4ef14410df7a68a6a1ac007d4c432784196924f268bb5a` |
| 13 | `theorem` | [nonempty_of_pos_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/nonempty-of-pos-sinf--10cea43d024e213a5d384d23.md) | 88 | `result-track:10cea43d024e213a5d384d23e19091e4d8578c2ca3be17448c5fb382afa0e9fd` |
| 14 | `theorem` | [nonempty_of_sInf_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/nonempty-of-sinf-eq-succ--486e11a0a0cd66a261139de2.md) | 97 | `result-track:486e11a0a0cd66a261139de29b4a77928872bfdf147ac2193f2471cee7da272c` |
| 15 | `theorem` | [eq_Ici_of_nonempty_of_upward_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/eq-ici-of-nonempty-of-upward-closed--ecdda6c9311c756991232b80.md) | 100 | `result-track:ecdda6c9311c756991232b80bddae8c21de0a28d541cffd63baac5235d9244b4` |
| 16 | `theorem` | [sInf_upward_closed_eq_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-upward-closed-eq-succ-iff--423fb662f39e8d06672961fd.md) | 104 | `result-track:423fb662f39e8d06672961fdccaee04bf6ad310b4ebcbe082c8b83a445861f11` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/instance--6090a264470ec2408981b9dd.md) | 119 | `declaration-track:6090a264470ec2408981b9dd05c7f623bf08fdbd97ad84565327a515213316dd` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/instance--b977387ce474c9655447b98f.md) | 123 | `declaration-track:b977387ce474c9655447b98ffafed790f8fc2423dbac051da4ce70a0e3f52603` |
| 19 | `theorem` | [sSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/ssup-mem--061441841d6d0beca63ed036.md) | 145 | `result-track:061441841d6d0beca63ed0362fa76f6f679a56a79f2a3717be6258ca98cdf1c3` |
| 20 | `theorem` | [sInf_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-add--3f0b333f0129776a2ba92e71.md) | 149 | `result-track:3f0b333f0129776a2ba92e71de7ddd0da5c7d42037e64620351a14244ca17cf0` |
| 21 | `theorem` | [sInf_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/sinf-add--fed77d20e18fbb04b204e657.md) | 164 | `result-track:fed77d20e18fbb04b204e6576baf624f33b508de98dfb426062f2dad656a32ba` |
| 22 | `theorem` | [iSup_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/isup-lt-succ--28cdfe18d7d762edd8001fc1.md) | 182 | `result-track:28cdfe18d7d762edd8001fc103e5cf2649982e02938d69a3685ff845f5413298` |
| 23 | `theorem` | [iSup_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/isup-lt-succ--f39b852da803d7990020753e.md) | 185 | `result-track:f39b852da803d7990020753eb5e3920790093148a28b2da7a608d1c15ae88d0c` |
| 24 | `theorem` | [iInf_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/iinf-lt-succ--ed6f5c2d38de739f62ed0dbd.md) | 189 | `result-track:ed6f5c2d38de739f62ed0dbdd1acb74282be26888200c14eef28455b1caeb16e` |
| 25 | `theorem` | [iInf_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/iinf-lt-succ--8b4d9be47f308126dd68eeb5.md) | 192 | `result-track:8b4d9be47f308126dd68eeb5cc642d77c5ddc7564954acc2e5ee14dfd8026122` |
| 26 | `theorem` | [iSup_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/isup-le-succ--51e5e94e2a7fbb5b654820ae.md) | 195 | `result-track:51e5e94e2a7fbb5b654820aead2f9b25bbd83b2b0c5b57dc94a803e4a7b43a83` |
| 27 | `theorem` | [iSup_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/isup-le-succ--4b06fbad7e158811d62c49c7.md) | 198 | `result-track:4b06fbad7e158811d62c49c73037aa00e877d1b14ece63aef8afcfb04c578cbf` |
| 28 | `theorem` | [iInf_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/iinf-le-succ--6090e748d0dfdb15129094a1.md) | 201 | `result-track:6090e748d0dfdb15129094a1555dde093c08643034b5032e06bc4cc87b680975` |
| 29 | `theorem` | [iInf_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/iinf-le-succ--6a302610111348560554e11e.md) | 204 | `result-track:6a302610111348560554e11e27c768e11de62e6363ee81d0565a21fc98973130` |
| 30 | `theorem` | [biUnion_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biunion-lt-succ--f8ea70a4dd9d41e715c69f1f.md) | 215 | `result-track:f8ea70a4dd9d41e715c69f1f1112b98178af813f8f9a045af720f9f483e906c7` |
| 31 | `theorem` | [biUnion_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biunion-lt-succ--62c2ce3c5a74719327c4c8a9.md) | 218 | `result-track:62c2ce3c5a74719327c4c8a9c77433f4bb673e4044b6585c9ad27effdb0088ce` |
| 32 | `theorem` | [biInter_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biinter-lt-succ--a7c0cd57106c15967687d675.md) | 221 | `result-track:a7c0cd57106c15967687d67530b0be9f5f9ff3e56d3493915d57c0370d95657f` |
| 33 | `theorem` | [biInter_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biinter-lt-succ--abda3781650987fe7729859b.md) | 224 | `result-track:abda3781650987fe7729859be8c8e4d99dae5e0a946131c5cce5e64fd7b0f5e7` |
| 34 | `theorem` | [biUnion_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biunion-le-succ--78ad8e2ba5159a2f52540334.md) | 227 | `result-track:78ad8e2ba5159a2f52540334a1c6600b535411382d051207e45d022d8701f1b6` |
| 35 | `theorem` | [biUnion_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biunion-le-succ--e783e91f1d0e5a2951ff971d.md) | 230 | `result-track:e783e91f1d0e5a2951ff971deafc73ee2c6e57c10938ddefafba77c042ab2802` |
| 36 | `theorem` | [biInter_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biinter-le-succ--8eac1c51e487dbcf8d51ba90.md) | 233 | `result-track:8eac1c51e487dbcf8d51ba90009ae73e84e88821611518ba9e90e7c13b01c7b0` |
| 37 | `theorem` | [biInter_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/biinter-le-succ--a7714f3905ac875cb4e24f25.md) | 236 | `result-track:a7714f3905ac875cb4e24f2536b6aac65afe05f0e4bce6b91ce21bf0def38261` |
| 38 | `theorem` | [accumulate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.lean/declarations/accumulate-succ--5c366057e86fc455397f52ba.md) | 239 | `result-track:5c366057e86fc455397f52ba6ef23b0cbab05ddef8135855f04507c3497df678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
