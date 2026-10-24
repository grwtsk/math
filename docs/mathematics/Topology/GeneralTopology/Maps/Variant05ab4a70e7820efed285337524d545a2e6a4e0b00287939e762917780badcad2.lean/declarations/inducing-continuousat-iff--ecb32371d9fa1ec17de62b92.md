# Inducing.continuousAt_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c88fa26-ec26-d426-5f85-d6db349ec295",
  "kind": "theorem",
  "lexical_name": "Inducing.continuousAt_iff'",
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
  "slug": "inducing-continuousat-iff--ecb32371d9fa1ec17de62b92",
  "source": {
    "blob": "16ef61fdbc82e0cccc1bb43c7f207f5e3f53d2bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecb32371d9fa1ec17de62b92067b22fb3a7672c009d81e6dd431c6a3ee423971",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c88fa26-ec26-d426-5f85-d6db349ec295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inducing.continuousAt_iff' {f : α → β} {g : β → γ} (hf : Inducing f) {x : α}
    (h : range f ∈ 𝓝 (f x)) : ContinuousAt (g ∘ f) x ↔ ContinuousAt g (f x) := by
  simp_rw [ContinuousAt, Filter.Tendsto, ← hf.map_nhds_of_mem _ h, Filter.map_map, comp]
#align inducing.continuous_at_iff' Inducing.continuousAt_iff'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ef61fdbc82e0cccc1bb43c7f207f5e3f53d2bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
