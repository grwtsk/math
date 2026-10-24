# orthogonal_of_eigen_plus_minus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3977443d-21f4-5e25-a857-571aa581c5cd",
  "kind": "theorem",
  "lexical_name": "orthogonal_of_eigen_plus_minus",
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
  "slug": "orthogonal-of-eigen-plus-minus--873f76f1ac3817867fcbaf76",
  "source": {
    "blob": "14222da25e7fa9288239142d3337f9478e70cd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:873f76f1ac3817867fcbaf764aaa2563ffe7a643a015560e50f0f232f2396d49",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3977443d-21f4-5e25-a857-571aa581c5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonal_of_eigen_plus_minus
    (G : PositiveForm V) {T : V →ₗ[ℝ] V}
    (hT : G.SelfAdjointFor T)
    {x y : V} (hx : T x = x) (hy : T y = -y) :
    G.form x y = 0 := by
  have h := hT x y
  rw [hx, hy] at h
  have hneg : G.form x (-y) = -G.form x y := by
    have hs := G.smul_right (-1 : ℝ) x y
    simpa using hs
  rw [hneg] at h
  linarith

/-- A four-term Pythagorean identity for pairwise orthogonal vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14222da25e7fa9288239142d3337f9478e70cd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
