# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StandardReference.Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd21286cba6b3cb1dcc280dcaef29f0f8ebcf15",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd21286cba6b3cb1dcc280dcaef29f0f8ebcf15`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.SymmetricArchiveCodec` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Archive.FixedPoint` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Archive.FactorTreeIndex` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [standardReferenceCopyFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean/declarations/standardreferencecopyfixedpoint--9a9da3fb260b1590d7c9856b.md) | 20 | `declaration-track:9a9da3fb260b1590d7c9856b7a83182b1c1886c8f678ee05daab8b9075d98394` |
| 2 | `theorem` | [standardReference_manifestSerializer_roundtrip_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean/declarations/standardreference-manifestserializer-roundtrip-copy--ed7daa1879ebf1e81250fb57.md) | 25 | `result-track:ed7daa1879ebf1e81250fb57ec0ca242b466b289441818fc1063023a51eabf75` |
| 3 | `theorem` | [standardReference_copyArchive_materializes_file_layers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean/declarations/standardreference-copyarchive-materializes-file-layers--527e680fddfef3ccee30d6f3.md) | 32 | `result-track:527e680fddfef3ccee30d6f338ce5b9155bd3a88db4abd234712dac94403e552` |
| 4 | `def` | [standardReference_rectV4_runtime_target](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean/declarations/standardreference-rectv4-runtime-target--9ad9ce4c425caf55c676663e.md) | 40 | `declaration-track:9ad9ce4c425caf55c676663eb35bb59d88dc29cd88c397df5e77b57ae0157bfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
