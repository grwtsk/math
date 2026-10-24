# submatrixEquivInvertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:804907019ce7cad72e5175e7bce278f0f614b85cf239a1d6a84bf7d73157adbe",
  "kind": "def",
  "lexical_name": "submatrixEquivInvertible",
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
  "slug": "submatrixequivinvertible--1d9048399aab909e9c7802ee",
  "source": {
    "blob": "65241f47750490dec4e7b052fe83b1ab699aa82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 669,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonsingularInverse/Variantb813287234ab270ce37d4f0435610f6047faa5feca4f29cd29ae01057ad013bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d9048399aab909e9c7802eeda718102b9e9c55d810771862c91e950503de2fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonsingularInverse/Variantb813287234ab270ce37d4f0435610f6047faa5feca4f29cd29ae01057ad013bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:804907019ce7cad72e5175e7bce278f0f614b85cf239a1d6a84bf7d73157adbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submatrixEquivInvertible (A : Matrix m m α) (e₁ e₂ : n ≃ m) [Invertible A] :
    Invertible (A.submatrix e₁ e₂) :=
  invertibleOfRightInverse _ ((⅟ A).submatrix e₂ e₁) <| by
    rw [Matrix.submatrix_mul_equiv, mul_invOf_self, submatrix_one_equiv]

/-- `A` is invertible if `A.submatrix e₁ e₂` is -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonsingularInverse/Variantb813287234ab270ce37d4f0435610f6047faa5feca4f29cd29ae01057ad013bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonsingularInverse/Variantb813287234ab270ce37d4f0435610f6047faa5feca4f29cd29ae01057ad013bb.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65241f47750490dec4e7b052fe83b1ab699aa82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
