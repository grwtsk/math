# map_altitude_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:986fabc7-89b0-ec48-e5dd-6e47f2ffceb8",
  "kind": "lemma",
  "lexical_name": "map_altitude_restrict",
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
  "slug": "map-altitude-restrict--d5e3b268c276d64d4bd7a682",
  "source": {
    "blob": "2c5bc5abfaadb27fc553500d4a200105f0d1d2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e3b268c276d64d4bd7a682bea466fe412e72c1b7ff34061629a075788a1a88",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986fabc7-89b0-ec48-e5dd-6e47f2ffceb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_altitude_restrict {n : ℕ} (s : Simplex ℝ P n) (S : AffineSubspace ℝ P)
    (hS : affineSpan ℝ (Set.range s.points) ≤ S) (i : Fin (n + 1)) :
    haveI := Nonempty.map (AffineSubspace.inclusion hS) inferInstance
    ((s.restrict S hS).altitude i).map S.subtype = s.altitude i := by
  rw [eq_comm]
  convert! (s.restrict S hS).altitude_map S.subtypeₐᵢ i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c5bc5abfaadb27fc553500d4a200105f0d1d2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
