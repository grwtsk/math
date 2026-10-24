# Verification target: GRWTSK.Algebra.OrderedProduct.Conjugation.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20b4088e385c28d22b09745192538d30dd83d7ff",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20b4088e385c28d22b09745192538d30dd83d7ff`.

Source path: `GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProductGauge`](../../../../../../mathematics/Algebra/OrderedProductGauge.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generic_site_consumer](../../../../../../mathematics/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean/declarations/generic-site-consumer--dd8ef23a3f29115ee40495fa.md) | 8 | `result-track:dd8ef23a3f29115ee40495fad4414617d2fc7968eed7379f45d511f90b99bebe` |
| 2 | `theorem` | [generic_chart_consumer](../../../../../../mathematics/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean/declarations/generic-chart-consumer--ca0d168afea69e1f3aff9545.md) | 14 | `result-track:ca0d168afea69e1f3aff95453ca5c3eb40a835e0b23ed367cde961589d9005da` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean/declarations/example--6a49eaaf447b43bf4bd4989f.md) | 18 | `declaration-track:6a49eaaf447b43bf4bd4989f38283ddc03126146e6e9bccc57f5e08925fb59ca` |
| 4 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean/declarations/elab--a1e1a2463b23c5f5356872ef.md) | 23 | `declaration-track:a1e1a2463b23c5f5356872efd31b90be69a28e0ed2a418e15e59229d466fe64c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
