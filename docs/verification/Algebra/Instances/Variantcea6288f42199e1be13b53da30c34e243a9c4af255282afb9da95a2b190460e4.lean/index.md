# Verification target: GRWTSK.Algebra.Instances.Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e1142933fabd7f203e2b9c513a59eafe6f1d7b2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e1142933fabd7f203e2b9c513a59eafe6f1d7b2`.

Source path: `GRWTSK/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [localization_unit_isIso](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/localization-unit-isiso--8674a8a7e4c4380df17e1836.md) | 18 | `declaration-track:8674a8a7e4c4380df17e1836c7b06bc7ad1b9d44877be3fdf09bd95ddbd1090d` |
| 2 | `instance` | [localization_unit_isIso'](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/localization-unit-isiso--6da21e47988eefa0d848df67.md) | 22 | `declaration-track:6da21e47988eefa0d848df67af7bed8412bd383ea29c341f07999065f004c548` |
| 3 | `theorem` | [IsLocalization.epi](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/islocalization-epi--41008a6b94d5cdd471081a64.md) | 27 | `result-track:41008a6b94d5cdd471081a643bb66c254bf8f3916609ad463e172ba497719c3a` |
| 4 | `instance` | [Localization.epi](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/localization-epi--126964e9ae5b13a0c992c6e7.md) | 32 | `declaration-track:126964e9ae5b13a0c992c6e76966e0490ab38b0a8f6d26bc5d4d0d73784cc82d` |
| 5 | `instance` | [Localization.epi'](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/localization-epi--a0990d74612a39207b9e345e.md) | 36 | `declaration-track:a0990d74612a39207b9e345e4002db4fe4ad1c604f575bfe13865a39a107ebbe` |
| 6 | `theorem` | [CommRingCat.isLocalHom_comp](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/commringcat-islocalhom-comp--5a7a14ccc2079fae3b17cd8a.md) | 42 | `result-track:5a7a14ccc2079fae3b17cd8a95ba1a94fa652cd86be07b5ef5b384632f3e7ff0` |
| 7 | `theorem` | [isLocalHom_of_iso](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/islocalhom-of-iso--f832728198e659e0842e2b31.md) | 46 | `result-track:f832728198e659e0842e2b31c3d68b912c20cb9decdd312876a95a4591c5af2c` |
| 8 | `theorem` | [isLocalHom_of_isIso](../../../../mathematics/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/declarations/islocalhom-of-isiso--965f28c9abfbaa4d29caa46f.md) | 53 | `result-track:965f28c9abfbaa4d29caa46fa032f1240848a764da52db062a77711fb90f3c63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
