# isPreconnected_setOfPred_wSameSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd20b6fc-c101-b4c0-c3c2-c4f3f4401179",
  "kind": "theorem",
  "lexical_name": "isPreconnected_setOfPred_wSameSide",
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
  "slug": "ispreconnected-setofpred-wsameside--e2b313169e484930cab6ec19",
  "source": {
    "blob": "57630cbda5d143c6bb8150def59664c519757323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 827,
    "line": 817,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2b313169e484930cab6ec19733b2947faa9015dda27d44dc3e5de69e524b547",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd20b6fc-c101-b4c0-c3c2-c4f3f4401179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 817–827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_setOfPred_wSameSide (s : AffineSubspace ℝ P) (x : P) :
    IsPreconnected { y | s.WSameSide x y } := by
  rcases Set.eq_empty_or_nonempty (s : Set P) with (h | h)
  · rw [coe_eq_bot_iff] at h
    simp only [h, not_wSameSide_bot]
    exact isPreconnected_empty
  · exact (isConnected_setOfPred_wSameSide x h).isPreconnected

@[deprecated (since := "2026-07-09")]
alias isPreconnected_setOf_wSameSide := isPreconnected_setOfPred_wSameSide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean#L817).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57630cbda5d143c6bb8150def59664c519757323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
