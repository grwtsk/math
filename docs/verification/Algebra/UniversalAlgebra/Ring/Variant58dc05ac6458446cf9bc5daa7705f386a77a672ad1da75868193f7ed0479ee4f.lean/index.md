# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23eaaacb3f7892af701b5a41ea45d370acaccd32",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23eaaacb3f7892af701b5a41ea45d370acaccd32`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NonUnitalNonAssocSemiring.toDistribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean/declarations/nonunitalnonassocsemiring-todistribsmul--ff73fcb541dbeb858328e178.md) | 32 | `declaration-track:ff73fcb541dbeb858328e17816c615814524c41dff34693ccc2787f5d457bdd3` |
| 2 | `instance` | [NonUnitalNonAssocSemiring.nat_isScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean/declarations/nonunitalnonassocsemiring-nat-isscalartower--d51a0fa9076dcceaae04f0c7.md) | 36 | `declaration-track:d51a0fa9076dcceaae04f0c7484bb16e20800848fcaf96181566c3e418296079` |
| 3 | `instance` | [NonUnitalNonAssocRing.int_isScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant58dc05ac6458446cf9bc5daa7705f386a77a672ad1da75868193f7ed0479ee4f.lean/declarations/nonunitalnonassocring-int-isscalartower--345bd0548eb72dcbe8b9a86d.md) | 44 | `declaration-track:345bd0548eb72dcbe8b9a86d19e9f429a3978bef84a7ff4b1fa489fd998bc2a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
