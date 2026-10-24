# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7229cced1b21db19f79fec3d00f8f9268286d21",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7229cced1b21db19f79fec3d00f8f9268286d21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [toOrderBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/toorderbot--51b63760f86402e82b5927ae.md) | 60 | `declaration-track:51b63760f86402e82b5927ae160f07dc11171db21fbc90b03887a111b0c48896` |
| 2 | `abbrev` | [toOrderTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/toordertop--9833a1319075f3a0bf12699c.md) | 66 | `declaration-track:9833a1319075f3a0bf12699cbbab11472072f7f09e0e12a0938c9da51876d429` |
| 3 | `abbrev` | [toBoundedOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/toboundedorder--46b1add54549d841379a7742.md) | 72 | `declaration-track:46b1add54549d841379a7742d65ae7011812457675d21abe33479ab852a01893` |
| 4 | `abbrev` | [toCompleteLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletelattice--d4afdfa5f99dfed31a46f85e.md) | 84 | `declaration-track:d4afdfa5f99dfed31a46f85e32c7d18859416768a1710bb7a80344a24c863d00` |
| 5 | `abbrev` | [toCompleteDistribLatticeMinimalAxioms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletedistriblatticeminimalaxioms--edf611bcec5f416a8d081874.md) | 96 | `declaration-track:edf611bcec5f416a8d081874d19a00eafaa3e6c7a3edb962a4bc2d17461e2179` |
| 6 | `abbrev` | [toCompleteDistribLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletedistriblattice--1054b0ac43d0218aa8dfec16.md) | 112 | `declaration-track:1054b0ac43d0218aa8dfec16b3024956010687c72f8e56a12104364cf25766b3` |
| 7 | `abbrev` | [toCompleteLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletelinearorder--606d14644b0308c4159e4fe4.md) | 121 | `declaration-track:606d14644b0308c4159e4fe4228de8ec3ccbccd35f26ad69324da5c93de814b5` |
| 8 | `abbrev` | [toCompleteBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletebooleanalgebra--7c57ff8eaa78dbb5d45679ac.md) | 127 | `declaration-track:7c57ff8eaa78dbb5d45679acd448574d97796ae833160c37eae2e49641693061` |
| 9 | `abbrev` | [toCompleteAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompleteatomicbooleanalgebra--db9a52775ad1a28a44cd077a.md) | 135 | `declaration-track:db9a52775ad1a28a44cd077a0ff0df9dc9226d7d7362d5eb8986f16bb0009a15` |
| 10 | `abbrev` | [toCompleteLatticeOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletelatticeofnonempty--8b977061fcbd611c014e5ef7.md) | 148 | `declaration-track:8b977061fcbd611c014e5ef7b57cd3dff0ed283e65dd83fb71ddb727736b6153` |
| 11 | `abbrev` | [toCompleteLinearOrderOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/tocompletelinearorderofnonempty--09e9ce6e3fb8a5c75fb24ac7.md) | 155 | `declaration-track:09e9ce6e3fb8a5c75fb24ac77bcdb86fb3f667e8cce85d00b59b668a64b0c62e` |
| 12 | `instance` | [Fin.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/fin-completelinearorder--8a9cb8d77a0fe7b40946c049.md) | 165 | `declaration-track:8a9cb8d77a0fe7b40946c049a4b7b5c9fab496b0834f4e976d136cc92a8387dc` |
| 13 | `instance` | [Bool.completeBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/bool-completebooleanalgebra--131fdd2eb9f7d564e07db4e9.md) | 168 | `declaration-track:131fdd2eb9f7d564e07db4e91ac9dfcad87229bf3a81fce50702162159640526` |
| 14 | `instance` | [Bool.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/bool-completelinearorder--94d5684d2523cb5fa14718a9.md) | 171 | `declaration-track:94d5684d2523cb5fa14718a944f41696171af24142016e3f1e5e6ac7058e8a9d` |
| 15 | `instance` | [Bool.completeAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/bool-completeatomicbooleanalgebra--05be7fc6740f8b838114ddcc.md) | 176 | `declaration-track:05be7fc6740f8b838114ddccc0edb2c71b4333a3614ff93aeb0db84f9da8397e` |
| 16 | `theorem` | [Directed.finite_set_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/directed-finite-set-le--18d157b56b55b6bfdd084efd.md) | 185 | `result-track:18d157b56b55b6bfdd084efd230ea602f3f8eec9860cdc79b1a591fe85081bf4` |
| 17 | `theorem` | [Directed.finite_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/directed-finite-le--0efff742c49587e4502826be.md) | 189 | `result-track:0efff742c49587e4502826be52c07b8bb3ecea13ade3f6ff766ad4beac628571` |
| 18 | `theorem` | [Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/finite-exists-le--a2726f48f0960ba1df93b171.md) | 196 | `result-track:a2726f48f0960ba1df93b17185af7761cff2676a89884c8081717826b3a1ee35` |
| 19 | `theorem` | [Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/finite-exists-ge--995ab03f39cc898c881549df.md) | 199 | `result-track:995ab03f39cc898c881549df8f6dc78c3a84da02971c80fd3a9a86d8fa834f04` |
| 20 | `theorem` | [Set.Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/set-finite-exists-le--bd75ee0094d1771089143f24.md) | 202 | `result-track:bd75ee0094d1771089143f246ae5c6039f4673f60239d0c5ab40a8c969b53d57` |
| 21 | `theorem` | [Set.Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/set-finite-exists-ge--446356bb6c07a71026e2d2f0.md) | 206 | `result-track:446356bb6c07a71026e2d2f008d591ed5a631e6f29f2df097a68d33782671961` |
| 22 | `theorem` | [Finite.bddAbove_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/finite-bddabove-range--cffc611a0578f7b6df196444.md) | 211 | `result-track:cffc611a0578f7b6df1964447c0f2cae058998d69ee0009425c02f2f5039e22f` |
| 23 | `theorem` | [Finite.bddBelow_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantf129d243322fc63c2f1887cc685d9ebf962160c29d0702f7a4fa8316006c62a7.lean/declarations/finite-bddbelow-range--8b9f9fa5e0cd65b36ab7d43c.md) | 218 | `result-track:8b9f9fa5e0cd65b36ab7d43c8f6957f84455fd04a12873c11c013e28b79e500a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
