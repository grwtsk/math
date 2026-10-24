# mem_segment_iff_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18e647fe-e0c5-c5fe-0789-32e37772c11b",
  "kind": "theorem",
  "lexical_name": "mem_segment_iff_div",
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
  "slug": "mem-segment-iff-div--4911896101a3916da36bfe13",
  "source": {
    "blob": "523919ae0d967c84b944a1b53bed08e1bf59e24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 380,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4911896101a3916da36bfe13dce61cd5a47d6a5498ceac2448ebaa27ee8df7ac",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18e647fe-e0c5-c5fe-0789-32e37772c11b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_segment_iff_div :
    x ∈ [y -[𝕜] z] ↔
      ∃ a b : 𝕜, 0 ≤ a ∧ 0 ≤ b ∧ 0 < a + b ∧ (a / (a + b)) • y + (b / (a + b)) • z = x := by
  constructor
  · rintro ⟨a, b, ha, hb, hab, rfl⟩
    use a, b, ha, hb
    simp [*]
  · rintro ⟨a, b, ha, hb, hab, rfl⟩
    refine' ⟨a / (a + b), b / (a + b), by positivity, by positivity, _, rfl⟩
    rw [← add_div, div_self hab.ne']
#align mem_segment_iff_div mem_segment_iff_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523919ae0d967c84b944a1b53bed08e1bf59e24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
