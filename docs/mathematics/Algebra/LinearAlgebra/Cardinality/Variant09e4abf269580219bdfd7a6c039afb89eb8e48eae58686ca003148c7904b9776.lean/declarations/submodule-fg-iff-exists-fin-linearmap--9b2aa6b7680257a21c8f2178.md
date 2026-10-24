# Submodule.fg_iff_exists_fin_linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd55ecb3-3aa9-d543-2ef8-560620ddb9ad",
  "kind": "theorem",
  "lexical_name": "Submodule.fg_iff_exists_fin_linearMap",
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
  "slug": "submodule-fg-iff-exists-fin-linearmap--9b2aa6b7680257a21c8f2178",
  "source": {
    "blob": "33a74a5802d35d09fb1a6e3a2c2c6e7b970fcb78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b2aa6b7680257a21c8f217893d9ad7509f388b1b2246c93ae3ec54604a2d977",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd55ecb3-3aa9-d543-2ef8-560620ddb9ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.fg_iff_exists_fin_linearMap {N : Submodule R M} :
    N.FG ↔ ∃ (n : ℕ) (f : (Fin n → R) →ₗ[R] M), LinearMap.range f = N := by
  simp_rw [fg_iff_exists_fin_generating_family, ← ((Pi.basisFun R _).constr ℕ).exists_congr_right]
  simp [Basis.constr_range]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant09e4abf269580219bdfd7a6c039afb89eb8e48eae58686ca003148c7904b9776.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a74a5802d35d09fb1a6e3a2c2c6e7b970fcb78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
