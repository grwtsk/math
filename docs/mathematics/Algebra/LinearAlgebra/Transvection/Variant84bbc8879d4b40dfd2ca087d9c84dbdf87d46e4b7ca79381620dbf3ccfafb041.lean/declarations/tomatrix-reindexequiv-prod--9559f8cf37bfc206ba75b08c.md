# toMatrix_reindexEquiv_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0ae0f10-5033-ad01-5d17-dcc6cda0b77e",
  "kind": "theorem",
  "lexical_name": "toMatrix_reindexEquiv_prod",
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
  "slug": "tomatrix-reindexequiv-prod--9559f8cf37bfc206ba75b08c",
  "source": {
    "blob": "c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 311,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9559f8cf37bfc206ba75b08c67e83e8488b8929c4b348014ed6e15abde2bc1f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ae0f10-5033-ad01-5d17-dcc6cda0b77e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMatrix_reindexEquiv_prod (e : n ≃ p) (L : List (TransvectionStruct n R)) :
    (L.map (toMatrix ∘ reindexEquiv e)).prod = reindexAlgEquiv R _ e (L.map toMatrix).prod := by
  induction L with
  | nil => simp
  | cons t L IH => simp [toMatrix_reindexEquiv, IH]

end TransvectionStruct

end Transvection

/-!
### Reducing matrices by left and right multiplication by transvections

In this section, we show that any matrix can be reduced to diagonal form by left and right
multiplication by transvections (or, equivalently, by elementary operations on lines and columns).
The main step is to kill the last row and column of a matrix in `Fin r ⊕ Unit` with nonzero last
coefficient, by subtracting this coefficient from the other ones. The list of these operations is
recorded in `list_transvec_col M` and `list_transvec_row M`. We have to analyze inductively how
these operations affect the coefficients in the last row and the last column to conclude that they
have the desired effect.

Once this is done, one concludes the reduction by induction on the size
of the matrices, through a suitable reindexing to identify any fintype with `Fin r ⊕ Unit`.
-/


namespace Pivot

variable {R} {r : ℕ} (M : Matrix (Fin r ⊕ Unit) (Fin r ⊕ Unit) 𝕜)

open Unit Sum TransvectionStruct

/-- A list of transvections such that multiplying on the left with these transvections will replace
the last column with zeroes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
