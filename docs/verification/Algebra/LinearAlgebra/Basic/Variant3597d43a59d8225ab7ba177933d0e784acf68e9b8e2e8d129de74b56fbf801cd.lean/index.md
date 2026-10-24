# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cbf72265b62e121dcc7712208aaa6459e7e6961",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cbf72265b62e121dcc7712208aaa6459e7e6961`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/instance--cf5254361a6bf180638cda18.md) | 46 | `declaration-track:cf5254361a6bf180638cda18b5f8addfe95d6fbaab7e53ac71ce72ffba5629b1` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootDomMulActSmulLinearMapApply.Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.DomMulAct.smul_linearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/root-grwtsk-algebra-linearalgebra-rootdommulactsmullinearmapapply-varian--5b8cb2832853985e2278731b.md) | 52 | `result-track:5b8cb2832853985e2278731b6c6c26ef5741678d3afe8b21be91d9566fa2262b` |
| 3 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootDomMulActSmulLinearMapApply.Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.DomMulAct.mk_smul_linearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/root-grwtsk-algebra-linearalgebra-rootdommulactsmullinearmapapply-varian--c46d615304ab9ccf487101a3.md) | 57 | `result-track:c46d615304ab9ccf487101a3d8217f1c4b71c17789f794d6fdad4ec2948a3da8` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootDomMulActSmulLinearMapApply.Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.DomMulAct.coe_smul_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/root-grwtsk-algebra-linearalgebra-rootdommulactsmullinearmapapply-varian--a608df7490c245056397c7e0.md) | 61 | `result-track:a608df7490c245056397c7e0db51ca57784092732515d07bce70a68ef162ccc5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/instance--0bf1735ad960bf5a2e4dd7ac.md) | 65 | `declaration-track:0bf1735ad960bf5a2e4dd7acc0f19769f031cb4b81d02bb889655a251aa6cf9f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/instance--c4709d9e4e24bbfc10404304.md) | 80 | `declaration-track:c4709d9e4e24bbfc1040430437fdbd9e6d20699f0f75c37b5ad03d3e220f78da` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/instance--c9ef986f0bbda9f74acf4a29.md) | 93 | `declaration-track:c9ef986f0bbda9f74acf4a297bec3d5fc62f64c911844043401416d46fa444d6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3597d43a59d8225ab7ba177933d0e784acf68e9b8e2e8d129de74b56fbf801cd.lean/declarations/instance--972944172f7013acc5c7b012.md) | 96 | `declaration-track:972944172f7013acc5c7b0124bd6e21c3798e1b468fb1419a4092c0dee5bb4ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
