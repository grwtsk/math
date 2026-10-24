# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.KruskalKatona.Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Colex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Compression.UV` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Intersecting` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [shadow_initSeg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/shadow-initseg--fd630e99afeb25c75ce75372.md) | 67 | `result-track:fd630e99afeb25c75ce75372fa969e8060b99a6665e316b4d370a28fcf7f3a22` |
| 2 | `lemma` | [IsInitSeg.shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/isinitseg-shadow--b7d28f3a8d8bdd6086be4522.md) | 116 | `result-track:b7d28f3a8d8bdd6086be4522b5d8c6972adb38f067f53db5013ce52657d754f4` |
| 3 | `lemma` | [toColex_compress_lt_toColex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/tocolex-compress-lt-tocolex--27a3bb6bdf9d873708942f9e.md) | 140 | `result-track:27a3bb6bdf9d873708942f9e60e0ee7d306baf9f490daac4d473d945c1063e02` |
| 4 | `def` | [UsefulCompression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/usefulcompression--8b82abd42317e4be5ac42729.md) | 151 | `declaration-track:8b82abd42317e4be5ac42729dbcd7a6ac5fcc87b9b8464c2869ba735c6006968` |
| 5 | `instance` | [UsefulCompression.instDecidableRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/usefulcompression-instdecidablerel--c9fc0d07e386b53acee1fb84.md) | 154 | `declaration-track:c9fc0d07e386b53acee1fb84e24776fbe35cbe8660ca3771848bb4f33da719be` |
| 6 | `lemma` | [compression_improved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/compression-improved--7a3630025c856a24630c3cd1.md) | 161 | `result-track:7a3630025c856a24630c3cd1dafb78314464dbeb48af67a5119f629ca96457ba` |
| 7 | `lemma` | [isInitSeg_of_compressed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/isinitseg-of-compressed--bfa4cff9d446175f87673903.md) | 182 | `result-track:bfa4cff9d446175f87673903cf651edc1b81b2bf5ff540c370f64ca00817c5f2` |
| 8 | `def` | [familyMeasure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/familymeasure--3c7901e132f4d325f0b9dbe7.md) | 209 | `declaration-track:3c7901e132f4d325f0b9dbe78fe13460386ba10b10ecd2fc2085c4e51eb71931` |
| 9 | `lemma` | [familyMeasure_compression_lt_familyMeasure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/familymeasure-compression-lt-familymeasure--e30168c52040863c5c954eca.md) | 213 | `result-track:e30168c52040863c5c954eca328b5b5a6ccc8179cdb3cfde80ceab7fc37213b9` |
| 10 | `lemma` | [kruskal_katona_helper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/kruskal-katona-helper--009eb6da73d0e5a71b3e2a06.md) | 241 | `result-track:009eb6da73d0e5a71b3e2a0690635d650972ffb0ad0b1939764cb11d61ac68d9` |
| 11 | `theorem` | [kruskal_katona](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/kruskal-katona--36d7878b249b2cbca0f72d17.md) | 280 | `result-track:36d7878b249b2cbca0f72d17c1edd821b76beeedf5353ba078fa783c0c2e9847` |
| 12 | `theorem` | [iterated_kk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/iterated-kk--a28a1ce3b9b0e7aa05e19271.md) | 297 | `result-track:a28a1ce3b9b0e7aa05e192710b87a80bec667ecd0badf6e0686c82b80b1ea285` |
| 13 | `theorem` | [kruskal_katona_lovasz_form](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/kruskal-katona-lovasz-form--99629ef0427c417b5a8890c2.md) | 311 | `result-track:99629ef0427c417b5a8890c2e4d043a4c4158c9be495b1cff98a4c30cd9af76a` |
| 14 | `theorem` | [erdos_ko_rado](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/declarations/erdos-ko-rado--76370a5976feb845886ad078.md) | 357 | `result-track:76370a5976feb845886ad078826ffcce24bdcaa1887591fce1f96f89f96e3c95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
