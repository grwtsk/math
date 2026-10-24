# actualClosedMangoldtIncrement_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:154b64d7-526d-cc87-0964-2d55299666a0",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtIncrement_abs_le",
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
  "slug": "actualclosedmangoldtincrement-abs-le--a03b82eb7e3740973bd4d2b6",
  "source": {
    "blob": "eb3cc4357f2d1c77a452e62c556f416c66115688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a03b82eb7e3740973bd4d2b62662833f88c6ebb11d5e333ae708c5133add49d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:154b64d7-526d-cc87-0964-2d55299666a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtIncrement_abs_le {t b : ℝ}
    (ht : 0 ≤ t) (htb : t ≤ b) :
    |actualClosedMangoldtIncrement t b| ≤ 2 * B := by
  rw [← actualCenteredError_increment_eq_closed htb]
  have h := abs_sub_le (actualCenteredMangoldtLogError t) 0
    (actualCenteredMangoldtLogError b)
  simp only [sub_zero, zero_sub, abs_neg] at h
  have h0 := actualCenteredMangoldtLogError_abs_le ht
  have h1 := actualCenteredMangoldtLogError_abs_le (ht.trans htb)
  linarith

/-- Genuine ordinary centering gives the actual discrepancy limit on each fixed log window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3cc4357f2d1c77a452e62c556f416c66115688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
