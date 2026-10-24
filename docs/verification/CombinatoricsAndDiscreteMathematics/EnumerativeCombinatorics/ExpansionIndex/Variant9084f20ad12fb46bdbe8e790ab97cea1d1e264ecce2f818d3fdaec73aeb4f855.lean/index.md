# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpansionIndex.Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434ee194f3e74b61f74cbbde003f99a9dd2422e4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434ee194f3e74b61f74cbbde003f99a9dd2422e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Direction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/declarations/direction--447a8c898cf3f3a23fc9bfdf.md) | 19 | `declaration-track:447a8c898cf3f3a23fc9bfdf2f52a008f228ecc9a2d217344c462685319b02cb` |
| 2 | `abbrev` | [Address](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/declarations/address--b54811e42fb32de30fa3593e.md) | 24 | `declaration-track:b54811e42fb32de30fa3593e262f36752267bb4556fe887837da9aae707687e1` |
| 3 | `def` | [HasAddress](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/declarations/hasaddress--916d1bad35b70324b6cdaa3e.md) | 28 | `declaration-track:916d1bad35b70324b6cdaa3e59f099e8563921a35bf7475affca893a2dc5d632` |
| 4 | `def` | [expandAt?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/declarations/expandat--73c08c235738bc275d1de6f0.md) | 35 | `declaration-track:73c08c235738bc275d1de6f03135590b2946c572a048c425156afabd21e79904` |
| 5 | `theorem` | [expandAt?_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/declarations/expandat-internal--376cd91cd6632f5bb6dba783.md) | 48 | `result-track:376cd91cd6632f5bb6dba7836aa49f53942eec2c440159819ecd981560703d24` |
| 6 | `theorem` | [expandAt?_leaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855.lean/declarations/expandat-leaves--f40e6f765bddb11a622195d3.md) | 91 | `result-track:f40e6f765bddb11a622195d352161196e35230f56aeded808571e20a30bfaa3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
