# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19f18a2e668ecaa0d91c997a6e5bc01b21c57df9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19f18a2e668ecaa0d91c997a6e5bc01b21c57df9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PUnit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [punitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/declarations/punitcone--042e9ccbd606dd034d74c25c.md) | 29 | `declaration-track:042e9ccbd606dd034d74c25c768d1f5987d285c00031dac133c88ce0d394fc1e` |
| 2 | `def` | [punitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/declarations/punitcocone--2ceda44a2ffd14e854cbded8.md) | 34 | `declaration-track:2ceda44a2ffd14e854cbded8977904ecaafbdc109308a7f4563dfdc6750a28c8` |
| 3 | `def` | [punitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/declarations/punitconeislimit--2015fa6d1eda23ff828ef4ab.md) | 40 | `declaration-track:2015fa6d1eda23ff828ef4ab2b7e886c91ceb7bf0d8aadbdf608d11cef8c1af5` |
| 4 | `def` | [punitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/declarations/punitcoconeiscolimit--ed657a9e8995ef89e6df41c0.md) | 46 | `declaration-track:ed657a9e8995ef89e6df41c00726e4a6e416d40eec3d664ddcb9db9a9e73245f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/declarations/instance--250680e55aed7e453517ccce.md) | 50 | `declaration-track:250680e55aed7e453517ccceaa6bcb046b7e0809e4bb2e2f3c7d979d46b3cc92` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec.lean/declarations/instance--2266ba81af2939f5ecdbf544.md) | 53 | `declaration-track:2266ba81af2939f5ecdbf544f31e3d7805f73c1beed93113801af3749f3f86ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
