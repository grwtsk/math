# sharpError_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66dabb90-6d40-2eb7-a298-22911db4d068",
  "kind": "theorem",
  "lexical_name": "sharpError_nonneg",
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
  "slug": "sharperror-nonneg--c11517121b1ebe6fc5aa508f",
  "source": {
    "blob": "44354320aa47abbf8c72106218cabb2e61149137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11517121b1ebe6fc5aa508f6395c9cc336afd0e9f9a6d2975bbcee1bd6c812b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66dabb90-6d40-2eb7-a298-22911db4d068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpError_nonneg {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta) :
    0 ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hE := errorPolynomial_nonneg (mul_pos hp hdelta)
  unfold sharpError
  positivity

/-- Polynomial endpoint errors vanish whenever the product A*delta(A) grows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44354320aa47abbf8c72106218cabb2e61149137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
