# innerRegularWRT_isCompact_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b76e6f00-dcbf-6bcd-5a93-c28619d18c7f",
  "kind": "theorem",
  "lexical_name": "innerRegularWRT_isCompact_closure_iff",
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
  "slug": "innerregularwrt-iscompact-closure-iff--54e236d7bbcbeee9587a9807",
  "source": {
    "blob": "33bd25384eb2abe88ef3f47a23b70756efe52abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e236d7bbcbeee9587a9807760649844e4fd0830004af8bb0c72c74ef9b12ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b76e6f00-dcbf-6bcd-5a93-c28619d18c7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerRegularWRT_isCompact_closure_iff [TopologicalSpace α] [R1Space α] :
    μ.InnerRegularWRT (IsCompact ∘ closure) IsClosed ↔ μ.InnerRegularWRT IsCompact IsClosed := by
  constructor <;> intro h A hA r hr
  · rcases h hA r hr with ⟨K, ⟨hK1, hK2, hK3⟩⟩
    exact ⟨closure K, closure_minimal hK1 hA, hK2, hK3.trans_le (measure_mono subset_closure)⟩
  · rcases h hA r hr with ⟨K, ⟨hK1, hK2, hK3⟩⟩
    refine ⟨closure K, closure_minimal hK1 hA, ?_, ?_⟩
    · simpa only [closure_closure, Function.comp_apply] using hK2.closure
    · exact hK3.trans_le (measure_mono subset_closure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33bd25384eb2abe88ef3f47a23b70756efe52abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
