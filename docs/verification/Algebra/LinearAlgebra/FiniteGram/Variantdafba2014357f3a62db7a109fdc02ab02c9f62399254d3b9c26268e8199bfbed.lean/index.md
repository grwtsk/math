# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3037bd90c92bcbd7e2a747f9c6e418327edc44",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3037bd90c92bcbd7e2a747f9c6e418327edc44`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Regularization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteGram](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/declarations/finitegram--173907080857a84547800de2.md) | 31 | `declaration-track:173907080857a84547800de22672fdfc19a081c891c8120e0d692cfd6f53069d` |
| 2 | `theorem` | [finiteGram_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/declarations/finitegram-apply--dd23444afd2b21da3cbc08a0.md) | 39 | `result-track:dd23444afd2b21da3cbc08a0fc80fcd6b2549f8530d97fdfa12aeada77f4f450` |
| 3 | `theorem` | [finiteGram_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/declarations/finitegram-hermitian--ef15b57af7f5421a3278bf19.md) | 49 | `result-track:ef15b57af7f5421a3278bf19141fe01a55f089e23f1b2f83818b366eaf3183a6` |
| 4 | `theorem` | [finiteGram_psd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/declarations/finitegram-psd--e890b17c4f3c14ddd882932d.md) | 58 | `result-track:e890b17c4f3c14ddd882932d4380f2cb77e9545bce93314d0f87a2e4fa50fb2d` |
| 5 | `structure` | [GramFactorCertificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/declarations/gramfactorcertificate--4940460535299a2da2e88ac3.md) | 68 | `declaration-track:4940460535299a2da2e88ac35bb3e9c4da68b49e868406e5691ad9d9e844dc18` |
| 6 | `theorem` | [column_inner_eq_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variantdafba2014357f3a62db7a109fdc02ab02c9f62399254d3b9c26268e8199bfbed.lean/declarations/column-inner-eq-kernel--e3eeea225c60d372a7d6fb34.md) | 88 | `result-track:e3eeea225c60d372a7d6fb3441cbaa541c32c0b1bb59135d52a99c98d63de475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
