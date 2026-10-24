# Verification target: GRWTSK.Analysis.MeasureTheory.Vitali.Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e41eb31d13a3143b2d602f731a4e6131621cac",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e41eb31d13a3143b2d602f731a4e6131621cac`.

Source path: `GRWTSK/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_disjoint_subfamily_covering_enlargement](../../../../../mathematics/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/declarations/exists-disjoint-subfamily-covering-enlargement--2c1d1ee1a34870b5ef4352f6.md) | 64 | `result-track:2c1d1ee1a34870b5ef4352f6862bf94923e7f63da0dbda0fd083c5e6e74a5eb7` |
| 2 | `theorem` | [exists_disjoint_subfamily_covering_enlargement_closedBall](../../../../../mathematics/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/declarations/exists-disjoint-subfamily-covering-enlargement-closedball--a0a8e4f424b2bf666261ab27.md) | 168 | `result-track:a0a8e4f424b2bf666261ab2756849055e2c4122575d61fa77a3435214a63b0e9` |
| 3 | `theorem` | [exists_disjoint_covering_ae](../../../../../mathematics/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/declarations/exists-disjoint-covering-ae--1d35fc246103acbc786298b6.md) | 220 | `result-track:1d35fc246103acbc786298b6919d37d13b85dc5f5ff3440e2de6aa91bac9be89` |
| 4 | `def` | [vitaliFamily](../../../../../mathematics/Analysis/MeasureTheory/Vitali/Variant407bc206bc03f4a595d26d19a6019f768dabfcfc1023d9095b444d5b7661fd7f.lean/declarations/vitalifamily--1fbe98146feaae3d8bfa4d64.md) | 412 | `declaration-track:1fbe98146feaae3d8bfa4d64f86d4266d61061cc8fe081178dca81374be10a5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
