# Verification target: GRWTSK.Algebra.RingTheory.Dickson.Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34bff047db3c38d4ab7eb79628f6b70d5cda46f0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34bff047db3c38d4ab7eb79628f6b70d5cda46f0`.

Source path: `GRWTSK/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson--c69472a04cc086bcd5db7536.md) | 61 | `declaration-track:c69472a04cc086bcd5db7536a95c2ca4094f23ec2a147aa32883ba2e8a1f4a62` |
| 2 | `theorem` | [dickson_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-zero--acedce3f4b4a2e181b8df427.md) | 68 | `result-track:acedce3f4b4a2e181b8df427e9c8a08904cb25a046e0c645515be07628917edd` |
| 3 | `theorem` | [dickson_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one--c7cd4816e2758d8e2d12771f.md) | 73 | `result-track:c7cd4816e2758d8e2d12771f2611ba8c76ba8f92bff1d27a28bd75ce5bf1230b` |
| 4 | `theorem` | [dickson_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-two--d3a61aefb75dda48d9740f72.md) | 77 | `result-track:d3a61aefb75dda48d9740f7221d6523b5f4108496f97e15fbb8de037896aaa5b` |
| 5 | `theorem` | [dickson_add_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-add-two--74750e22829c36277d624926.md) | 82 | `result-track:74750e22829c36277d624926b7f73ccff4f4e5e88b6d80282cbaba3f62377c04` |
| 6 | `theorem` | [dickson_of_two_le](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-of-two-le--cb6b1dfa375c1b9baeb6804b.md) | 86 | `result-track:cb6b1dfa375c1b9baeb6804bb33341b124e41bab4b3172d0a89890f955776a4f` |
| 7 | `theorem` | [map_dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/map-dickson--fb2915fec55ce47ec85ce069.md) | 95 | `result-track:fb2915fec55ce47ec85ce0692ecd34a981c037590353bda5e6c9d95dde92c4ff` |
| 8 | `theorem` | [dickson_two_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-two-zero--d87c33c67906d0eb4151832b.md) | 105 | `result-track:d87c33c67906d0eb4151832bb6ce655f67a90025209ae385b5f74dbcb6554558` |
| 9 | `theorem` | [dickson_one_one_eval_add_inv](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one-one-eval-add-inv--7366f1cf3a18450325adba6d.md) | 129 | `result-track:7366f1cf3a18450325adba6d43f1b96afd8c50b3ba10f587abc9577449fbb5b1` |
| 10 | `theorem` | [two_mul_C_half_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/two-mul-c-half-eq-one--bf4b4e21be9930e63c18ed9a.md) | 147 | `result-track:bf4b4e21be9930e63c18ed9a7427f203e0e06ed2d55ad41d6a16d5e129f1a867` |
| 11 | `theorem` | [C_half_mul_two_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/c-half-mul-two-eq-one--689cb6ac03d68b93689eff6f.md) | 150 | `result-track:689cb6ac03d68b93689eff6f52c7614744ad34d0948740b06001fb8c82393625` |
| 12 | `theorem` | [dickson_one_one_eq_chebyshev_T](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one-one-eq-chebyshev-t--35423eab02d7b9deae844e97.md) | 153 | `result-track:35423eab02d7b9deae844e9703aee7e235c48028d6d3a19ad895b9bb8c864c5f` |
| 13 | `theorem` | [chebyshev_T_eq_dickson_one_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/chebyshev-t-eq-dickson-one-one--37a36d018fc0ef673fbc64ad.md) | 168 | `result-track:37a36d018fc0ef673fbc64adba9cebf1f48155b2485a149ed41cbd619ab6fce8` |
| 14 | `theorem` | [dickson_one_one_mul](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one-one-mul--3672967b8c0d00213b2719a8.md) | 177 | `result-track:3672967b8c0d00213b2719a891c9aabfe4a482fdab60800491ae25f6a53bd864` |
| 15 | `theorem` | [dickson_one_one_comp_comm](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one-one-comp-comm--94b51cae53abe2f869bf7c0f.md) | 194 | `result-track:94b51cae53abe2f869bf7c0f5a66fd3005a0206e544a04a7505612ca8ce18f83` |
| 16 | `theorem` | [dickson_one_one_zmod_p](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one-one-zmod-p--85596c73c8bd059951f63153.md) | 199 | `result-track:85596c73c8bd059951f6315356cf11327ef04d17652349917c91929fad7ad991` |
| 17 | `theorem` | [dickson_one_one_charP](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/declarations/dickson-one-one-charp--d5155bbb52ee8de77e4e7041.md) | 268 | `result-track:d5155bbb52ee8de77e4e7041e159cf97ebe0936a0b4bf73fc720fee699b70c1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
