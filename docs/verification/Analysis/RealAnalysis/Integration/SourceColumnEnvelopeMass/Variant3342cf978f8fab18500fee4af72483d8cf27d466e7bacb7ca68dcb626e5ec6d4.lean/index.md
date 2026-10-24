# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceColumnEnvelopeMass.Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3a39eae1a9175760a1fa5aee47430b9c3bc1bc5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3a39eae1a9175760a1fa5aee47430b9c3bc1bc5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtQuotientEndpoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_sqrt_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/declarations/inverse-sqrt-antiderivative--3fba73cb1cf6c947f57aba6b.md) | 21 | `result-track:3fba73cb1cf6c947f57aba6b980a517c2bda9f9d1248a6d39ab0e2b2956f7a99` |
| 2 | `theorem` | [inverse_sqrt_cell_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/declarations/inverse-sqrt-cell-integrable--6d3ce52bd93fc993fc843792.md) | 32 | `result-track:6d3ce52bd93fc993fc843792173d1e2004a569c5adfc639b7d38d99c439b6605` |
| 3 | `theorem` | [inverse_sqrt_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/declarations/inverse-sqrt-integral--0e2f2ec78e17985f27577b07.md) | 41 | `result-track:0e2f2ec78e17985f27577b0752412e661bc453244bced8e6907e267c27f507f5` |
| 4 | `def` | [columnEnvelopeMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/declarations/columnenvelopemass--54594373df6fc128f374d4ad.md) | 51 | `declaration-track:54594373df6fc128f374d4ad0cb4cb9f25a54ca1a9ea04da71a39b6f7bb18252` |
| 5 | `theorem` | [columnEnvelopeMass_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant3342cf978f8fab18500fee4af72483d8cf27d466e7bacb7ca68dcb626e5ec6d4.lean/declarations/columnenvelopemass-le--0ebcf24f3d6ea8360af21e92.md) | 58 | `result-track:0ebcf24f3d6ea8360af21e9294c3735af383ea22136ab936a33981e0633eddd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
