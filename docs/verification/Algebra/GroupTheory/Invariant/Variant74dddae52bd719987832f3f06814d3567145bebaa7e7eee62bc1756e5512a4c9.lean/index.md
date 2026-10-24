# Verification target: GRWTSK.Algebra.GroupTheory.Invariant.Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57eb895d17307f8d09fb790bdb29bdcc66087681",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57eb895d17307f8d09fb790bdb29bdcc66087681`.

Source path: `GRWTSK/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsInvariantSubring](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/declarations/isinvariantsubring--8a9bf8c8e7243ccc04d44a7d.md) | 37 | `declaration-track:8a9bf8c8e7243ccc04d44a7df9dc220218b08c3f8664671f4247d378f10a6093` |
| 2 | `instance` | [IsInvariantSubring.toMulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/declarations/isinvariantsubring-tomulsemiringaction--2460897608230487bf073fb3.md) | 40 | `declaration-track:2460897608230487bf073fb3b1eb0b698fbc5da065beeac9243f1c92e054189b` |
| 3 | `def` | [IsInvariantSubring.subtypeHom](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/declarations/isinvariantsubring-subtypehom--84ec12606198ec8d95ede410.md) | 59 | `declaration-track:84ec12606198ec8d95ede410f3eeb28deecdbccc46e8ce43066926879ed391e0` |
| 4 | `theorem` | [IsInvariantSubring.coe_subtypeHom](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/declarations/isinvariantsubring-coe-subtypehom--398de5e48d6d3450eba866d2.md) | 63 | `result-track:398de5e48d6d3450eba866d2937191fb90065a543935dfe7021ddac4dc851d82` |
| 5 | `theorem` | [IsInvariantSubring.coe_subtypeHom'](../../../../../mathematics/Algebra/GroupTheory/Invariant/Variant74dddae52bd719987832f3f06814d3567145bebaa7e7eee62bc1756e5512a4c9.lean/declarations/isinvariantsubring-coe-subtypehom--50ad64e6492a015880a9ba6c.md) | 67 | `result-track:50ad64e6492a015880a9ba6c34074a391cf0c32375603763e1a987254677ff9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
