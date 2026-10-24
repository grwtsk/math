# Verification target: GRWTSK.Algebra.GroupTheory.End.Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "529dbb97588c67d85e0a5b92fb29b7ee45885876",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `529dbb97588c67d85e0a5b92fb29b7ee45885876`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Surjective.distribMulActionLeft](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/function-surjective-distribmulactionleft--a5e9ff613002cef859f0eb21.md) | 32 | `declaration-track:a5e9ff613002cef859f0eb21a5199eae8039090fb179b0fb63e495dd68e59ed4` |
| 2 | `abbrev` | [DistribMulAction.compHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/distribmulaction-comphom--535d7ae9bf91b4ef01e994fa.md) | 43 | `declaration-track:535d7ae9bf91b4ef01e994fac3adf5db12a8d5b65452755e47a72625eec96e1a` |
| 3 | `abbrev` | [MulDistribMulAction.compHom](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/muldistribmulaction-comphom--eea23441dc02c47446f754eb.md) | 54 | `declaration-track:eea23441dc02c47446f754ebdf7076fe33c3893e7a397790b31ca35d49f0c186` |
| 4 | `instance` | [AddMonoid.End.applyDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/addmonoid-end-applydistribmulaction--43fec2440ff8d1378266ae91.md) | 64 | `declaration-track:43fec2440ff8d1378266ae916d2b69c9507d7d4bbd004d7f21da9433ac4d59c5` |
| 5 | `theorem` | [AddMonoid.End.smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/addmonoid-end-smul-def--69a357c1522398c89914fd21.md) | 73 | `result-track:69a357c1522398c89914fd21b54d63a814866a839121d8375e3e8a990f304130` |
| 6 | `instance` | [AddMonoid.End.applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/addmonoid-end-applyfaithfulsmul--878ee2bdbcd9ee60b729ee65.md) | 77 | `declaration-track:878ee2bdbcd9ee60b729ee65cd8c140006c1fb3fa8a484f2f6d6de38c94f61a6` |
| 7 | `def` | [DistribMulAction.toAddEquiv₀](../../../../../mathematics/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/declarations/distribmulaction-toaddequiv--14ad0c943cf931d1b510edba.md) | 84 | `declaration-track:14ad0c943cf931d1b510edbac9a3acbf256ef6d283461a1c7b1d6ad952399f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
