# bump_laplace_ode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42bc7aa2-4750-bcf7-a7ca-6086ba0a60a6",
  "kind": "theorem",
  "lexical_name": "bump_laplace_ode",
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
  "slug": "bump-laplace-ode--205a7f7266af73adeec69db2",
  "source": {
    "blob": "43e4cce6f7294a97eadda769c9b02626c9ed1954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:205a7f7266af73adeec69db21102d1b54f2f88f735d2f2a8dc7bcc71f87a5fed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42bc7aa2-4750-bcf7-a7ca-6086ba0a60a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_laplace_ode (z : ℂ) :
    z * deriv (deriv bumpLaplace) z + 10 * deriv bumpLaplace z - z * bumpLaplace z = 0 := by
  rw [bump_laplace_second_deriv, bump_laplace_deriv]
  exact sub_eq_zero.mpr (bump_laplace_moment_ode z)

/-- T3: every zero of the actual bump transform has zero real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e4cce6f7294a97eadda769c9b02626c9ed1954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
