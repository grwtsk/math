# Verification target: GRWTSK.Algebra.LinearAlgebra.Disintegration.Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2d22f994c052bc565151eb641dda55e18b0bc9a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2d22f994c052bc565151eb641dda55e18b0bc9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/instance--5f843f334cbc63420acec2da.md) | 48 | `declaration-track:5f843f334cbc63420acec2da5188fa54c3d4258b60ac3a8e88be738e4f7123d4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/instance--960336a3f3ed85cd6afcb823.md) | 49 | `declaration-track:960336a3f3ed85cd6afcb8236b75953dbe3e12ebe7232557e2ba4e3ff939bfa8` |
| 3 | `theorem` | [LinearMap.exists_map_addHaar_eq_smul_addHaar'](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/linearmap-exists-map-addhaar-eq-smul-addhaar--ad44681b04680b38cd0d7b8c.md) | 54 | `result-track:ad44681b04680b38cd0d7b8cab502b8ea198fa0ede2061a334121e5449b18a27` |
| 4 | `theorem` | [LinearMap.exists_map_addHaar_eq_smul_addHaar](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/linearmap-exists-map-addhaar-eq-smul-addhaar--fe7fe8e0ee0b71b915885ce1.md) | 118 | `result-track:fe7fe8e0ee0b71b915885ce1eb7fa90f43bbf61e3a0a656064e487e1b94247fb` |
| 5 | `lemma` | [ae_comp_linearMap_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/ae-comp-linearmap-mem-iff--a282e45d0718b71ed86602d1.md) | 127 | `result-track:a282e45d0718b71ed86602d1789568b71cac3c0c20af119b6542feac04a86f37` |
| 6 | `lemma` | [ae_ae_add_linearMap_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/ae-ae-add-linearmap-mem-iff--f750ebd3cc592e03193eb14b.md) | 139 | `result-track:f750ebd3cc592e03193eb14b6dc8e91d42ae567418f8a6fb2590a233f0daa622` |
| 7 | `lemma` | [ae_mem_of_ae_add_linearMap_mem](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variantb8aa5cec2105c131c91b8e4bf17013263d4be02b752ddc7e8466a46e3dcb204c.lean/declarations/ae-mem-of-ae-add-linearmap-mem--5cbce1afa73ccef819fb6eb0.md) | 160 | `result-track:5cbce1afa73ccef819fb6eb029949dfe41787055a538a171aec4e3f0bf1de521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
