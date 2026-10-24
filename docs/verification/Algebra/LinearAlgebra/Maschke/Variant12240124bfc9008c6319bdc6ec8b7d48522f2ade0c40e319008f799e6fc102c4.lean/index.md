# Verification target: GRWTSK.Algebra.LinearAlgebra.Maschke.Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b48459ef73d84e1159373af930ad2ef152214e1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b48459ef73d84e1159373af930ad2ef152214e1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjugate](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/conjugate--bb60ebeb2eff89f213ec9376.md) | 67 | `declaration-track:bb60ebeb2eff89f213ec9376286fcf965fb6ac226d8629446563ab5878614eb9` |
| 2 | `theorem` | [conjugate_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/conjugate-apply--f44da40432b4db5788f492ca.md) | 70 | `result-track:f44da40432b4db5788f492caa161a925184144099edafaab9f47aeb977c087fa` |
| 3 | `theorem` | [conjugate_i](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/conjugate-i--d979a0f9931c7ff17b9c988a.md) | 78 | `result-track:d979a0f9931c7ff17b9c988a1dbc871c5fe5bd19b019657babc0bcc3cb075d6b` |
| 4 | `def` | [sumOfConjugates](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/sumofconjugates--0fc0a175c2abe6df0004d44f.md) | 91 | `declaration-track:0fc0a175c2abe6df0004d44f7688b161d5830b5d8d45343046cf3f9c826bfab9` |
| 5 | `lemma` | [sumOfConjugates_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/sumofconjugates-apply--3daabb7c54df113ccca6de1a.md) | 94 | `result-track:3daabb7c54df113ccca6de1a7a2458476489165301be2679c33d3c0eb4fbad84` |
| 6 | `def` | [sumOfConjugatesEquivariant](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/sumofconjugatesequivariant--7492097ea80147a16f0fc358.md) | 99 | `declaration-track:7492097ea80147a16f0fc3588c5cebdc8aae5b338c2671da44e3e2e8be683a73` |
| 7 | `theorem` | [sumOfConjugatesEquivariant_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/sumofconjugatesequivariant-apply--e1a6fe7abd52615fd741f3fc.md) | 105 | `result-track:e1a6fe7abd52615fd741f3fc79a372c888d4599c258e47a2343cfb0d914748f5` |
| 8 | `def` | [equivariantProjection](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/equivariantprojection--742054b74d908f0a58e87319.md) | 114 | `declaration-track:742054b74d908f0a58e873197ef5a08662750d5b39735b84d392a2bbe8212266` |
| 9 | `theorem` | [equivariantProjection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/equivariantprojection-apply--1e72001967aa8d51114e1f2a.md) | 117 | `result-track:1e72001967aa8d51114e1f2aceb185e4dfb30cfeb786e4dcd77c236728a004a8` |
| 10 | `theorem` | [equivariantProjection_condition](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/equivariantprojection-condition--0bcf277da212b961f4a8e5ca.md) | 121 | `result-track:0bcf277da212b961f4a8e5caa47e7955053486fb26b2ba590d0bfa5a65cb0b61` |
| 11 | `theorem` | [exists_leftInverse_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/exists-leftinverse-of-injective--b0c17c002947792f261de68e.md) | 142 | `result-track:b0c17c002947792f261de68e42a0c3ba6c45192f62635385542f1043eceed7d9` |
| 12 | `theorem` | [exists_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/exists-iscompl--6879e79ae85fb1a6dc6a2723.md) | 157 | `result-track:6879e79ae85fb1a6dc6a272383f3da44a73d475278411316f2f6b77624e49cf4` |
| 13 | `instance` | [complementedLattice](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/complementedlattice--434354dcc18c282ef4c3e7f3.md) | 164 | `declaration-track:434354dcc18c282ef4c3e7f3ca6649ccb78b2160c330fa20df18398214114e04` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant12240124bfc9008c6319bdc6ec8b7d48522f2ade0c40e319008f799e6fc102c4.lean/declarations/instance--a81ff4fd9df0bc8c86ddefd0.md) | 167 | `declaration-track:a81ff4fd9df0bc8c86ddefd0f9f61c0b615d43a6d4156b9b4972678715983e8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
