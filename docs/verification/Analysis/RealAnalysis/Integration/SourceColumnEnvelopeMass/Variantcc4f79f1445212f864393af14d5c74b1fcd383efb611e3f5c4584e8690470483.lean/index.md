# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceColumnEnvelopeMass.Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "326f52c82ec0256ace0e0773e48940f289eecbe8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `326f52c82ec0256ace0e0773e48940f289eecbe8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean.json)

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
| 1 | `theorem` | [inverse_sqrt_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/declarations/inverse-sqrt-antiderivative--74f57bc654e5518a4fa4a27e.md) | 29 | `result-track:74f57bc654e5518a4fa4a27e3fe5b4bec206d542ba2c9359c53c4221e0907b52` |
| 2 | `theorem` | [inverse_sqrt_cell_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/declarations/inverse-sqrt-cell-integrable--faa7085abac0c929fcceb9fb.md) | 39 | `result-track:faa7085abac0c929fcceb9fb12c5cdffb0f1eac9f858c4708aac4b2d84abadc5` |
| 3 | `theorem` | [inverse_sqrt_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/declarations/inverse-sqrt-integral--47039e12ab32745756a4c5bd.md) | 48 | `result-track:47039e12ab32745756a4c5bd4d4009376461a2ae8f33c57dfae3eec78b1a0153` |
| 4 | `def` | [columnEnvelopeMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/declarations/columnenvelopemass--0e995308680f371a487e8172.md) | 58 | `declaration-track:0e995308680f371a487e8172f9fca5e172978e42b959b39abcfb43afb8ece54c` |
| 5 | `theorem` | [columnEnvelopeMass_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/declarations/columnenvelopemass-le--c2b7057aa55bd022eb07d649.md) | 65 | `result-track:c2b7057aa55bd022eb07d649d982edde5a58fb17dc917fe049a3011c8f4886dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
