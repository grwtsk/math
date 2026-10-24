# Verification target: GRWTSK.Algebra.OrderedProduct.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09a8944cb41d74b8da9eb6d4787cfb902727c82d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/OrderedProduct/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/OrderedProduct/Checks/Audit.lean/index.md) · [Full source](../../../../../mathematics/Algebra/OrderedProduct/Checks/Audit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09a8944cb41d74b8da9eb6d4787cfb902727c82d`.

Source path: `GRWTSK/Algebra/OrderedProduct/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/OrderedProduct/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProduct`](../../../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/OrderedProduct/Checks/Audit.lean/declarations/example--e8a25ceee1dc4cf94b19f5ec.md) | 9 | `declaration-track:e8a25ceee1dc4cf94b19f5ecae77ad8face0ac1b7369d2b532bc1877dfd45dfe` |
| 2 | `theorem` | [product_add_consumer](../../../../../mathematics/Algebra/OrderedProduct/Checks/Audit.lean/declarations/product-add-consumer--40f4166a49524397fd4f8f2b.md) | 13 | `result-track:40f4166a49524397fd4f8f2bdec32ba6333e988dfc1a78c874c5da4ac36dd7b1` |
| 3 | `theorem` | [sign_inverse_consumer](../../../../../mathematics/Algebra/OrderedProduct/Checks/Audit.lean/declarations/sign-inverse-consumer--65918947e05889caa2e6eb47.md) | 19 | `result-track:65918947e05889caa2e6eb47dbfb1c981c37d86f163e0ee6d80a97f5f84ee19e` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/OrderedProduct/Checks/Audit.lean/declarations/elab--2b70ecd390bf264ffae67fb3.md) | 33 | `declaration-track:2b70ecd390bf264ffae67fb3c3ddb1b66d5aaf3669082770bfad41dd8c0d1f04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
