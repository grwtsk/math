# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Isaacs.Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c0d6f6349baac3c0437d7154c0922e0ac2fd57",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c0d6f6349baac3c0437d7154c0922e0ac2fd57`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.CosetCover` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_algHom_of_exist_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/nonempty-alghom-of-exist-roots--f0334417f22a755dbb64872f.md) | 45 | `result-track:f0334417f22a755dbb64872fcd0607e7160aa78796f16254bd70f6ed879b464a` |
| 2 | `theorem` | [nonempty_algHom_of_minpoly_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/nonempty-alghom-of-minpoly-eq--b0aa91352600e543db34d13b.md) | 79 | `result-track:b0aa91352600e543db34d13b68b897c5fa39380ec793d96b7b3fdf4ac3c839a5` |
| 3 | `theorem` | [nonempty_algHom_of_range_minpoly_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/nonempty-alghom-of-range-minpoly-subset--62ded6bb6af8f8f8c798876f.md) | 84 | `result-track:62ded6bb6af8f8f8c798876f25273a930aea07aa6b60c260ccda9bb8c95ae942` |
| 4 | `theorem` | [nonempty_algEquiv_of_range_minpoly_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/nonempty-algequiv-of-range-minpoly-eq--6e6b8e662e1bcab9f238f945.md) | 89 | `result-track:6e6b8e662e1bcab9f238f94594559d49058bf710031b90aebcf60f3711738119` |
| 5 | `theorem` | [nonempty_algHom_of_aeval_eq_zero_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/nonempty-alghom-of-aeval-eq-zero-subset--5b3992382e8683989715db5c.md) | 101 | `result-track:5b3992382e8683989715db5c010d24a2bb0e17943255f7bc436e4d0586b6b2f7` |
| 6 | `theorem` | [nonempty_algEquiv_of_aeval_eq_zero_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/nonempty-algequiv-of-aeval-eq-zero-eq--8f7fd27c79520566e87bfd31.md) | 108 | `result-track:8f7fd27c79520566e87bfd31ec342e98c0da63131008b3cb4cb923c10cb8516b` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.NonemptyAlgHomOfExistRoots.Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.IsAlgClosure.of_exist_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d.lean/declarations/root-grwtsk-algebra-commutativealgebra-nonemptyalghomofexistroots-varian--c0dba5b6d3766326082f7436.md) | 115 | `result-track:c0dba5b6d3766326082f7436eef0a4ab4eb60e349183643860599de1354cb5df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
