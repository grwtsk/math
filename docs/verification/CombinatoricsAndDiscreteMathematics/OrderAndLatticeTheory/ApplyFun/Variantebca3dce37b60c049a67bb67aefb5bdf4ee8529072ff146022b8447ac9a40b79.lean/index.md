# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ApplyFun.Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "616773c68be3427e4daa178577631b113c806924",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `616773c68be3427e4daa178577631b113c806924`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/initialize--29150e206320bebccf2ac896.md) | 30 | `declaration-track:29150e206320bebccf2ac8963cdd7204b936902e479450699465d9f02e8fb873` |
| 2 | `def` | [applyFunHyp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/applyfunhyp--8cc861d7ebb5991fbecb5274.md) | 33 | `declaration-track:8cc861d7ebb5991fbecb5274fe205587c461c3468ec9b04c3c5bcb964d83240b` |
| 3 | `def` | [applyFunTargetFailure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/applyfuntargetfailure--b0bc5325944d34b40c0633b6.md) | 102 | `declaration-track:b0bc5325944d34b40c0633b6242539d670c05a63de03875aa26b86be45e1b51f` |
| 4 | `def` | [maybeProveInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/maybeproveinjective--e3f1b37078916fa2052816da.md) | 107 | `declaration-track:e3f1b37078916fa2052816da51e692e731423b677a861eae19fb3f0ca927137f` |
| 5 | `def` | [applyFunTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/applyfuntarget--c5dbb54ce3386d532f92209c.md) | 134 | `declaration-track:c5dbb54ce3386d532f92209c678196e4e2bfb45f6c2437cc9090fa2f62f87c3e` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/syntax--f309654238e5b58a531c8525.md) | 220 | `declaration-track:f309654238e5b58a531c85255881e035ce22f886a7591319e4b4f974dd0dc5a0` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/declarations/elab-rules--6351d2a87fc6475935235111.md) | 222 | `declaration-track:6351d2a87fc6475935235111ec20a04cc5ddbd85fba437a10e7ae846f51f7cf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
