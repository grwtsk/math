# isLocallyInjective_iff_isOpen_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f907cb5c80a892f6d4d4d47106874db37c0594a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:447820a0-2ca2-491e-28c5-821731c8b188",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a71a780a-c52e-9883-69e1-311d4768a5bc",
  "kind": "theorem",
  "lexical_name": "isLocallyInjective_iff_isOpen_diagonal",
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
  "slug": "islocallyinjective-iff-isopen-diagonal--bf774be9860e2c1f2da5bef8",
  "source": {
    "blob": "f907cb5c80a892f6d4d4d47106874db37c0594a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf774be9860e2c1f2da5bef8b329f0f18a3e90e74ea49d7ebf04263f4b648a20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71a780a-c52e-9883-69e1-311d4768a5bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocallyInjective_iff_isOpen_diagonal {f : X → Y} :
    IsLocallyInjective f ↔ IsOpen f.pullbackDiagonal := by
  simp_rw [isLocallyInjective_iff_nhds, isOpen_iff_mem_nhds,
    Subtype.forall, Prod.forall, nhds_induced, nhds_prod_eq, Filter.mem_comap]
  refine ⟨?_, fun h x ↦ ?_⟩
  · rintro h x x' hx (rfl : x = x')
    obtain ⟨U, hn, hi⟩ := h x
    exact ⟨_, Filter.prod_mem_prod hn hn, fun {p} hp ↦ hi hp.1 hp.2 p.2⟩
  · obtain ⟨t, ht, t_sub⟩ := h x x rfl rfl
    obtain ⟨t₁, h₁, t₂, h₂, prod_sub⟩ := Filter.mem_prod_iff.mp ht
    exact ⟨t₁ ∩ t₂, Filter.inter_mem h₁ h₂,
      fun x₁ h₁ x₂ h₂ he ↦ @t_sub ⟨(x₁, x₂), he⟩ (prod_sub ⟨h₁.1, h₂.2⟩)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedMap/Variantbf38b2669baad927be299922dbe0e264edb6e25cc2398a968e4525e329f680a5.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f907cb5c80a892f6d4d4d47106874db37c0594a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
