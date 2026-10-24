# Verification target: GRWTSK.Algebra.GroupTheory.Invariant.Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eef9840b34c79086c9d573793532d6fd5d3ef47e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eef9840b34c79086c9d573793532d6fd5d3ef47e`.

Source path: `GRWTSK/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsInvariantSubring](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/declarations/isinvariantsubring--a0dfcfdabf7bcbe02379074e.md) | 29 | `declaration-track:a0dfcfdabf7bcbe02379074e7387623d5e04a138b0b8dcfa06f57c5ca30a3a63` |
| 2 | `instance` | [IsInvariantSubring.toMulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/declarations/isinvariantsubring-tomulsemiringaction--7ff7048e4ee268659cfb2f2c.md) | 32 | `declaration-track:7ff7048e4ee268659cfb2f2cc8cedca5d91f2006061375900ff8c29ec2e88fac` |
| 3 | `def` | [IsInvariantSubring.subtypeHom](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/declarations/isinvariantsubring-subtypehom--fa7e9107fa6235ec04fac3b0.md) | 51 | `declaration-track:fa7e9107fa6235ec04fac3b00f2e4146bdf930efdc86dfb49d05caad010a707a` |
| 4 | `theorem` | [IsInvariantSubring.coe_subtypeHom](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/declarations/isinvariantsubring-coe-subtypehom--5d12683920fc34050cf4a60c.md) | 55 | `result-track:5d12683920fc34050cf4a60c3b4d8547830f6b34fbae3cb369a6ddc72fc47f65` |
| 5 | `theorem` | [IsInvariantSubring.coe_subtypeHom'](../../../../../mathematics/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean/declarations/isinvariantsubring-coe-subtypehom--639c5ed6ef7db2f76bf40830.md) | 59 | `result-track:639c5ed6ef7db2f76bf40830c44088f8f2e2a659d3ee76c98b8b5971924bf8cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
