# errorProfile_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9ceeb6-b0e1-5af7-26ef-feb3da49592a",
  "kind": "theorem",
  "lexical_name": "errorProfile_intervalIntegrable",
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
  "slug": "errorprofile-intervalintegrable--6ec17b8431fa46048f31e6fb",
  "source": {
    "blob": "97b3d0efda0c47f7961248a67df6962fd953d036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ec17b8431fa46048f31e6fba979ff114787425b5867ea8517d9f31171bf3f62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9ceeb6-b0e1-5af7-26ef-feb3da49592a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem errorProfile_intervalIntegrable (b : ℝ) (hb : lowerEndpoint ≤ b) :
    IntervalIntegrable errorProfile volume lowerEndpoint b := by
  have h := chebyshev_mul_continuous_intervalIntegrable b hb (fun _ => 1)
    continuous_const
  simp only [mul_one] at h
  exact h.sub (Real.continuous_exp.intervalIntegrable _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b3d0efda0c47f7961248a67df6962fd953d036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
