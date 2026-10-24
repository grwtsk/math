# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcb7c50da78499c0ce7a876a7d33ad66bec75107",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcb7c50da78499c0ce7a876a7d33ad66bec75107`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zero_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/declarations/zero-mem-center--ca9d31be3a34099390af943a.md) | 21 | `result-track:ca9d31be3a34099390af943a96906511f6c7b0e7d2feb61901941cb192d761ba` |
| 2 | `lemma` | [zero_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/declarations/zero-mem-centralizer--77a9db37418aadcb3f6357a9.md) | 27 | `result-track:77a9db37418aadcb3f6357a96de005e805c606d72419889d644e82e2abb8f6b4` |
| 3 | `lemma` | [center_units_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/declarations/center-units-subset--f799531179519cf2a1421aa8.md) | 34 | `result-track:f799531179519cf2a1421aa872e633c57330134d48f2534abf60ffb8f2ecbf9c` |
| 4 | `lemma` | [center_units_eq](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/declarations/center-units-eq--3322bff62ae04502919d6547.md) | 42 | `result-track:3322bff62ae04502919d6547e311f4d62815b913ece54b6a082c79eab04b6ad0` |
| 5 | `lemma` | [inv_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/declarations/inv-mem-centralizer--7441f0a1d860338004f2bf0b.md) | 45 | `result-track:7441f0a1d860338004f2bf0b32f31ef916846fc4912c65039cd2934f8586987e` |
| 6 | `lemma` | [div_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/declarations/div-mem-centralizer--acb7f7269dd3fe937f3591c5.md) | 52 | `result-track:acb7f7269dd3fe937f3591c55cc786c9e4c5d53027e27e9cdca260bd8d562c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
