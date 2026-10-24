# Verification target: GRWTSK.Algebra.LinearAlgebra.DomCoprod.Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e99615c0ab649f0cfe6745d4daf1327efceef6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.TensorProduct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ModSumCongr](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/modsumcongr--701a86cc54502df3041a6c04.md) | 31 | `declaration-track:701a86cc54502df3041a6c044da412d94b5e265fb770578684106c06a709aacb` |
| 2 | `def` | [domCoprod.summand](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod-summand--d7865c1c542ba4ce9e69359d.md) | 43 | `declaration-track:d7865c1c542ba4ce9e69359d9f9f69d87aa061fcf8750075a479b9b2b82daa48` |
| 3 | `theorem` | [domCoprod.summand_mk''](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod-summand-mk--1340d46d117c6604c91ca097.md) | 63 | `result-track:1340d46d117c6604c91ca097a6f7d0de1e8a8a9b457ff14da4c68124eeb56416` |
| 4 | `theorem` | [domCoprod.summand_add_swap_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod-summand-add-swap-smul-eq-zero--f9b685b1eec4fec0283bc49b.md) | 72 | `result-track:f9b685b1eec4fec0283bc49b2a2a712428455e7ab16feee0a4dbf7b3790faa3e` |
| 5 | `theorem` | [domCoprod.summand_eq_zero_of_smul_invariant](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod-summand-eq-zero-of-smul-invariant--4acaa494f1de65bd09f0dffe.md) | 89 | `result-track:4acaa494f1de65bd09f0dffe9d794902f37f055c7aaed7f8d4136b704355c720` |
| 6 | `def` | [domCoprod](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod--7314787b1f5330a128ef98db.md) | 132 | `declaration-track:7314787b1f5330a128ef98db68bcfea6ee913cf3ac09ad294b21b62b96cb9f4e` |
| 7 | `theorem` | [domCoprod_coe](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod-coe--75f4088a0497c6c433cefbf7.md) | 145 | `result-track:75f4088a0497c6c433cefbf7a76cc418ada8cc71cec4b3a427287fb9ff7b5b82` |
| 8 | `def` | [domCoprod'](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod--587318895e7b31302379c0f4.md) | 152 | `declaration-track:587318895e7b31302379c0f40be891e7cd874275d6888f16429894f5293010fd` |
| 9 | `theorem` | [domCoprod'_apply](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/domcoprod-apply--7c390d4123759af92198c42c.md) | 173 | `result-track:7c390d4123759af92198c42c1f1cde8f6d6089a80845237f6012481fb3431b49` |
| 10 | `theorem` | [MultilinearMap.domCoprod_alternization_coe](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/multilinearmap-domcoprod-alternization-coe--ccc62b9a9c5940c686826d05.md) | 182 | `result-track:ccc62b9a9c5940c686826d05a356f4d504ce57a38ca3a99732f017b706f1fc9d` |
| 11 | `theorem` | [MultilinearMap.domCoprod_alternization](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/multilinearmap-domcoprod-alternization--62b0d2b2ac0636d70362340f.md) | 200 | `result-track:62b0d2b2ac0636d70362340fb164df4afa0fc4b783302e9a1be735e46ad47ed6` |
| 12 | `theorem` | [MultilinearMap.domCoprod_alternization_eq](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/declarations/multilinearmap-domcoprod-alternization-eq--eaba64d92671a3b8ec258b84.md) | 233 | `result-track:eaba64d92671a3b8ec258b84ebd12dee02d908cb3a80222776746f8e26755b04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
