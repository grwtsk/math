# prodRight_symm_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06b9dda4-7da3-78f3-c0cd-7a0ae287fa05",
  "kind": "theorem",
  "lexical_name": "prodRight_symm_tmul",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "prodright-symm-tmul--095890042aa290f457f757f6",
  "source": {
    "blob": "733b8cdc00748b4f62c4bebb74487fae943c7fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095890042aa290f457f757f652dfc23d1549675624b90e04032a7d2db51b8831",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06b9dda4-7da3-78f3-c0cd-7a0ae287fa05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem prodRight_symm_tmul (m₁ : M₁) (m₂ : M₂) (m₃ : M₃) :
    (prodRight R S M₁ M₂ M₃).symm (m₁ ⊗ₜ m₂, m₁ ⊗ₜ m₃) = (m₁ ⊗ₜ (m₂, m₃)) :=
  (LinearEquiv.symm_apply_eq _).mpr rfl

variable [Module S M₂] [IsScalarTower R S M₂]

/-- Tensor products distribute over a product on the left . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `733b8cdc00748b4f62c4bebb74487fae943c7fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
