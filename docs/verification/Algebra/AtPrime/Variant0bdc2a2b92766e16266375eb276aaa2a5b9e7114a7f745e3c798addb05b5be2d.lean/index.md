# Verification target: GRWTSK.Algebra.AtPrime.Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc973699a5a40a392efe805450355b715be3bdca",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/index.md) · [Full source](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc973699a5a40a392efe805450355b715be3bdca`.

Source path: `GRWTSK/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsLocalization.AtPrime](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/islocalization-atprime--548778856f6ceb01c2bb5308.md) | 47 | `declaration-track:548778856f6ceb01c2bb5308f260937788ac0325a3a9e84f3daabcda3e8e75ed` |
| 2 | `abbrev` | [Localization.AtPrime](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localization-atprime--9008a3604e53e04cd992679c.md) | 52 | `declaration-track:9008a3604e53e04cd992679cf9030544597a6668d0b3902ab70dae3e500b290b` |
| 3 | `theorem` | [AtPrime.Nontrivial](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/atprime-nontrivial--f12fae90e604932099171036.md) | 57 | `result-track:f12fae90e6049320991710365f5b8a267fe543f810b6c700166db7c408cafa7e` |
| 4 | `theorem` | [AtPrime.isLocalRing](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/atprime-islocalring--4b629af64f266b313934b4fe.md) | 64 | `result-track:4b629af64f266b313934b4fe846f866863f7144c75b8942b2528c0e12eceba1e` |
| 5 | `instance` | [AtPrime.isLocalRing](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/atprime-islocalring--3cc625eedd8c0ce3e2b357e0.md) | 97 | `declaration-track:3cc625eedd8c0ce3e2b357e0065e7defc88aa0e9b50ec4758e523f645ed76a35` |
| 6 | `instance` | [isDomain_of_local_atPrime](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/isdomain-of-local-atprime--dbf0e1c1274f35bb22308e16.md) | 110 | `declaration-track:dbf0e1c1274f35bb22308e16b081c02dc18e077713899aa14f14d60c78362f03` |
| 7 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/orderisoofprime--b3e2bf7a771615eebb418f5c.md) | 120 | `declaration-track:b3e2bf7a771615eebb418f5ce04673df9c5eee8c0f210a6d0792c5054e17b22c` |
| 8 | `theorem` | [isUnit_to_map_iff](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/isunit-to-map-iff--ebd0762fbfb99c2d058023e2.md) | 124 | `result-track:ebd0762fbfb99c2d058023e20a3dff701a1119d90656ebcbc353e55f44edacd9` |
| 9 | `theorem` | [to_map_mem_maximal_iff](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/to-map-mem-maximal-iff--6f3145c603edc6b6a0427f15.md) | 132 | `result-track:6f3145c603edc6b6a0427f15638f3dd8e0d70c690a3a8e321e95de6d9898ff30` |
| 10 | `theorem` | [comap_maximalIdeal](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/comap-maximalideal--680226a3ed4c4fc0332b257f.md) | 138 | `result-track:680226a3ed4c4fc0332b257f708b144840f954069cdef896b83ac1d3c88234d5` |
| 11 | `theorem` | [isUnit_mk'_iff](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/isunit-mk-iff--8e8bce8e10daebadadcb571f.md) | 142 | `result-track:8e8bce8e10daebadadcb571f8dd843f4d1e30ae38c716eb9c263af77d391a142` |
| 12 | `theorem` | [mk'_mem_maximal_iff](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/mk-mem-maximal-iff--e55b88a340634d94b29140a8.md) | 146 | `result-track:e55b88a340634d94b29140a8aaeed404c7f66ade250d80bd6a499b32172c9b88` |
| 13 | `theorem` | [AtPrime.comap_maximalIdeal](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/atprime-comap-maximalideal--d0ac768c78b92cc3915fa385.md) | 164 | `result-track:d0ac768c78b92cc3915fa385fc6c89b09868a59c494c276051b84f9304ce107d` |
| 14 | `theorem` | [AtPrime.map_eq_maximalIdeal](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/atprime-map-eq-maximalideal--857405ba22d2c7eb6b31a18d.md) | 173 | `result-track:857405ba22d2c7eb6b31a18d22fe065e590fa26095a2449240d84a2f6e38023f` |
| 15 | `theorem` | [le_comap_primeCompl_iff](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/le-comap-primecompl-iff--9422683bfb68c74f67981276.md) | 182 | `result-track:9422683bfb68c74f6798127631c9862372ffc237f3491cc87eb8de622b91d9f4` |
| 16 | `def` | [localRingHom](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localringhom--78eab498a647559478731355.md) | 197 | `declaration-track:78eab498a64755947873135534b3dccab4ef5a89b5a9ab035cc5ec49c0e9f051` |
| 17 | `theorem` | [localRingHom_to_map](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localringhom-to-map--cd03bb3687177021a46f3f07.md) | 201 | `result-track:cd03bb3687177021a46f3f078fa4f01a165ff5d01bc3f428de952d58cf6e744e` |
| 18 | `theorem` | [localRingHom_mk'](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localringhom-mk--cd835655019ff4642d1be312.md) | 205 | `result-track:cd835655019ff4642d1be312c96bbbaa6d8af73282938d5f5b97f86eef33633c` |
| 19 | `theorem` | [isLocalHom_localRingHom](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/islocalhom-localringhom--4bb113ac15c4ac9fe3390ec3.md) | 213 | `result-track:4bb113ac15c4ac9fe3390ec38b88e1d48563cc1c5ed96b9827f6c402ff43b41c` |
| 20 | `theorem` | [localRingHom_unique](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localringhom-unique--ac84ad69756d7f35e2847ab8.md) | 221 | `result-track:ac84ad69756d7f35e2847ab8460b24a8e3d6613893ab027ccec18ee1dcd0f7de` |
| 21 | `theorem` | [localRingHom_id](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localringhom-id--695fbb9d35ada5ed40122254.md) | 227 | `result-track:695fbb9d35ada5ed40122254a467e011687fbefcd2394c629425950a960465f9` |
| 22 | `theorem` | [localRingHom_comp](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/localringhom-comp--b21927f8e40567fa842c70b8.md) | 231 | `result-track:b21927f8e40567fa842c70b8ab2fd9372764eacd06886f4621a4e37200f2353f` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/instance--5da516e245a4897b3eabca71.md) | 244 | `declaration-track:5da516e245a4897b3eabca715a3cae7d390fb9d84662110d70d43ec91b0fa97e` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/instance--a66f108c2ec1dfb19b15e5b9.md) | 248 | `declaration-track:a66f108c2ec1dfb19b15e5b929eca5602233c3608749bae24ce8600bcd8a2059` |
| 25 | `abbrev` | [mapPiEvalRingHom](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/mappievalringhom--6da2377f7d473bffd04508ee.md) | 260 | `declaration-track:6da2377f7d473bffd04508ee53b20fa47a731343af2f71780bf6dad199d41c14` |
| 26 | `theorem` | [mapPiEvalRingHom_bijective](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/mappievalringhom-bijective--744d55dd5b7fa09385c10ddf.md) | 264 | `result-track:744d55dd5b7fa09385c10ddf9e248c1f6053ea2bb69b0f60949ecbe25f368ae2` |
| 27 | `theorem` | [mapPiEvalRingHom_comp_algebraMap](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/mappievalringhom-comp-algebramap--13c267289d30780a0e46e72d.md) | 267 | `result-track:13c267289d30780a0e46e72d05b0a867baffe5869f24c1eeb2ba8d82baab9c49` |
| 28 | `theorem` | [mapPiEvalRingHom_algebraMap_apply](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/mappievalringhom-algebramap-apply--0ec55b4a7d265558ceecee98.md) | 271 | `result-track:0ec55b4a7d265558ceecee98dd8b0cfe4ce74a8687713bdc6479a28406f5a80b` |
| 29 | `lemma` | [Ideal.isPrime_map_of_isLocalizationAtPrime](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/ideal-isprime-map-of-islocalizationatprime--4d5f26bd5a37c7ffd7aceebb.md) | 282 | `result-track:4d5f26bd5a37c7ffd7aceebbe777a1cffd1c18dbe61cbe69d2da55ab1a84eb13` |
| 30 | `lemma` | [Ideal.under_map_of_isLocalizationAtPrime](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/ideal-under-map-of-islocalizationatprime--1595779e154a60db978e70b9.md) | 288 | `result-track:1595779e154a60db978e70b991712a01f97e90b653f00218ece2f8a07d777c77` |
| 31 | `lemma` | [IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes](../../../../mathematics/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/declarations/islocalization-subsingleton-primespectrum-of-mem-minimalprimes--d90034f998abc58d232e15ec.md) | 294 | `result-track:d90034f998abc58d232e15ec89539ffadd9347a0e9434760197ed8ff40d5a5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
