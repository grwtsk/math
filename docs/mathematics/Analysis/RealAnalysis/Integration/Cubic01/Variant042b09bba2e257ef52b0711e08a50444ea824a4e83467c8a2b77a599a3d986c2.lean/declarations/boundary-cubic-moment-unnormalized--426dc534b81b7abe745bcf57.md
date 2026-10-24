# boundary_cubic_moment_unnormalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4298c0b5-9462-044a-1d0a-f64ac5596070",
  "kind": "theorem",
  "lexical_name": "boundary_cubic_moment_unnormalized",
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
  "slug": "boundary-cubic-moment-unnormalized--426dc534b81b7abe745bcf57",
  "source": {
    "blob": "c44cd2c905e7b5772882dba179c46752b8f255df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 276,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:426dc534b81b7abe745bcf57d2c96fffbb6cadc0348250d2007dd0c9fe8a083f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4298c0b5-9462-044a-1d0a-f64ac5596070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_cubic_moment_unnormalized {A : ℝ} (hA : 1 ≤ A) :
    (∫ y in 0..4*A, y^3*boundaryWorkKernel A y) =
      6*A^9*Real.exp (-A)*unnormalizedPrimitivePoleMoment A^2/sourceNormalization A := by
  have hZ : 0 ≤ sourceNormalization A := by unfold sourceNormalization; positivity
  rw [boundary_cubic_moment hA,primitive_pole_normalization,div_pow,Real.sq_sqrt hZ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44cd2c905e7b5772882dba179c46752b8f255df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
