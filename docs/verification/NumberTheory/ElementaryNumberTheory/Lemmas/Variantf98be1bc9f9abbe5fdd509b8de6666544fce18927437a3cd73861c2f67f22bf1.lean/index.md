# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9115a4379aef4143cc9034b0e1f38ff8fbc529c6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9115a4379aef4143cc9034b0e1f38ff8fbc529c6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [directed_ptsOfPeriod_pnat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/directed-ptsofperiod-pnat--ddf9342effbbe0270269f873.md) | 24 | `result-track:ddf9342effbbe0270269f8734a9b4f0b21efb82d69aba691c4d93c3525c6a457` |
| 2 | `theorem` | [bijOn_periodicPts](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/bijon-periodicpts--ddfd5673cc7cd4bd7f65f8a8.md) | 31 | `result-track:ddfd5673cc7cd4bd7f65f8a80c3955b922684fa5240ac6a58f67ba54f69bd6e9` |
| 3 | `theorem` | [minimalPeriod_eq_prime_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-eq-prime-iff--190dd6a31f2bbd73722b846f.md) | 35 | `result-track:190dd6a31f2bbd73722b846fded51285ac0ae4e86b8ea1e5343f7280e19c4de6` |
| 4 | `theorem` | [minimalPeriod_eq_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-eq-prime--ea6edb28d1bd248c592204fe.md) | 43 | `result-track:ea6edb28d1bd248c592204fef69e71eaf9dac25f0c230ce787dcda820c8ac0e1` |
| 5 | `theorem` | [minimalPeriod_eq_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-eq-prime-pow--d3bc7699f38be3c8a5be242d.md) | 47 | `result-track:d3bc7699f38be3c8a5be242d7042cfd27e5ad265ff1d28c7faa8746d35438e6e` |
| 6 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/commute-minimalperiod-of-comp-dvd-mul--8f61a519eea6abbd2706fe68.md) | 52 | `result-track:8f61a519eea6abbd2706fe68a3551432b7d4ad990f7da38e5ac757039675121a` |
| 7 | `theorem` | [Commute.minimalPeriod_of_comp_eq_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/commute-minimalperiod-of-comp-eq-mul-of-coprime--1c6a5fdc5a5206dc68cca4c4.md) | 56 | `result-track:1c6a5fdc5a5206dc68cca4c4b78dd9c56cf227e378ab227eeeb041eccb93a711` |
| 8 | `theorem` | [minimalPeriod_le_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-le-card--d851e9161da96bab93e5bfa2.md) | 75 | `result-track:d851e9161da96bab93e5bfa2b2daaf13d5bd108fc283b9ec478f1f6c0d378f44` |
| 9 | `theorem` | [isPeriodicPt_factorial_card_of_mem_periodicPts](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/isperiodicpt-factorial-card-of-mem-periodicpts--68d697eac6e1d680bb577987.md) | 79 | `result-track:68d697eac6e1d680bb5779878c80b75c3f62a264e86e8f5f4016769ead82ed97` |
| 10 | `theorem` | [mem_periodicPts_iff_isPeriodicPt_factorial_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/mem-periodicpts-iff-isperiodicpt-factorial-card--340060c6d2640ca52b08c685.md) | 84 | `result-track:340060c6d2640ca52b08c6852757d5aee6c6aa13f8e3e165407e294721ad79a6` |
| 11 | `theorem` | [Injective.mem_periodicPts](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/injective-mem-periodicpts--e8a3068c01063aede4405228.md) | 90 | `result-track:e8a3068c01063aede4405228d9e1c7a924cfe7b3490fe955e8aa7b81dac43fee` |
| 12 | `theorem` | [injective_iff_periodicPts_eq_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/injective-iff-periodicpts-eq-univ--46d5395b4d010a9cf72ee2d3.md) | 100 | `result-track:46d5395b4d010a9cf72ee2d3763316e1192802b1607f9fa11748a58a2a5404f4` |
| 13 | `theorem` | [injective_iff_iterate_factorial_card_eq_id](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/injective-iff-iterate-factorial-card-eq-id--c2227627860b8a6916fd867c.md) | 108 | `result-track:c2227627860b8a6916fd867cf38ee6652ed7c81828ec2d8b98402dbbbcbb21b1` |
| 14 | `theorem` | [minimalPeriod_prodMap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-prodmap--667c784a209456937046bead.md) | 121 | `result-track:667c784a209456937046beadb42f6dd5f4d93dc052ad99cc61cb31ed33f04ab8` |
| 15 | `theorem` | [minimalPeriod_fst_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-fst-dvd--8a7ad488cec26aa05bc91a83.md) | 128 | `result-track:8a7ad488cec26aa05bc91a835f810056b4401b97b0ad330d51342dd50d56ddf7` |
| 16 | `theorem` | [minimalPeriod_snd_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantf98be1bc9f9abbe5fdd509b8de6666544fce18927437a3cd73861c2f67f22bf1.lean/declarations/minimalperiod-snd-dvd--7b76b4440717fbaedc014e8e.md) | 131 | `result-track:7b76b4440717fbaedc014e8e05d03c30e107ffc0710021200de736f6565d388b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
