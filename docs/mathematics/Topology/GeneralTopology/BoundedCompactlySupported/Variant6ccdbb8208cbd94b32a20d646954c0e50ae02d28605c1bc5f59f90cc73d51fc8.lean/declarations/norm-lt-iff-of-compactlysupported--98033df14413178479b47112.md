# norm_lt_iff_of_compactlySupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abc543d3-a3d9-228a-bb04-985661838f16",
  "kind": "theorem",
  "lexical_name": "norm_lt_iff_of_compactlySupported",
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
  "slug": "norm-lt-iff-of-compactlysupported--98033df14413178479b47112",
  "source": {
    "blob": "61313c430fc1098575e5d897b44fdbf3c58ecb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98033df14413178479b4711224aedde36a7723d1ace865ab2d791c4dd620d63a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abc543d3-a3d9-228a-bb04-985661838f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_lt_iff_of_compactlySupported {f : α →ᵇ γ} (h : f ∈ C_cb(α, γ)) {M : ℝ}
    (M0 : 0 < M) : ‖f‖ < M ↔ ∀ (x : α), ‖f x‖ < M := by
  refine ⟨fun hn x ↦ lt_of_le_of_lt (norm_coe_le_norm f x) hn, ?_⟩
  · obtain (he | he) := isEmpty_or_nonempty α
    · simpa
    · obtain ⟨x, hx⟩ := exist_norm_eq h
      exact fun h ↦ hx ▸ h x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61313c430fc1098575e5d897b44fdbf3c58ecb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
