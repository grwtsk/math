# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdbc6cc97684667acf67f8c57089754cb1e89abb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdbc6cc97684667acf67f8c57089754cb1e89abb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean/declarations/instance--df13d883fe010eef40e35c89.md) | 30 | `declaration-track:df13d883fe010eef40e35c891d4362d5c92efe846a451324ac4fdec26feeabd9` |
| 2 | `lemma` | [iSup_coe_lt_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean/declarations/isup-coe-lt-top--07627479e3de033c08dadfb6.md) | 37 | `result-track:07627479e3de033c08dadfb6011cd639467955fcb99230c0462ffe37345144e4` |
| 3 | `theorem` | [coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48.lean/declarations/coe-isup--956710bd8f704d994851b08f.md) | 40 | `result-track:956710bd8f704d994851b08f3343d1150303dd2aa5b81a933124276645652b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
