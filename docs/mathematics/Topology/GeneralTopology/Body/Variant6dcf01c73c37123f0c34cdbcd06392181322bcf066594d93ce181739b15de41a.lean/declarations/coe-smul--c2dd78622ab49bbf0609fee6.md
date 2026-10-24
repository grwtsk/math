# coe_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4dd74dd-3e07-032b-26c0-e86adc1a768d",
  "kind": "theorem",
  "lexical_name": "coe_smul'",
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
  "slug": "coe-smul--c2dd78622ab49bbf0609fee6",
  "source": {
    "blob": "f1cbb0d4d64551ce893de0aaa77338238450b54d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2dd78622ab49bbf0609fee6998ee10ad2ff6814d0c83b4b079af010d9669c1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4dd74dd-3e07-032b-26c0-e86adc1a768d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_smul' (c : ℝ≥0) (K : ConvexBody V) : (↑(c • K) : Set V) = c • (K : Set V) :=
  rfl

/-- The convex bodies in a fixed space $V$ form a module over the nonnegative reals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1cbb0d4d64551ce893de0aaa77338238450b54d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
