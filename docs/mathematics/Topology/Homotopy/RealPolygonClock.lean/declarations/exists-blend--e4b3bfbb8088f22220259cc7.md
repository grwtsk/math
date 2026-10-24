# exists_blend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cab108bd-e882-091f-aa59-92386fc055c9",
  "kind": "theorem",
  "lexical_name": "exists_blend",
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
  "slug": "exists-blend--e4b3bfbb8088f22220259cc7",
  "source": {
    "blob": "1ea5dc0a4db1e3941688f663dee3cd8dd3050e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/Topology/Homotopy/RealPolygonClock.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4b3bfbb8088f22220259cc7c714cb38ae3907afb7b8222fc364319a4db67606",
  "verification": {
    "reference": "docs/verification/Topology/Homotopy/RealPolygonClock.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cab108bd-e882-091f-aa59-92386fc055c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_blend {a b x : ℝ} (hx : x ∈ Icc a b) :
    ∃ u : I, blend (u : ℝ) a b = x := by
  by_cases hab : a = b
  · have hax : a = x := le_antisymm hx.1 (by simpa only [← hab] using hx.2)
    exact ⟨0, by simp [blend, hax]⟩
  · have hp : 0 < b-a := sub_pos.mpr (lt_of_le_of_ne (hx.1.trans hx.2) hab)
    have hu : (x-a)/(b-a) ∈ Icc (0 : ℝ) 1 :=
      ⟨div_nonneg (sub_nonneg.mpr hx.1) hp.le,
        (div_le_one hp).mpr (by linarith [hx.2])⟩
    refine ⟨⟨(x-a)/(b-a), hu⟩, ?_⟩
    dsimp [blend]
    field_simp [hp.ne']
    ring

/-- Every value between the exact endpoint marks is visited, including BOTH
closed endpoints. No continuity sample or missing final cell stands in for this. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Homotopy/RealPolygonClock.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Homotopy/RealPolygonClock.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea5dc0a4db1e3941688f663dee3cd8dd3050e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
