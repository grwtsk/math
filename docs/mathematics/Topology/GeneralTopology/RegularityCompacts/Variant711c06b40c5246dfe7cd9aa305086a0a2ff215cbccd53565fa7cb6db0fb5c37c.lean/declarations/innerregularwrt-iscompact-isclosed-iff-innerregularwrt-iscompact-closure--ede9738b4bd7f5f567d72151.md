# innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4eec048-8d17-5125-f72d-d63005bdc9d5",
  "kind": "lemma",
  "lexical_name": "innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure",
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
  "slug": "innerregularwrt-iscompact-isclosed-iff-innerregularwrt-iscompact-closure--ede9738b4bd7f5f567d72151",
  "source": {
    "blob": "5297c711b797ee2965e88d9cac318d4d534fd7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede9738b4bd7f5f567d72151481d4f61e2f2e2e540d3ff9826bb92115bc934c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4eec048-8d17-5125-f72d-d63005bdc9d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure
    [TopologicalSpace α] [R1Space α] :
    μ.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) IsClosed
      ↔ μ.InnerRegularWRT (IsCompact ∘ closure) IsClosed := by
  constructor <;> intro h A hA r hr
  · obtain ⟨K, hK1, ⟨hK2, _⟩, hK4⟩ := h hA r hr
    refine ⟨K, hK1, ?_, hK4⟩
    simp only [Function.comp_apply]
    exact hK2.closure
  · obtain ⟨K, hK1, hK2, hK3⟩ := h hA r hr
    refine ⟨closure K, closure_minimal hK1 hA, ?_, ?_⟩
    · simpa only [isClosed_closure, and_true]
    · exact hK3.trans_le (measure_mono subset_closure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5297c711b797ee2965e88d9cac318d4d534fd7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
