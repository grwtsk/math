# Verification target: GRWTSK.Topology.GeneralTopology.IsPowMulFaithful.Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "109a10e61542a07dd8f7d34f16e8329e239dd1a1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `109a10e61542a07dd8f7d34f16e8329e239dd1a1`.

Source path: `GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.AlgebraNorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contraction_of_isPowMul_of_boundedWrt](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/declarations/contraction-of-ispowmul-of-boundedwrt--7bc703ca38be5ee769d13ee1.md) | 32 | `result-track:7bc703ca38be5ee769d13ee1eb0bf29be4059a15f28d2514498e031055f5bc72` |
| 2 | `theorem` | [contraction_of_isPowMul](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/declarations/contraction-of-ispowmul--baf31edc6b214ac0527c76c2.md) | 56 | `result-track:baf31edc6b214ac0527c76c2d944a35875987923a211a9c9ed7b66cc7472db29` |
| 3 | `theorem` | [eq_seminorms](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/declarations/eq-seminorms--edfc9c1ef0193cbf094ffaf7.md) | 62 | `result-track:edfc9c1ef0193cbf094ffaf772512fbc7f8336b09d100cabe62fd105135049ba` |
| 4 | `theorem` | [eq_of_powMul_faithful](../../../../../mathematics/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/declarations/eq-of-powmul-faithful--aa6a8e6554c136f7c0192a64.md) | 80 | `result-track:aa6a8e6554c136f7c0192a64b3ba741da8bc7123391ddf181ae2ea307d656ea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
