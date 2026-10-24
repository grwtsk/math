# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b969dd0309b4342deea43a50dabc5d93b9c81fe",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b969dd0309b4342deea43a50dabc5d93b9c81fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean.json)

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
| 1 | `def` | [fintypeAffineCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/fintypeaffinecoords--139292232598f033faaa8137.md) | 68 | `declaration-track:139292232598f033faaa81374eaaacb5cae24e3ca60e1df25d422eec4f9991c7` |
| 2 | `lemma` | [mem_fintypeAffineCoords_iff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/mem-fintypeaffinecoords-iff-sum--40a97bd5d004ac3c5cf5ae40.md) | 71 | `result-track:40a97bd5d004ac3c5cf5ae403ccf566558115c592862e535ffec103ce1c87390` |
| 3 | `lemma` | [AffineIndependent.injOn_affineCombination_fintypeAffineCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/affineindependent-injon-affinecombination-fintypeaffinecoords--3b6b85e34e687a27c0b15e73.md) | 75 | `result-track:3b6b85e34e687a27c0b15e7317e30a3a9674fd88acaaa22350436052133d6a9b` |
| 4 | `def` | [finsuppAffineCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/finsuppaffinecoords--e1ccb1a0af5ad2a70b061460.md) | 83 | `declaration-track:e1ccb1a0af5ad2a70b0614608853f235b0cd4554afc284c5b4a86e9d01876098` |
| 5 | `lemma` | [mem_finsuppAffineCoords_iff_linearCombination](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/mem-finsuppaffinecoords-iff-linearcombination--358a12f34ad62d8feec4dec3.md) | 86 | `result-track:358a12f34ad62d8feec4dec311d61084b9672f19b8f2eeca793b78e247cbe916` |
| 6 | `structure` | [AffineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/affinebasis--9b99655c6d433787c87a4983.md) | 95 | `declaration-track:9b99655c6d433787c87a4983049d8075672f79c7871db453ff95247e36699100` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instance--0ffeb5ba83e78deffe78951c.md) | 113 | `declaration-track:0ffeb5ba83e78deffe78951c14e687a07e70df2f759fc52270f9a96c032bf66a` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instfunlike--d8449d4164016cc87ddf84b2.md) | 117 | `declaration-track:d8449d4164016cc87ddf84b2673dadceb386d7e0877f52c40ba227919680d725` |
| 9 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/ext--fac350d8d6e04c939794179a.md) | 122 | `result-track:fac350d8d6e04c939794179a62971fc3df74da8ab5b93a8bd75fc2a03c012e2c` |
| 10 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/ind--3f1141176a272da70949f869.md) | 125 | `result-track:3f1141176a272da70949f8695a5e382f5c8615cfb35db143b763f930577b1a89` |
| 11 | `theorem` | [tot](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/tot--bda341db5eb62de7c8435fdd.md) | 128 | `result-track:bda341db5eb62de7c8435fdda3d12d3387caca22532ecce2f3c95be6c046aabc` |
| 12 | `theorem` | [nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/nonempty--7fc8e5bfd404c95ec2046c07.md) | 132 | `result-track:7fc8e5bfd404c95ec2046c07ab2642012fe4b946379b0e8c4261eae6f2bf880a` |
| 13 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/reindex--04e789df0ee6d3fb9f4ec346.md) | 137 | `declaration-track:04e789df0ee6d3fb9f4ec346f4c3a1a98826d9bd95f3970cf1ab616a11e885c6` |
| 14 | `theorem` | [coe_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coe-reindex--fe509297cba4ecb5dc57e36e.md) | 143 | `result-track:fe509297cba4ecb5dc57e36ec0ad54902059b967eb3251acb670d5af98401ad7` |
| 15 | `theorem` | [reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/reindex-apply--30854de5bd5ffd7f66a58180.md) | 147 | `result-track:30854de5bd5ffd7f66a5818005735def6e3300fedb76c5c41eafbe175c775a1c` |
| 16 | `theorem` | [reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/reindex-refl--6b1c5db8d8ab08ca3f8c8a02.md) | 151 | `result-track:6b1c5db8d8ab08ca3f8c8a0205c973c15fdefdb5a1e11eefabb31b9389438a01` |
| 17 | `def` | [basisOf](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/basisof--a90abf3c194b4cd32fa2eef7.md) | 159 | `declaration-track:a90abf3c194b4cd32fa2eef78e78a4060fcb9ea9ef010216701f5fae87fe47ff` |
| 18 | `theorem` | [basisOf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/basisof-apply--b4ba4695dd7acea1835ded56.md) | 172 | `result-track:b4ba4695dd7acea1835ded5640c67ebbb785a62eb10eb1501ab995f4f6fa1ce4` |
| 19 | `theorem` | [basisOf_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/basisof-reindex--741e9343dfcc1f049c5e5c9f.md) | 176 | `result-track:741e9343dfcc1f049c5e5c9fc061a41d2b400aa9f0110f27722598d954291cb4` |
| 20 | `def` | [coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord--63a296b9145243bd798a4d1c.md) | 183 | `declaration-track:63a296b9145243bd798a4d1cbfc08d7d51a8f77518e8e732fd5190f18c14177d` |
| 21 | `theorem` | [linear_eq_sumCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/linear-eq-sumcoords--5e316781447b778616859e71.md) | 191 | `result-track:5e316781447b778616859e7193f1a13be6bf1c7ea9e3df3019126630a77deee7` |
| 22 | `theorem` | [coord_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-reindex--68f62ae61311cf9033e40d53.md) | 195 | `result-track:68f62ae61311cf9033e40d53fad248c06b6b8e4b22bc19b2854c9e65c880a96a` |
| 23 | `theorem` | [coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-apply-eq--1422a02405ba32180dc3e38e.md) | 200 | `result-track:1422a02405ba32180dc3e38e08d68fd856bafec8a37254b91e7668e62e439c76` |
| 24 | `theorem` | [coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-apply-ne--9b9ab3028452cebe1dd08df0.md) | 205 | `result-track:9b9ab3028452cebe1dd08df03327c6f791b4ab82dca53ed1d9fc030bf5317c04` |
| 25 | `theorem` | [coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-apply--13ff70b5c189c6c8b533e827.md) | 209 | `result-track:13ff70b5c189c6c8b533e827e6555e553920cd7fe05cf16820fe0abfa1555469` |
| 26 | `theorem` | [coord_apply_combination_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-apply-combination-of-mem--20f938f36a273f6095f02778.md) | 213 | `result-track:20f938f36a273f6095f027780b752eb897ddaebf35da47c278d46eb5bf26e5a4` |
| 27 | `theorem` | [coord_apply_combination_of_notMem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-apply-combination-of-notmem--6c3ba03b4d1767a8514ede19.md) | 220 | `result-track:6c3ba03b4d1767a8514ede19fd347dd7569cd152b1fc0173fba1bec5809976b7` |
| 28 | `theorem` | [sum_coord_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/sum-coord-apply-eq-one--8e3b3b2e6afca3669c703a82.md) | 227 | `result-track:8e3b3b2e6afca3669c703a82f2e4c972d792c4f9bd429f3524d7d80a3bd692de` |
| 29 | `theorem` | [affineCombination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/affinecombination-coord-eq-self--c0273cb9114996690b1ab6ed.md) | 236 | `result-track:c0273cb9114996690b1ab6ed321a93e34be1a584ff9a3054ef9dfecfac53d629` |
| 30 | `theorem` | [linear_combination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/linear-combination-coord-eq-self--26051fb320c6781a73963147.md) | 249 | `result-track:26051fb320c6781a7396314782554606608e40e11afab050811748ab379a3b34` |
| 31 | `theorem` | [ext_elem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/ext-elem--fa5e4691e1f772d5214986a9.md) | 254 | `result-track:fa5e4691e1f772d5214986a9721b69194f9dd2f70e641bfb5ec281a56ae37800` |
| 32 | `theorem` | [coe_coord_of_subsingleton_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coe-coord-of-subsingleton-eq-one--b6156557cdd9a2b75dbaefcc.md) | 260 | `result-track:b6156557cdd9a2b75dbaefccf0398aee54bac963853ac38c76d9501cee051d51` |
| 33 | `theorem` | [surjective_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/surjective-coord--bef58d16d5713e556f0b7d3c.md) | 274 | `result-track:bef58d16d5713e556f0b7d3c039140c261ebcdafd0459188941bbd4e1f5516da` |
| 34 | `def` | [coords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coords--c40b360029f9824e03fee25e.md) | 287 | `declaration-track:c40b360029f9824e03fee25eeb3da00fc35bf5480b73c5e01ebc448fb97510f6` |
| 35 | `theorem` | [coords_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coords-apply--82b68a4b2fe8af27fe146094.md) | 296 | `result-track:82b68a4b2fe8af27fe146094018baac64893315d830a03b89158022d12173e2d` |
| 36 | `instance` | [instVAdd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instvadd--8f6476b65159358a8fca56a3.md) | 299 | `declaration-track:8f6476b65159358a8fca56a3f7554913468633551a717a2c6f4bf06367792000` |
| 37 | `lemma` | [coe_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coe-vadd--48ebc08bd0494be7bf508eeb.md) | 306 | `result-track:48ebc08bd0494be7bf508eeb7869d7400c26624d6359684caa7662d156f2769e` |
| 38 | `lemma` | [basisOf_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/basisof-vadd--1a813df3a0c62feaf792393b.md) | 308 | `result-track:1a813df3a0c62feaf792393ba3aa5b2d46f9624ee63c3590373e0f815bee0ac2` |
| 39 | `instance` | [instAddAction](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instaddaction--a60acde6e79443902e2724a2.md) | 312 | `declaration-track:a60acde6e79443902e2724a2a9ca6bd2be62aa4cc96b47459388c2a2a344b932` |
| 40 | `lemma` | [coord_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-vadd--14d57b6785bcf110ecb3e772.md) | 315 | `result-track:14d57b6785bcf110ecb3e7729673b4c7782ff882195880017596c2cea9251a05` |
| 41 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instsmul--b0ca1e0ac1b6f0b27544be45.md) | 333 | `declaration-track:b0ca1e0ac1b6f0b27544be457f6d10828fb9b3cfe7ac09a78f2efedd14762d57` |
| 42 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coe-smul--5d98e224f49816662f6fa9ac.md) | 341 | `result-track:5d98e224f49816662f6fa9ac5081e7a497bedbabef79fd5234cf6403d8388f83` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instance--e185989b93156a0b522f5175.md) | 345 | `declaration-track:e185989b93156a0b522f5175bd1dd9e805cd7a908baa80542cd4fe0dd1c79ef0` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instance--c2ea7f4da61e4fba7c5b59f5.md) | 350 | `declaration-track:c2ea7f4da61e4fba7c5b59f52edaccdaa9694d85fcdcb9af27d3a84934ea4191` |
| 45 | `lemma` | [basisOf_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/basisof-smul--42ab65d5fe67e6bb80f93fc5.md) | 353 | `result-track:42ab65d5fe67e6bb80f93fc5f666a3e0fd8fda6d3a8b02e6e55c9ce795106245` |
| 46 | `lemma` | [reindex_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/reindex-smul--59685408cd6939d63862e4a7.md) | 356 | `result-track:59685408cd6939d63862e4a74b7f46779592bbf2da4c741ad7d0aaca13b97ae9` |
| 47 | `lemma` | [coord_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-smul--8228e15081bd5562274e4b48.md) | 360 | `result-track:8228e15081bd5562274e4b487693d2f84170af2f22d0b677b439efd01fbd642a` |
| 48 | `instance` | [instMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/instmulaction--76d8173839e1f11e1f40e587.md) | 366 | `declaration-track:76d8173839e1f11e1f40e587bd194c34bf263e7ca1e19c3682ac1d4fa8f6624a` |
| 49 | `theorem` | [coord_apply_centroid](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/coord-apply-centroid--88bdf3fa0f5b152e103e0af7.md) | 377 | `result-track:88bdf3fa0f5b152e103e0af7cbfe0e4c99638803c5a5b049f91f5a913c589dd7` |
| 50 | `theorem` | [exists_affine_subbasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/exists-affine-subbasis--c59709f055048c07c37e736f.md) | 383 | `result-track:c59709f055048c07c37e736fa79533b24f72539ba600891a15c27b7c9e96b9a5` |
| 51 | `theorem` | [exists_affineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/declarations/exists-affinebasis--ef410b2821af3c4679a76f58.md) | 391 | `result-track:ef410b2821af3c4679a76f58ad5975a98ff3428105c936a4f3669421abe45a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
