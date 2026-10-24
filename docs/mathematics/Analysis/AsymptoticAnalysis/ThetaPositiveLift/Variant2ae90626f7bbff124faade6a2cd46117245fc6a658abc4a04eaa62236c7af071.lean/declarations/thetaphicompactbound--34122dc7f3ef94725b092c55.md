# thetaPhiCompactBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88c85c92c1921d9e63e573355bf8973693c021d818daf3402a50ef18878f53e3",
  "kind": "def",
  "lexical_name": "thetaPhiCompactBound",
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
  "slug": "thetaphicompactbound--34122dc7f3ef94725b092c55",
  "source": {
    "blob": "f0803a9bc5216c40af828df7e9aa162992c9adb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34122dc7f3ef94725b092c55b6bfffd5c295a292bb0d54cfe060f5e832586685",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88c85c92c1921d9e63e573355bf8973693c021d818daf3402a50ef18878f53e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  (2 * Real.pi ^ 2 * Real.exp (9 * b)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * a)) m +
    (3 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m

/-- The compact bound is summable over the actual source modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0803a9bc5216c40af828df7e9aa162992c9adb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
