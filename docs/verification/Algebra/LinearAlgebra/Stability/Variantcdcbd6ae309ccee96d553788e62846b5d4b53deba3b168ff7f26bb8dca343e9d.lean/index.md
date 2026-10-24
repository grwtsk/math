# Verification target: GRWTSK.Algebra.LinearAlgebra.Stability.Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94a41f076248e40e524e5c11126af4f8b0164332",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94a41f076248e40e524e5c11126af4f8b0164332`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/declarations/trans--22472f2e00cfffad8dfcd76f.md) | 58 | `result-track:22472f2e00cfffad8dfcd76fc63c7194e0493e4282f7fa63ae2cd7311d13aa5e` |
| 2 | `instance` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/declarations/basechange--2e610888edec313e28773b35.md) | 85 | `declaration-track:2e610888edec313e28773b35d7a35ccb5de46d2fc4ef3f9c146f2b0e76e544c1` |
| 3 | `theorem` | [isBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/declarations/isbasechange--7044f946022c8ae7d23dffa1.md) | 88 | `result-track:7044f946022c8ae7d23dffa149e9e680a52fae92bd71c9216980f3b9e7186444` |
| 4 | `instance` | [localizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/declarations/localizedmodule--1b72b61abedd9fb9046c9a9f.md) | 101 | `declaration-track:1b72b61abedd9fb9046c9a9f1452dec2c72e2c53514d38006c9bd2a90b8afc4f` |
| 5 | `theorem` | [of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcdcbd6ae309ccee96d553788e62846b5d4b53deba3b168ff7f26bb8dca343e9d.lean/declarations/of-islocalizedmodule--59de6f47c21d6e4d21b95358.md) | 108 | `result-track:59de6f47c21d6e4d21b9535825acc70be3be289de76db84e394259dd717dcad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
