# weighted_q_prefix_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bedd90db-7275-4984-2259-1b2093f2318c",
  "kind": "theorem",
  "lexical_name": "weighted_q_prefix_integral",
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
  "slug": "weighted-q-prefix-integral--c572cd5f7a805521a65c743e",
  "source": {
    "blob": "c1e6de0944c3a0cd834a7dba52347e2559e54acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c572cd5f7a805521a65c743e9ae08864666fe173f9e599c830a00ca1a6a7ed0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bedd90db-7275-4984-2259-1b2093f2318c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_q_prefix_integral (A x : ℝ) (hA : 0 < A) :
    (∫ t in Iio x, Real.exp (t / 2) * actualQ A t) = positivePolePrimitive A x := by
  have hi := HasCompactSupport.integral_Iic_deriv_eq
    (positivePolePrimitive_contDiff hA) (positivePolePrimitive_hasCompactSupport hA) x
  have he : deriv (positivePolePrimitive A) = fun t => Real.exp (t / 2) * actualQ A t :=
    funext fun t => (positivePolePrimitive_hasDerivAt hA t).deriv
  rw [he, integral_Iic_eq_integral_Iio] at hi
  exact hi

/-- Exponential substitution retains the whole interval below one and its sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e6de0944c3a0cd834a7dba52347e2559e54acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
