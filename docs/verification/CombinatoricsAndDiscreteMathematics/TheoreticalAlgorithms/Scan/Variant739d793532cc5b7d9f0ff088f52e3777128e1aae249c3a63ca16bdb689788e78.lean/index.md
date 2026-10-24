# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scan.Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f5d95e2d0c07b47b809296cf7bc196b714e2f30",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f5d95e2d0c07b47b809296cf7bc196b714e2f30`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/length-scanl--7acf1c7683bebed3d156b2b3.md) | 26 | `result-track:7acf1c7683bebed3d156b2b332806fce01520bff92e4e8c8998126285574e2d8` |
| 2 | `theorem` | [scanl_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/scanl-nil--7c59d30ba74c16769ca2adc2.md) | 33 | `result-track:7c59d30ba74c16769ca2adc2c142b9f95f0ed131c72f4e1a54280c4e76d50b03` |
| 3 | `theorem` | [scanl_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/scanl-cons--c33ac4ea942b88007a96226b.md) | 37 | `result-track:c33ac4ea942b88007a96226b5b00c01b4a8d00b0c9ae7617515506c0aabe79fd` |
| 4 | `theorem` | [getElem?_scanl_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/getelem-scanl-zero--0cce94d15327e66198286406.md) | 41 | `result-track:0cce94d15327e66198286406489abeaea094090ef9d65f151f839b2fa43f2178` |
| 5 | `theorem` | [getElem_scanl_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/getelem-scanl-zero--ac4fb2d216af93b022fcb09d.md) | 47 | `result-track:ac4fb2d216af93b022fcb09d740756b94a8f8cf752e1857c6e8a0e04f5bc9768` |
| 6 | `theorem` | [getElem?_succ_scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/getelem-succ-scanl--99b0bdbbb0fd12a695ec4e0f.md) | 52 | `result-track:99b0bdbbb0fd12a695ec4e0f9b18ee4b0052fa756d5ffc539ce96864ff47284e` |
| 7 | `theorem` | [getElem_succ_scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/getelem-succ-scanl--5c35fe3778caf7378dc7eaea.md) | 67 | `result-track:5c35fe3778caf7378dc7eaeab192e8c22910443a07945642fbf79a7731334d3c` |
| 8 | `theorem` | [scanr_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/scanr-nil--c8d1bacbdb97ab682d192700.md) | 87 | `result-track:c8d1bacbdb97ab682d192700536d419ea4e708c7eb531ac036caefd2a2db376b` |
| 9 | `theorem` | [scanr_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant739d793532cc5b7d9f0ff088f52e3777128e1aae249c3a63ca16bdb689788e78.lean/declarations/scanr-cons--18b60d0b0fc29d335c7209ce.md) | 91 | `result-track:18b60d0b0fc29d335c7209cea5aec670fb4a80b63be2d81eee5d0addd605a6cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
