# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "800b62bda787e566869e1f127ad8a621f5fa1561",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `800b62bda787e566869e1f127ad8a621f5fa1561`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Init.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/declarations/pmap--a700aba20767780bca2ea069.md) | 22 | `declaration-track:a700aba20767780bca2ea0696676fd1368651905f445107f71bd67ed629b91d2` |
| 2 | `def` | [attachImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/declarations/attachimpl--9f70e8fc71aa9609d2bfee8f.md) | 31 | `declaration-track:9f70e8fc71aa9609d2bfee8f2007dbc71b5b22825818ebdb133da8fc553fe0e5` |
| 3 | `def` | [attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/declarations/attach--344bc2c0dce83509971e6553.md) | 35 | `declaration-track:344bc2c0dce83509971e65533bad1b70da1e1dface25dad1983ae3165029e0ac` |
| 4 | `def` | [pmapImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/declarations/pmapimpl--dd6dc89deeea09a545b9a31b.md) | 39 | `declaration-track:dd6dc89deeea09a545b9a31b297361f1a07886e13a33aeb89c00bc67e62de6fd` |
| 5 | `theorem` | [pmap_eq_pmapImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant1a25ef56dbbac1d44ca4e3e9a919c46b78c62c1e089b60228d6dd757d5568065.lean/declarations/pmap-eq-pmapimpl--8c4eb7edab6e12b5da821c89.md) | 42 | `result-track:8c4eb7edab6e12b5da821c896061d93dbd549f823e7b44716c25e8031cc09471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
