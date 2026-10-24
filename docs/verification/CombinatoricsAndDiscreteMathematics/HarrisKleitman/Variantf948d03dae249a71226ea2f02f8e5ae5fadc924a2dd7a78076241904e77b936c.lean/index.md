# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HarrisKleitman.Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b174173a047a517e2e713d5802a64267778ea0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b174173a047a517e2e713d5802a64267778ea0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLowerSet.nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/islowerset-nonmembersubfamily--0217b4dd9ddec6695934337a.md) | 42 | `result-track:0217b4dd9ddec6695934337a7060adfc957e4e32da150e14baa69ff4252c2c8a` |
| 2 | `theorem` | [IsLowerSet.memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/islowerset-membersubfamily--c4b5b6180019f91b6ef2674e.md) | 47 | `result-track:c4b5b6180019f91b6ef2674e92efe96609999de82cde0de98063002795ebe715` |
| 3 | `theorem` | [IsLowerSet.memberSubfamily_subset_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/islowerset-membersubfamily-subset-nonmembersubfamily--ca672529479e9504914b2086.md) | 53 | `result-track:ca672529479e9504914b2086ec25e7d23a3bce0617c9142a967ee0eedab5c3bc` |
| 4 | `theorem` | [IsLowerSet.le_card_inter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/islowerset-le-card-inter-finset--7cec0aaef3cd6c5a63975c91.md) | 59 | `result-track:7cec0aaef3cd6c5a63975c91f95857e9bf581204f4c4e833751710c34ee1971d` |
| 5 | `theorem` | [IsLowerSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/islowerset-le-card-inter-finset--183b501cdb21db7b7a4e8f9f.md) | 102 | `result-track:183b501cdb21db7b7a4e8f9f23dd6aced3094a8f30c23bde32957f2475813928` |
| 6 | `theorem` | [IsUpperSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/isupperset-card-inter-le-finset--92abc683039667bc51b813ed.md) | 107 | `result-track:92abc683039667bc51b813ed08dc6d949c47870080dc56900ef837c3331c1fb7` |
| 7 | `theorem` | [IsLowerSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/islowerset-card-inter-le-finset--bb31f7a0f2db17580466128e.md) | 117 | `result-track:bb31f7a0f2db17580466128ec7f871ba57b299fc055b6ccea7e6326b6f832bff` |
| 8 | `theorem` | [IsUpperSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variantf948d03dae249a71226ea2f02f8e5ae5fadc924a2dd7a78076241904e77b936c.lean/declarations/isupperset-le-card-inter-finset--7f6a434c2cf5a83c738aa1f0.md) | 124 | `result-track:7f6a434c2cf5a83c738aa1f07a6f0e90d9b55e767e1bf28f42b78f15c74fc042` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
