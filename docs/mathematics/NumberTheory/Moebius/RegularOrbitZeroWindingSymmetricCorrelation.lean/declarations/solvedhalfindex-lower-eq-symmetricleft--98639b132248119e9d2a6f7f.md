# solvedHalfIndex_lower_eq_symmetricLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b57ec710-d1b2-94d3-b32f-daa70a8c7dbd",
  "kind": "theorem",
  "lexical_name": "solvedHalfIndex_lower_eq_symmetricLeft",
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
  "slug": "solvedhalfindex-lower-eq-symmetricleft--98639b132248119e9d2a6f7f",
  "source": {
    "blob": "278d3e340294bd6fbf24780b1782e1b6325a0ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98639b132248119e9d2a6f7f308c12da6964a1819b8866056f099587d363a05f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b57ec710-d1b2-94d3-b32f-daa70a8c7dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solvedHalfIndex_lower_eq_symmetricLeft
    {c h r : ℕ}
    (_hle : h ≤ c)
    (heven : (c - h) % 2 = 0) :
    2 * zeroWindingHalfIndexFromCoordinate c h + r =
      c - h + r := by
  unfold zeroWindingHalfIndexFromCoordinate
  omega

/-- The solved upper affine form is exactly `c+h+r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278d3e340294bd6fbf24780b1782e1b6325a0ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
