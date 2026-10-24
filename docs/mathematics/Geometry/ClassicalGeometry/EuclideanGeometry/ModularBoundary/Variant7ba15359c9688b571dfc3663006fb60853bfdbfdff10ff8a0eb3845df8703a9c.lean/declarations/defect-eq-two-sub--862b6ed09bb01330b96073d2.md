# defect_eq_two_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e360ad3a-6d24-a23d-9696-14efdfc723bf",
  "kind": "theorem",
  "lexical_name": "defect_eq_two_sub",
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
  "slug": "defect-eq-two-sub--862b6ed09bb01330b96073d2",
  "source": {
    "blob": "c09a97e4c967d0cd23068ce402bab3cdda1fa8ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:862b6ed09bb01330b96073d235ab76806e2438c8f7cefd2454de5854525d725a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e360ad3a-6d24-a23d-9696-14efdfc723bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_eq_two_sub (p : ℕ) [NeZero p] (n : ℕ) :
    defect p n = 2 - 2 * (phase p n).re := by
  have h := phase_normSq p n
  simp only [Complex.normSq_apply] at h
  simp only [defect, Complex.normSq_apply, Complex.sub_re, Complex.one_re,
    Complex.sub_im, Complex.one_im]
  nlinarith

/-- The cosine expression has the same exact arithmetic meaning. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09a97e4c967d0cd23068ce402bab3cdda1fa8ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
