# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deebb2f67aa1d5c62a05b726e7325ef527f4729a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deebb2f67aa1d5c62a05b726e7325ef527f4729a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TwoSidedIdeal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--e9dbf3781b571cf845044b53.md) | 25 | `declaration-track:e9dbf3781b571cf845044b539d98415698b10b162a51636034ff2f25879ced19` |
| 2 | `lemma` | [sup_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/sup-ringcon--11cd61200a5969c675f09c18.md) | 31 | `result-track:11cd61200a5969c675f09c18c1f3c412c8bbbcb87c780f77e6e059e86fc7cafe` |
| 3 | `lemma` | [mem_sup_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-sup-left--ecd5edef2f2dbfdd7e601f7a.md) | 37 | `result-track:ecd5edef2f2dbfdd7e601f7a9f8841ff669393e5d4ea7296b8cfd64ee24210fd` |
| 4 | `lemma` | [mem_sup_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-sup-right--c0fc34fc28e7fc2695968eb7.md) | 41 | `result-track:c0fc34fc28e7fc2695968eb73a0902705c5ea6c8644f7251cd471a5dc282df26` |
| 5 | `lemma` | [mem_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-sup--88ebdac3d9a9ef6f3b0ccedb.md) | 45 | `result-track:88ebdac3d9a9ef6f3b0ccedb19b8d7dcc073be85fab316334d302af848d9ca4d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--7e8fd2ee734b73ac31018877.md) | 67 | `declaration-track:7e8fd2ee734b73ac310188778c38a3f14268fa1e56aee9c06c8f6a084db4b999` |
| 7 | `lemma` | [inf_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/inf-ringcon--e5e50c7affe946ca2456b9b4.md) | 73 | `result-track:e5e50c7affe946ca2456b9b4bf1a7a0d224e2c9ad7780ea114a249260a52e726` |
| 8 | `lemma` | [mem_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-inf--0589c0b5597e1dc072432a3a.md) | 75 | `result-track:0589c0b5597e1dc072432a3a448dc4c23f16fa9e00e4862abd354977ad4232e4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--027831598101535200eefe14.md) | 79 | `declaration-track:027831598101535200eefe1479fe2847735c1d5ecb34c1a259ca2499aaf1caa2` |
| 10 | `lemma` | [sSup_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/ssup-ringcon--4d95c65f85f260f0b637c664.md) | 82 | `result-track:4d95c65f85f260f0b637c66448c2f89f13993fb4fdc991ac195a2ca86b0ef9b6` |
| 11 | `lemma` | [iSup_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/isup-ringcon--8f1d3ef093fc2f2caad9835c.md) | 85 | `result-track:8f1d3ef093fc2f2caad9835cea729b5faa9767ec412005caa1e7016bbcf5b749` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--7277745bcbd5e9d5751cb6c2.md) | 89 | `declaration-track:7277745bcbd5e9d5751cb6c2aa1bdb5936b7ef6779a56cac620e29e919fb99d5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--5225e6080502cc217eee6161.md) | 93 | `declaration-track:5225e6080502cc217eee61619e39fe88f11745f6eb76c0254ed7d317b21c604a` |
| 14 | `lemma` | [sInf_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/sinf-ringcon--63ca4d6898e8eb98799b97f6.md) | 96 | `result-track:63ca4d6898e8eb98799b97f6289ed192acc2338e37cd63673e3ea03066082e42` |
| 15 | `lemma` | [iInf_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/iinf-ringcon--dfcbe2cdbec32b657fc82560.md) | 99 | `result-track:dfcbe2cdbec32b657fc82560e414dac0e28bd9a7fa709803159ea77b59d7e714` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--da5e60cb3aacfefee9833394.md) | 103 | `declaration-track:da5e60cb3aacfefee983339449fe03bb05429e198c75c4a642ee6e0da7f71c17` |
| 17 | `lemma` | [mem_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-iinf--9bd56800a7e17fc62bb59844.md) | 107 | `result-track:9bd56800a7e17fc62bb598449fbb62752b43bc5e9a46bf8c9a547a0a9710824f` |
| 18 | `lemma` | [mem_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-sinf--b520a07cd6e83bca92815b44.md) | 111 | `result-track:b520a07cd6e83bca92815b44ef965f61cc37ef4a4b56e9a9617bfa742ac7ce0a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--f6c9d36e0d088afebb38edc6.md) | 115 | `declaration-track:f6c9d36e0d088afebb38edc6d39a5a9568faa729924ceb27bcf951fe893e4d28` |
| 20 | `lemma` | [top_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/top-ringcon--f884a5115018837644229821.md) | 118 | `result-track:f884a5115018837644229821865ea118cf52809cfe67ca70985ddd36014fc28d` |
| 21 | `lemma` | [mem_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-top--344f6417b4b842779a654cbf.md) | 121 | `result-track:344f6417b4b842779a654cbfcd65daa8271eccec813c9c672c69ae8dfeb47a30` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--b885294ad7424927f121aace.md) | 123 | `declaration-track:b885294ad7424927f121aace34017a947e0d81ca50afacab68decd1fe2f8470d` |
| 23 | `lemma` | [bot_ringCon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/bot-ringcon--e16fc6496e78bbd3ecf788e9.md) | 126 | `result-track:e16fc6496e78bbd3ecf788e9155798b0a42136d6b0a79b585cb65611b0dd03b2` |
| 24 | `lemma` | [mem_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/mem-bot--bfe5bf4e55916da0eaddcc38.md) | 129 | `result-track:bfe5bf4e55916da0eaddcc383ec5f3069c1943f4371bec308b065d473b451056` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/instance--2d8fe14c47287df885475fae.md) | 132 | `declaration-track:2d8fe14c47287df885475faed4bb0477395debfbe678000b6663041bc05018fc` |
| 26 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/coe-bot--2ca8e4ab9255c85e0d241512.md) | 141 | `result-track:2ca8e4ab9255c85e0d2415129951f59d1b756a6064c6bd3bddff04a98c499b4f` |
| 27 | `lemma` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/coe-top--d4cc195859c37b05c2f216c9.md) | 144 | `result-track:d4cc195859c37b05c2f216c9b073dcf0192c132f621418ad188e47cad63abcd7` |
| 28 | `lemma` | [one_mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant642c77ea0e73a97145d4312eacfe6b708c8c395b65287aac3f385f50eb4cec41.lean/declarations/one-mem-iff--84f947a4e4f46014d6db2620.md) | 146 | `result-track:84f947a4e4f46014d6db2620b3b0210e242332dfe8cc6b76359a2504060f43dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
