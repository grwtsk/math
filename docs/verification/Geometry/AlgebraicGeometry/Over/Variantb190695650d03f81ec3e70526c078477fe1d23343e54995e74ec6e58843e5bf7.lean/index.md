# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Over.Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e5961614bb3296073209ae651cf28ac978481ee",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e5961614bb3296073209ae651cf28ac978481ee`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Scheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.OverClass` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Over](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/declarations/over--3617bd8e16c663210c14f42c.md) | 32 | `declaration-track:3617bd8e16c663210c14f42c8b0ae37098731b169239e59f8c2e67edda5be8e6` |
| 2 | `abbrev` | [CanonicallyOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/declarations/canonicallyover--219148a5b4e39f1888d7a5c4.md) | 38 | `declaration-track:219148a5b4e39f1888d7a5c476abc537fabd3787da8dddf8cc11b7eab360a1a7` |
| 3 | `abbrev` | [Hom.IsOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/declarations/hom-isover--01d46a6b928549c01d50f052.md) | 42 | `declaration-track:01d46a6b928549c01d50f052d2c39ac570fb99dcc9daabc15339b246356f0216` |
| 4 | `lemma` | [Hom.isOver_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/declarations/hom-isover-iff--c521072ec4e6c5ad84bf8192.md) | 45 | `result-track:c521072ec4e6c5ad84bf8192e51211c7ae8e907f46cd938ce1b22749fa6bbb04` |
| 5 | `abbrev` | [asOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/declarations/asover--5e7ce898b0790262e0ce7822.md) | 51 | `declaration-track:5e7ce898b0790262e0ce7822882f7b0d03fbefdc1cb31ae957d5681eaa2b2d28` |
| 6 | `abbrev` | [Hom.asOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variantb190695650d03f81ec3e70526c078477fe1d23343e54995e74ec6e58843e5bf7.lean/declarations/hom-asover--f115dffb4bbf3dba04e4770a.md) | 54 | `declaration-track:f115dffb4bbf3dba04e4770a6aa677de1d89cf57b0b8c95fa71f7bb9782450f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
