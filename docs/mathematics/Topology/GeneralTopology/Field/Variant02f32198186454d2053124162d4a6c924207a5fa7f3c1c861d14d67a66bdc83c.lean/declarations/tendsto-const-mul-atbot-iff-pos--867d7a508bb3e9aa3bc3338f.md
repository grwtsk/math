# tendsto_const_mul_atBot_iff_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de9a9cc6-c255-bb0b-c6a7-8710b1a4db6b",
  "kind": "theorem",
  "lexical_name": "tendsto_const_mul_atBot_iff_pos",
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
  "slug": "tendsto-const-mul-atbot-iff-pos--867d7a508bb3e9aa3bc3338f",
  "source": {
    "blob": "60ab5abb8dd93a16e1a6aaec717a1b452e14d83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867d7a508bb3e9aa3bc3338f0e10d63c95ca327ac91ec13a8e1fccd0931f8787",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de9a9cc6-c255-bb0b-c6a7-8710b1a4db6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_mul_atBot_iff_pos [NeBot l] (h : Tendsto f l atBot) :
    Tendsto (fun x => r * f x) l atBot ↔ 0 < r := by
  simp [tendsto_const_mul_atBot_iff, h, h.not_tendsto disjoint_atBot_atTop]

/-- If `f` tends to negative infinity along a nontrivial filter `l`, then
`fun x ↦ f x * r` tends to negative infinity if and only if `0 < r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60ab5abb8dd93a16e1a6aaec717a1b452e14d83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
