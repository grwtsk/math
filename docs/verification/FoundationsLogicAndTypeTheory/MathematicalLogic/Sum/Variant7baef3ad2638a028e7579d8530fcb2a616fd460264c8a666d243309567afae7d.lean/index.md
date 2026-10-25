# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14d4f891fd77cfaf03a06953bca0895c83a094b1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14d4f891fd77cfaf03a06953bca0895c83a094b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Sum` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/declarations/instance--7b11a30a814f3ed479472e00.md) | 24 | `declaration-track:7b11a30a814f3ed479472e00e19eb7a8ccd09aa5b8d1e0b556de117d3a72d0b1` |
| 2 | `theorem` | [sum_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/declarations/sum-left--74acceb88759da160294d138.md) | 29 | `result-track:74acceb88759da160294d138ae38b1547c8e3bce033cae169702ba80d8d31810` |
| 3 | `theorem` | [sum_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/declarations/sum-right--074ffa012194c4a8f36efff3.md) | 32 | `result-track:074ffa012194c4a8f36efff3079c74771607188c1d6f7155e15f762f62ad30fd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/declarations/instance--7cdc0058143841d2bd2da158.md) | 35 | `declaration-track:7cdc0058143841d2bd2da1587ffce6e3d06c60d5eb13824a999dbd12a8e691a5` |
| 5 | `theorem` | [psum_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/declarations/psum-left--27f1eb8d723011dc21821801.md) | 38 | `result-track:27f1eb8d723011dc2182180169bae15f57bcaa43849072d557ce2fead6a2b299` |
| 6 | `theorem` | [psum_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean/declarations/psum-right--875a4354b8eb356f2adb9bdc.md) | 41 | `result-track:875a4354b8eb356f2adb9bdc24aa883c09e8756d42dcc2b8e247851f035943de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
