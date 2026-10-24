# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ADEInequality.Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acd215e4b519d6b8413020621e98d351e8dc91c3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acd215e4b519d6b8413020621e98d351e8dc91c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Interval` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [A'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/a--ccaea36aecd930b4eb688390.md) | 55 | `declaration-track:ccaea36aecd930b4eb688390747f995fdf124e0cdb88ebcb450774e1b15de8b5` |
| 2 | `def` | [A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/a--4c16435293d35148625cd457.md) | 63 | `declaration-track:4c16435293d35148625cd4576ebe5366beb868f014515b1c98f391dad14d4a3f` |
| 3 | `def` | [D'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/d--d1993ca3d49cec07b03a02f7.md) | 71 | `declaration-track:d1993ca3d49cec07b03a02f7fa28aaea757cbe2a49b0395bb4b33626b192a3a8` |
| 4 | `def` | [E'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/e--a3bf3da5147158a6082f0ba7.md) | 79 | `declaration-track:a3bf3da5147158a6082f0ba71c8aa32dab0c2394dd22db9603b8be4f8513ee68` |
| 5 | `def` | [E6](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/e6--52b143c0454ce738aed106aa.md) | 87 | `declaration-track:52b143c0454ce738aed106aa5a35fb99fee67f81f193a1a507f68fbbe2b6938e` |
| 6 | `def` | [E7](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/e7--3c82f5c37480bfc881f68468.md) | 95 | `declaration-track:3c82f5c37480bfc881f684687790b92729c0d9459d41fa7bb16b76f47db57290` |
| 7 | `def` | [E8](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/e8--e9a3e15bd29f1cab61fdeda0.md) | 103 | `declaration-track:e9a3e15bd29f1cab61fdeda0691bde940cec0b4d54c96a1007d2549e06b5650e` |
| 8 | `def` | [sumInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/suminv--bfbf68e17141ae2c4b7e0008.md) | 110 | `declaration-track:bfbf68e17141ae2c4b7e0008fde18bf7333e4dcf0466727194667f7cae9224f2` |
| 9 | `theorem` | [sumInv_pqr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/suminv-pqr--229f241ccdff1eac52906c2e.md) | 113 | `result-track:229f241ccdff1eac52906c2e73692b5096ab0a99843e781c51a13bd010cd0ed8` |
| 10 | `def` | [Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible--fc18cf92bd0b358df9660471.md) | 119 | `declaration-track:fc18cf92bd0b358df9660471c1293e30f4cd5e7272fd389a161242a41f81b36f` |
| 11 | `theorem` | [admissible_A'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-a--f535f44762ba3bb4684ce439.md) | 122 | `result-track:f535f44762ba3bb4684ce439237f5423f1870a85b6a7dd40cf41b94714fe12c0` |
| 12 | `theorem` | [admissible_D'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-d--f314615e71aaca02eba27db4.md) | 125 | `result-track:f314615e71aaca02eba27db473124339754c1b06f2cbe3a3cb4383c14499e587` |
| 13 | `theorem` | [admissible_E'3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-e-3--614d19720676c0f9ec672e61.md) | 128 | `result-track:614d19720676c0f9ec672e617a66dc5722d444a947ddf2ebc34f768aea937859` |
| 14 | `theorem` | [admissible_E'4](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-e-4--da247bc2168a6ebadb67961b.md) | 131 | `result-track:da247bc2168a6ebadb67961b0bb144193ac398cb2bac6c4e7cb81c990e8a8e83` |
| 15 | `theorem` | [admissible_E'5](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-e-5--e038014ec6e51f5ab6a5d3a8.md) | 134 | `result-track:e038014ec6e51f5ab6a5d3a830cd0ec20c8d3daba2b2e84217de492c95b8e97c` |
| 16 | `theorem` | [admissible_E6](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-e6--8e6f57a3449fdc40eab21d16.md) | 137 | `result-track:8e6f57a3449fdc40eab21d163225acbd4b9759391b512226772b863f128302e1` |
| 17 | `theorem` | [admissible_E7](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-e7--9352efe4274b37e5d0197e1c.md) | 140 | `result-track:9352efe4274b37e5d0197e1c03d55faa887a748c4fa11789ae5ac79137f0f5ac` |
| 18 | `theorem` | [admissible_E8](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-e8--f2f567fac00ba954176e2e81.md) | 143 | `result-track:f2f567fac00ba954176e2e81b30031e29b8ecf12c553d96ce54ad7a1aee871dd` |
| 19 | `theorem` | [Admissible.one_lt_sumInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-one-lt-suminv--a6ac963e7712301375dcecd6.md) | 146 | `result-track:a6ac963e7712301375dcecd6e297c6b6cd2c064d868e1a94ee784082f19002e6` |
| 20 | `theorem` | [lt_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/lt-three--d7c3cbca90d785b73fb1310a.md) | 158 | `result-track:d7c3cbca90d785b73fb1310a09d66dacfcc1fc7f899aa1c1e2b08aaeb6734f7c` |
| 21 | `theorem` | [lt_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/lt-four--60850524951b594c6133a282.md) | 180 | `result-track:60850524951b594c6133a2821cd64bbf606d5d180d652f918ee04fc2c74dd625` |
| 22 | `theorem` | [lt_six](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/lt-six--1b3ff5448ddf4692430503d3.md) | 197 | `result-track:1b3ff5448ddf4692430503d3bada0be38462b49619b0fc8b95ae9f00f43e9c59` |
| 23 | `theorem` | [admissible_of_one_lt_sumInv_aux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-of-one-lt-suminv-aux--b0ae1f78332c80f5076f677b.md) | 209 | `result-track:b0ae1f78332c80f5076f677ba483f8a34f4dad5abf35a53be0f555c845430e6b` |
| 24 | `theorem` | [admissible_of_one_lt_sumInv_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-of-one-lt-suminv-aux--6887cdf34ba5b2a0fccf3cdb.md) | 230 | `result-track:6887cdf34ba5b2a0fccf3cdb7663d2651ba88daf3370fa9f7ca64bea665a291a` |
| 25 | `theorem` | [admissible_of_one_lt_sumInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/admissible-of-one-lt-suminv--894e7c76c32c18df45b90cce.md) | 237 | `result-track:894e7c76c32c18df45b90cce2eb46dc2ee21091478ee5029be811b5d5583a26b` |
| 26 | `theorem` | [classification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/declarations/classification--4d4f0baf741ca542cf796fb2.md) | 256 | `result-track:4d4f0baf741ca542cf796fb24c3de21671817cf1734947d04730dbdb19ad7269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
