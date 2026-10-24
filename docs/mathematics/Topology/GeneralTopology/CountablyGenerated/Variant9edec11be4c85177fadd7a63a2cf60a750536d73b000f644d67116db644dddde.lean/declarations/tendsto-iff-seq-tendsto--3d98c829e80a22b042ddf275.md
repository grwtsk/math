# tendsto_iff_seq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dee22d8610652f104f5b42b7c2b238903abc2763",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:911bb480-48f1-a903-0276-a5bef2d36755",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc9d3665-0b34-d0eb-5159-bae6aec63f96",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_seq_tendsto",
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
  "slug": "tendsto-iff-seq-tendsto--3d98c829e80a22b042ddf275",
  "source": {
    "blob": "dee22d8610652f104f5b42b7c2b238903abc2763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d98c829e80a22b042ddf27524234e2339ba57bd9f7e7d068f59fbd0093eb7d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc9d3665-0b34-d0eb-5159-bae6aec63f96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_seq_tendsto {f : α → β} {k : Filter α} {l : Filter β} [k.IsCountablyGenerated] :
    Tendsto f k l ↔ ∀ x : ℕ → α, Tendsto x atTop k → Tendsto (f ∘ x) atTop l := by
  refine ⟨fun h x hx => h.comp hx, fun H s hs => ?_⟩
  contrapose! H
  have : NeBot (k ⊓ 𝓟 (f ⁻¹' sᶜ)) := by simpa [neBot_iff, inf_principal_eq_bot]
  rcases (k ⊓ 𝓟 (f ⁻¹' sᶜ)).exists_seq_tendsto with ⟨x, hx⟩
  rw [tendsto_inf, tendsto_principal] at hx
  refine ⟨x, hx.1, fun h => ?_⟩
  rcases (hx.2.and (h hs)).exists with ⟨N, hnotMem, hmem⟩
  exact hnotMem hmem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee22d8610652f104f5b42b7c2b238903abc2763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
