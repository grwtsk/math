# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc51688f7332e0caf3bd4d1b50c1d0052d304103",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc51688f7332e0caf3bd4d1b50c1d0052d304103`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLittleO_const_id_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/declarations/islittleo-const-id-cocompact--58761de39a562108c150bc77.md) | 19 | `result-track:58761de39a562108c150bc774898a367063747a88775f33ddbb9031fef7795b8` |
| 2 | `theorem` | [isLittleO_const_id_atTop2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/declarations/islittleo-const-id-attop2--439a431ac5de275653ceda24.md) | 24 | `result-track:439a431ac5de275653ceda245019079b7bace6fd0bcc8a08ce43e3ef4b38f411` |
| 3 | `theorem` | [isLittleO_const_id_atBot2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/declarations/islittleo-const-id-atbot2--cd18cc6ae2181ab6616f6ca9.md) | 29 | `result-track:cd18cc6ae2181ab6616f6ca9ec17a793d83f197b7cccfbc95a65f0fea84751d1` |
| 4 | `theorem` | [_root_.Filter.Eventually.natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/declarations/root-filter-eventually-natcast--d11ed27bb13611828661fe45.md) | 33 | `result-track:d11ed27bb13611828661fe45752a4131470ed48604af4e2a7e63c922d68855bf` |
| 5 | `theorem` | [IsBigO.natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.lean/declarations/isbigo-natcast--dab0541085380060b7fc31c8.md) | 37 | `result-track:dab0541085380060b7fc31c84f4a44e7b6e7d3008aa10a06c2d613c985b9e408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
