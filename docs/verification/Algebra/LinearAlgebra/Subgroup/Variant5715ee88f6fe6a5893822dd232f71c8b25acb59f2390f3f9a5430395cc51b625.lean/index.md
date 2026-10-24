# Verification target: GRWTSK.Algebra.LinearAlgebra.Subgroup.Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2996a269a2cd63189d1b13af07605aa8e779bb2f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2996a269a2cd63189d1b13af07605aa8e779bb2f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Submonoid.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean/declarations/mul--8f3e116f4d73824346cc9b1a.md) | 32 | `declaration-track:8f3e116f4d73824346cc9b1a49823211fcc4253d5cf4b61fd91d951433fd4368` |
| 2 | `lemma` | [mul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean/declarations/mul-toaddsubmonoid--d07ea2b2780580b036ea7bdd.md) | 41 | `result-track:d07ea2b2780580b036ea7bdd0800e405a3c6ef6810b687568dd34a1055ed13ed` |
| 3 | `lemma` | [zero_smul](../../../../../mathematics/Algebra/LinearAlgebra/Subgroup/Variant5715ee88f6fe6a5893822dd232f71c8b25acb59f2390f3f9a5430395cc51b625.lean/declarations/zero-smul--e32d47c2ea07fe1d26a476bb.md) | 49 | `result-track:e32d47c2ea07fe1d26a476bb322541e7777cbc4332b7bf7d6c3e4e9680424e34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
