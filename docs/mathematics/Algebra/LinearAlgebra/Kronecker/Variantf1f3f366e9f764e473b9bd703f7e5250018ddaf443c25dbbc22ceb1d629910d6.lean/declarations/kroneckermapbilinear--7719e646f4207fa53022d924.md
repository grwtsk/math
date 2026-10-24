# kroneckerMapBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e5e7707f8f699873214ddb56ef12b6ed6141775153a8795dbb7a8b02d0a2895",
  "kind": "def",
  "lexical_name": "kroneckerMapBilinear",
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
  "slug": "kroneckermapbilinear--7719e646f4207fa53022d924",
  "source": {
    "blob": "1803ea36d70c1679fb1932f0f942d774bbe351cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 209,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantf1f3f366e9f764e473b9bd703f7e5250018ddaf443c25dbbc22ceb1d629910d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7719e646f4207fa53022d9243cad9390c6be9f5d4313998e00c0b7bad6378fbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variantf1f3f366e9f764e473b9bd703f7e5250018ddaf443c25dbbc22ceb1d629910d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e5e7707f8f699873214ddb56ef12b6ed6141775153a8795dbb7a8b02d0a2895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kroneckerMapBilinear [Semiring S] [Semiring R]
    [AddCommMonoid α] [AddCommMonoid β] [AddCommMonoid γ]
    [Module R α] [Module R γ] [Module S β] [Module S γ] [SMulCommClass S R γ]
    (f : α →ₗ[R] β →ₗ[S] γ) :
    Matrix l m α →ₗ[R] Matrix n p β →ₗ[S] Matrix (l × n) (m × p) γ :=
  LinearMap.mk₂' R S (kroneckerMap fun r s => f r s) (kroneckerMap_add_left _ <| f.map_add₂)
    (fun _ => kroneckerMap_smul_left _ _ <| f.map_smul₂ _)
    (kroneckerMap_add_right _ fun a => (f a).map_add) fun r =>
    kroneckerMap_smul_right _ _ fun a => (f a).map_smul r

/-- `Matrix.kroneckerMapBilinear` commutes with `*` if `f` does.

This is primarily used with `R = ℕ` to prove `Matrix.mul_kronecker_mul`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variantf1f3f366e9f764e473b9bd703f7e5250018ddaf443c25dbbc22ceb1d629910d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantf1f3f366e9f764e473b9bd703f7e5250018ddaf443c25dbbc22ceb1d629910d6.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1803ea36d70c1679fb1932f0f942d774bbe351cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
