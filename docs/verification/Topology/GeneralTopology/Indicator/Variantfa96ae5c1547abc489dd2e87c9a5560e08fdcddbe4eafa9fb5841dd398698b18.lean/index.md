# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c769333ba587fd95c632459efecb1e1d55d74e3e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c769333ba587fd95c632459efecb1e1d55d74e3e`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.IndicatorFunction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eLpNorm_indicator_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/exists-elpnorm-indicator-le--91181e7fff9aca72f33970d1.md) | 43 | `result-track:91181e7fff9aca72f33970d15d7be2a90e36c9c09d758cab17d9fe74eeda01e1` |
| 2 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.ExistsELpNormIndicatorLe.Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.HasCompactSupport.memLp_of_bound](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/root-grwtsk-topology-generaltopology-existselpnormindicatorle-variant6cb--069e5b2622d0995f6e0935e2.md) | 71 | `result-track:069e5b2622d0995f6e0935e27ec26945ba09940492998acbbdffd9d8d99143e8` |
| 3 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.ExistsELpNormIndicatorLe.Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.Continuous.memLp_of_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/root-grwtsk-topology-generaltopology-existselpnormindicatorle-variant6cb--0c3de047eb1724f3f0947ae9.md) | 81 | `result-track:0c3de047eb1724f3f0947ae9708d10f0d56609bcd550d5c19b7745bc394ffd39` |
| 4 | `def` | [indicatorConstLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp--0c4cd471ea09fcdf069e7396.md) | 99 | `declaration-track:0c4cd471ea09fcdf069e7396353c7df69bd27fea22740129c25b8818d6c1998a` |
| 5 | `theorem` | [indicatorConstLp_add](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-add--add8c7f909ce2fcdecc53103.md) | 103 | `result-track:add8c7f909ce2fcdecc53103ef5c1b520d44f1f03afb4606e556186034ada53b` |
| 6 | `theorem` | [indicatorConstLp_sub](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-sub--cdaea62bd64640bed6b1c4b2.md) | 110 | `result-track:cdaea62bd64640bed6b1c4b22905268f320a6d6e33b44751f37d12c05bb208de` |
| 7 | `theorem` | [indicatorConstLp_coeFn](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-coefn--c3ea10f345c8a675bc458958.md) | 116 | `result-track:c3ea10f345c8a675bc4589589fd2506636b8e081bed1ffdf58fd0719505168d0` |
| 8 | `theorem` | [indicatorConstLp_coeFn_mem](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-coefn-mem--6ffcce3ef88690113b5c0263.md) | 119 | `result-track:6ffcce3ef88690113b5c0263c85c93f61ed9b543c17d7cccbd40356a76fce608` |
| 9 | `theorem` | [indicatorConstLp_coeFn_notMem](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-coefn-notmem--c6f1f7e7e061599756e0ff08.md) | 122 | `result-track:c6f1f7e7e061599756e0ff08eea43f82a46fe869eb4b5dc24d725f0f66e034e2` |
| 10 | `theorem` | [norm_indicatorConstLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/norm-indicatorconstlp--79abf9528a90504c94910b56.md) | 128 | `result-track:79abf9528a90504c94910b5627a5414b12767dccf56b4e1a6058cbd033bd64cd` |
| 11 | `theorem` | [norm_indicatorConstLp_top](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/norm-indicatorconstlp-top--3b1d2ce026a3c975cc83c9ef.md) | 134 | `result-track:3b1d2ce026a3c975cc83c9efd2a5240380fa2f991302c6b3a8a9e8bafe90c4fc` |
| 12 | `theorem` | [norm_indicatorConstLp'](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/norm-indicatorconstlp--79e7558c4c1c1a81add027aa.md) | 140 | `result-track:79e7558c4c1c1a81add027aa2e9d6af35c1195e3b7af50f5c31da551ce905f50` |
| 13 | `theorem` | [norm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/norm-indicatorconstlp-le--97c1c243e2cae8e251bf2c5f.md) | 147 | `result-track:97c1c243e2cae8e251bf2c5fb06e537e126c227107b6374abae0539bd2b65bab` |
| 14 | `theorem` | [nnnorm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/nnnorm-indicatorconstlp-le--89ed820358fc15309bdf6efd.md) | 156 | `result-track:89ed820358fc15309bdf6efd9f2b788e36f799154b68877c3ac47b513ffcf1a8` |
| 15 | `theorem` | [enorm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/enorm-indicatorconstlp-le--523ef434b43cc2a30495f634.md) | 160 | `result-track:523ef434b43cc2a30495f63413d083382076e7e8cb0b5a35342322346ad3e0fd` |
| 16 | `theorem` | [edist_indicatorConstLp_eq_enorm](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/edist-indicatorconstlp-eq-enorm--b66b48725cfec76dc8acc5f1.md) | 167 | `result-track:b66b48725cfec76dc8acc5f1000297773ad333c2a6f88ae20bacffacbc054953` |
| 17 | `theorem` | [dist_indicatorConstLp_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/dist-indicatorconstlp-eq-norm--b15128f5993dff914b352190.md) | 176 | `result-track:b15128f5993dff914b352190adc6da728474d646a4cf0a3bd3f5486d0acc32c7` |
| 18 | `theorem` | [tendsto_indicatorConstLp_set](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/tendsto-indicatorconstlp-set--6b56897fb5a78a9989b941ec.md) | 185 | `result-track:6b56897fb5a78a9989b941eca3653b6633f03d53bbcc8e4fa657ce97faa06458` |
| 19 | `theorem` | [continuous_indicatorConstLp_set](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/continuous-indicatorconstlp-set--6a209f31541cb85d17ae2e7c.md) | 199 | `result-track:6a209f31541cb85d17ae2e7c57a914b04c8d3dd40e399188b08ae7729a5c214a` |
| 20 | `theorem` | [indicatorConstLp_empty](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-empty--679f1c2e32af53d08b8a1337.md) | 206 | `result-track:679f1c2e32af53d08b8a1337542d5d5465c51d966d850cda527c11f4416354c4` |
| 21 | `theorem` | [indicatorConstLp_inj](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-inj--957c2045183ce392aaf3586b.md) | 210 | `result-track:957c2045183ce392aaf3586b1baba2c39984b28595fbfb866ea751c083666519` |
| 22 | `theorem` | [memLp_add_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/memlp-add-of-disjoint--3168aba80e62770c4b547b2f.md) | 215 | `result-track:3168aba80e62770c4b547b2fdf5f39db6a81ba56b9f5647f9cc72d06e5212c71` |
| 23 | `theorem` | [indicatorConstLp_disjoint_union](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-disjoint-union--5c90a0f6e715c26973a12150.md) | 227 | `result-track:5c90a0f6e715c26973a121503e0300edb06bba8d739658edccc86f9c0088c02a` |
| 24 | `def` | [Lp.const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-const--b93fd0e468c5a99548957f4e.md) | 246 | `declaration-track:b93fd0e468c5a99548957f4eb304d1f5da0f79e30db7686e68428fa3cd1c3860` |
| 25 | `lemma` | [Lp.coeFn_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-coefn-const--1fd0a5611edbb0a718a466ad.md) | 251 | `result-track:1fd0a5611edbb0a718a466ad8fdfef36e8808da6f93b1197f3662af0d546ecab` |
| 26 | `lemma` | [Lp.const_val](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-const-val--ad892c565c062d968d8744fd.md) | 254 | `result-track:ad892c565c062d968d8744fd7c32134c6482db2bbe0cf1c9c9d379053a8de309` |
| 27 | `lemma` | [MemLp.toLp_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/memlp-tolp-const--0193909a6e90e53472e525fe.md) | 257 | `result-track:0193909a6e90e53472e525fea2c1598467d0a4c5dbb828568ebf2b0d68a9ce11` |
| 28 | `lemma` | [indicatorConstLp_univ](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-univ--cdfc28cc72965d10ae5c9895.md) | 263 | `result-track:cdfc28cc72965d10ae5c98954904c782920b59329d820aee72c744f1b3220cb9` |
| 29 | `theorem` | [Lp.norm_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-norm-const--2696b1b1bfbf8248060c486b.md) | 268 | `result-track:2696b1b1bfbf8248060c486bd317b785202e7cddbe77bdb4bfa7706a8c01f97b` |
| 30 | `theorem` | [Lp.norm_const'](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-norm-const--4908bc41a2ff3a09caee0823.md) | 274 | `result-track:4908bc41a2ff3a09caee0823c3553e77e2045e31622ba9999e50e90fcb1513d9` |
| 31 | `theorem` | [Lp.norm_const_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-norm-const-le--118d29068e9bf1f80a8c3901.md) | 279 | `result-track:118d29068e9bf1f80a8c3901d8e57b5e26c98d4b09bfc8dfeb3a08c40c280769` |
| 32 | `def` | [Lp.constₗ](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-const--65cec2b90aec0f5c37f73722.md) | 284 | `declaration-track:65cec2b90aec0f5c37f737222d399dc7e218724718feba7e656b9108c9bc8357` |
| 33 | `def` | [Lp.constL](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-constl--f3ab78403d897b9bb2838a8e.md) | 292 | `declaration-track:f3ab78403d897b9bb2838a8e258a1bb6e307a016c048e7319925c43b8c76bea5` |
| 34 | `theorem` | [Lp.norm_constL_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/lp-norm-constl-le--b5c576c86bead1f5e5836313.md) | 297 | `result-track:b5c576c86bead1f5e5836313d3c438215a1ebed600da73fb0a60861a74ad9561` |
| 35 | `theorem` | [indicatorConstLp_compMeasurePreserving](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-compmeasurepreserving--c122b4f5bf2fd4582b1c041f.md) | 308 | `result-track:c122b4f5bf2fd4582b1c041f5558cc07c50c995553fde31893246fcce53fdba8` |
| 36 | `theorem` | [indicatorConstLp_eq_toSpanSingleton_compLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/declarations/indicatorconstlp-eq-tospansingleton-complp--584b581ff86128ad641655c5.md) | 317 | `result-track:584b581ff86128ad641655c5be811ca5b3ced9befa173eb445eb9a5b30694ef9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
