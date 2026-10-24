# det_eq_prod_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4404e9da-585b-7406-b4d6-3784eaf64f4b",
  "kind": "theorem",
  "lexical_name": "det_eq_prod_eigenvalues",
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
  "slug": "det-eq-prod-eigenvalues--123561069af0502624cdb1f5",
  "source": {
    "blob": "d099425d172b3dc3b703d8db4244803ec590d509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:123561069af0502624cdb1f56e5cf339af19b13dfce9a7c88bd775e725835447",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4404e9da-585b-7406-b4d6-3784eaf64f4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_prod_eigenvalues : det A = ∏ i, (hA.eigenvalues i : 𝕜) := by
  simp [det_eq_prod_roots_charpoly_of_splits hA.splits_charpoly, hA.roots_charpoly_eq_eigenvalues]

/-- rank of a Hermitian matrix is the rank of after diagonalization by the eigenvector unitary -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d099425d172b3dc3b703d8db4244803ec590d509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
