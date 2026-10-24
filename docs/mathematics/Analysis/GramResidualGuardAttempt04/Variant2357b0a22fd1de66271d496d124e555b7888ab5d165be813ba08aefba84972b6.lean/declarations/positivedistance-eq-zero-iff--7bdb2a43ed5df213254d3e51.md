# positiveDistance_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8d11687-fd84-fd30-afed-2219bf883b9f",
  "kind": "theorem",
  "lexical_name": "positiveDistance_eq_zero_iff",
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
  "slug": "positivedistance-eq-zero-iff--7bdb2a43ed5df213254d3e51",
  "source": {
    "blob": "c3874e6c9e0c8cf8ca9d0e640eccf758fc349f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bdb2a43ed5df213254d3e510931d98643c299e2285763c7d56784bebed32fac",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d11687-fd84-fd30-afed-2219bf883b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveDistance_eq_zero_iff (H : E →L[𝕜] E) (hH : H.IsSymmetric) :
    positiveDistance H=0 ↔ H.IsPositive := by
  constructor
  · intro hdist
    apply positive_of_arbitrary_precision H hH
    intro ε hε
    have hd : Metric.infDist H {P : E →L[𝕜] E | P.IsPositive} < ε := by
      change positiveDistance H < ε
      simpa only [hdist] using hε
    obtain ⟨P,hP,hclose⟩ := (Metric.infDist_lt_iff
      ⟨0,ContinuousLinearMap.isPositive_zero⟩).mp hd
    exact ⟨P,hP,by simpa only [dist_eq_norm] using hclose.le⟩
  · intro hpositive
    exact Metric.infDist_zero_of_mem hpositive

/-- A normalized actual eigenvector specializes the lower bound to its real eigenvalue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3874e6c9e0c8cf8ca9d0e640eccf758fc349f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
