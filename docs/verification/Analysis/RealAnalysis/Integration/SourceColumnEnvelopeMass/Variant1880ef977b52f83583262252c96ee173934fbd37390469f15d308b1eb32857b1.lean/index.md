# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceColumnEnvelopeMass.Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18321e0b4da4daaeae05fb4eb70c7e930331431b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18321e0b4da4daaeae05fb4eb70c7e930331431b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtQuotientEndpoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_sqrt_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/declarations/inverse-sqrt-antiderivative--9eaa3286e0c4075b5afdc5ed.md) | 29 | `result-track:9eaa3286e0c4075b5afdc5ed0058f16524abfad6a9bcd44d62c673803a175ddc` |
| 2 | `theorem` | [inverse_sqrt_cell_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/declarations/inverse-sqrt-cell-integrable--027e240534923eb9dd6b0663.md) | 40 | `result-track:027e240534923eb9dd6b066364e180892c07998cd3d2426bb9eeba33484852a5` |
| 3 | `theorem` | [inverse_sqrt_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/declarations/inverse-sqrt-integral--b3ee3861610fe77908f36e56.md) | 49 | `result-track:b3ee3861610fe77908f36e5688f4f453da5f257a746f32cbd726128db584ee70` |
| 4 | `def` | [columnEnvelopeMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/declarations/columnenvelopemass--b0e731a3702d92ef3313ef16.md) | 59 | `declaration-track:b0e731a3702d92ef3313ef1615b9830b00f34c5792a16d450e24f668f70954fa` |
| 5 | `theorem` | [columnEnvelopeMass_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant1880ef977b52f83583262252c96ee173934fbd37390469f15d308b1eb32857b1.lean/declarations/columnenvelopemass-le--3a06881561736ff3ae335f00.md) | 66 | `result-track:3a06881561736ff3ae335f0002e7b88b9f9ab48e5c5f9bc9afb065d365a03da9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
