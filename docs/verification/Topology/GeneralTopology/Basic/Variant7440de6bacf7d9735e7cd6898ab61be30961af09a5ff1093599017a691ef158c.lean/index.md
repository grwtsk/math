# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13162cc7c9de50a2bc53b974530bb889fc2dc3c2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13162cc7c9de50a2bc53b974530bb889fc2dc3c2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.SheafedSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingedSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/ringedspace--b587b4acf9842c6f965ceb3f.md) | 39 | `declaration-track:b587b4acf9842c6f965ceb3f30653e248635b9df5abf9c574e9282ffe67dcce2` |
| 2 | `lemma` | [res_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/res-zero--e28637d551149190ba1b8709.md) | 47 | `result-track:e28637d551149190ba1b87098da71ad7f13d21505dff5be615a17a2461eaa632` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/instance--88a417e35140a4acaf8e8999.md) | 53 | `declaration-track:88a417e35140a4acaf8e89992514961253f1aa3bd7e44722b1bf28ed25701eeb` |
| 4 | `lemma` | [exists_res_eq_zero_of_germ_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/exists-res-eq-zero-of-germ-eq-zero--331af128e08749883e556c76.md) | 58 | `result-track:331af128e08749883e556c76946aa778bbe2fe56123dd8d595300cb76c5ea014` |
| 5 | `theorem` | [isUnit_res_of_isUnit_germ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/isunit-res-of-isunit-germ--339e53e07ca439013d88db82.md) | 71 | `result-track:339e53e07ca439013d88db82d82955d46d2da9463eb796d434d9f7f7bad480a8` |
| 6 | `theorem` | [isUnit_of_isUnit_germ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/isunit-of-isunit-germ--d45c0b9c0fadfc5ece736247.md) | 99 | `result-track:d45c0b9c0fadfc5ece736247f928673a96d8221f2e352904b1e06458497bf188` |
| 7 | `def` | [basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen--70da27a57b858bfba389ba45.md) | 145 | `declaration-track:70da27a57b858bfba389ba45c4deb8f74b4d324b79e319a7951e535cfa04dbe6` |
| 8 | `theorem` | [mem_basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/mem-basicopen--38b8e68eb5033b9440b412da.md) | 158 | `result-track:38b8e68eb5033b9440b412da6bff99a62e4964fd61e4c11487df75353679b3fe` |
| 9 | `theorem` | [mem_basicOpen'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/mem-basicopen--aa4690f8318becda116d320a.md) | 164 | `result-track:aa4690f8318becda116d320aa00f45a30aa5375014be7886018d6db9f46fa021` |
| 10 | `theorem` | [mem_top_basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/mem-top-basicopen--16fbd45dfc4e5cb2cb8c2b58.md) | 169 | `result-track:16fbd45dfc4e5cb2cb8c2b58d365e6770db7188debf058864d83ea98603381d8` |
| 11 | `theorem` | [basicOpen_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen-le--1d2958775c444996c6bbe679.md) | 173 | `result-track:1d2958775c444996c6bbe679bee9217a50a32140e5989784edcbf339ca968e2c` |
| 12 | `theorem` | [isUnit_res_basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/isunit-res-basicopen--f22db0827e6a76556d810647.md) | 177 | `result-track:f22db0827e6a76556d810647b922b740366b441c6ae2f0534ae6a5d6b2e9bc02` |
| 13 | `theorem` | [basicOpen_res](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen-res--aaf273b48e4c45a31296c7a1.md) | 185 | `result-track:aaf273b48e4c45a31296c7a1528db9405e7bb05da307917b4cf1273ce3f86e74` |
| 14 | `theorem` | [basicOpen_res_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen-res-eq--f9e6a1a400b141a2c0a9dbf4.md) | 201 | `result-track:f9e6a1a400b141a2c0a9dbf42e7faafa2957c2735028c9f4407abfc960d5b1ce` |
| 15 | `theorem` | [basicOpen_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen-mul--86b140a1342343dfefd5455e.md) | 212 | `result-track:86b140a1342343dfefd5455ed63cff9ade9453d824a8e8228a49d0a0e49e0d88` |
| 16 | `lemma` | [basicOpen_pow](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen-pow--f1314dcadb4d763b266292d3.md) | 220 | `result-track:f1314dcadb4d763b266292d3d3eba9fa52d52fbe0b950a5c1bf5ee080b8e4abc` |
| 17 | `theorem` | [basicOpen_of_isUnit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/basicopen-of-isunit--15d8ae05497d7393b54b9fe5.md) | 227 | `result-track:15d8ae05497d7393b54b9fe5ac7b90a381f55d025c9e0b184c64bf542cd44237` |
| 18 | `def` | [zeroLocus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/zerolocus--8b64596d6c8a996dad11ab04.md) | 239 | `declaration-track:8b64596d6c8a996dad11ab0498a4b353936a6bb718a9f91be10b3146c66b6377` |
| 19 | `lemma` | [zeroLocus_isClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/zerolocus-isclosed--daff46b086e02e03df2a938d.md) | 242 | `result-track:daff46b086e02e03df2a938daa2a01486e5614a10aae55e2e28e2aecf8d73d5b` |
| 20 | `lemma` | [zeroLocus_singleton](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/zerolocus-singleton--22b3fca2db6ce3b65114a4fd.md) | 249 | `result-track:22b3fca2db6ce3b65114a4fd3503010dabe95321fbf0563359ed845e7dc5bfdb` |
| 21 | `lemma` | [zeroLocus_empty_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/zerolocus-empty-eq-univ--01f1121d3c2ec03fc641522d.md) | 254 | `result-track:01f1121d3c2ec03fc641522d63bf73fbe25e755243900b2e444c12102df4078a` |
| 22 | `lemma` | [mem_zeroLocus_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/declarations/mem-zerolocus-iff--f1f20701d3ba9b624df97ce2.md) | 259 | `result-track:f1f20701d3ba9b624df97ce20f4ade97ffbe2a085a01265cf970206e5a0eed9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
