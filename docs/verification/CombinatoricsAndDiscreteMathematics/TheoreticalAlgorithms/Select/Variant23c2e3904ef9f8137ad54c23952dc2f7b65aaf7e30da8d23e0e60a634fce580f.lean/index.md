# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Select.Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c02725c6443ad041e4ccc045b0a5ef5ab7270e9e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c02725c6443ad041e4ccc045b0a5ef5ab7270e9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Extra` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Waiter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/waiter--8c994b2afebcf0b160cbe06a.md) | 38 | `declaration-track:8c994b2afebcf0b160cbe06a6e1900198547c8da823c2d28b14536ce30b26441` |
| 2 | `def` | [Waiter.withPromise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/waiter-withpromise--74312b13944075549785e0af.md) | 48 | `declaration-track:74312b13944075549785e0afbf61f4241052904f3f6747e41beaf80332aa23a4` |
| 3 | `def` | [Waiter.race](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/waiter-race--823aff0e20bfc7c287ec0e81.md) | 57 | `declaration-track:823aff0e20bfc7c287ec0e81efbc8a86f0fb706385a6be58975ef2ada2082c85` |
| 4 | `def` | [Waiter.checkFinished](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/waiter-checkfinished--eb4b844ef47503ce1f0889b3.md) | 70 | `declaration-track:eb4b844ef47503ce1f0889b3433d5c6ed8f081decdaa9d550e5cb4ed5ae94ff5` |
| 5 | `structure` | [Selector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/selector--49d172774633f67f7c4618fb.md) | 77 | `declaration-track:49d172774633f67f7c4618fb7b7b1edf4d68a2869f5c64e951be8bd11d34758a` |
| 6 | `structure` | [Selectable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/selectable--0e9448e3b4f5ac1a7af2d84b.md) | 99 | `declaration-track:0e9448e3b4f5ac1a7af2d84b8259fa792dedda0074663308629a063b7c712c5b` |
| 7 | `def` | [shuffleIt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/shuffleit--4c35de2b66c4b39637415797.md) | 111 | `declaration-track:4c35de2b66c4b39637415797af602ef9fce6a9c0e0bc9ae83d286358f82dbf5b` |
| 8 | `def` | [Selectable.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/selectable-one--d15f9de0d02b2a5343f6c6ef.md) | 133 | `declaration-track:d15f9de0d02b2a5343f6c6ef25b7b562299489d10386fb271e97f8b34a25f59f` |
| 9 | `def` | [Selectable.tryOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/selectable-tryone--6e19097677e1b1b8514071b4.md) | 205 | `declaration-track:6e19097677e1b1b8514071b458981d2bc75125260c510a4702e482063b9464c2` |
| 10 | `def` | [Selectable.combine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/declarations/selectable-combine--71e1e0abe05195ef0e99e9a5.md) | 225 | `declaration-track:71e1e0abe05195ef0e99e9a5bc9dcd4869b20b66b4cd3c6cb2f3720734274018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
