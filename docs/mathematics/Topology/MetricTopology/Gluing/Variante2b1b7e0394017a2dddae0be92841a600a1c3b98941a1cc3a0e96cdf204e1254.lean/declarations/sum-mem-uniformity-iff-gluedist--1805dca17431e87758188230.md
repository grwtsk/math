# Sum.mem_uniformity_iff_glueDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5144ebff-b4eb-ea80-6483-0a757b2cc507",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c750191a-f1cf-e043-e370-ae5149ef0acf",
  "kind": "theorem",
  "lexical_name": "Sum.mem_uniformity_iff_glueDist",
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
  "slug": "sum-mem-uniformity-iff-gluedist--1805dca17431e87758188230",
  "source": {
    "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1805dca17431e87758188230a086c069d1735c9427274cc12ff3e26972143842",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c750191a-f1cf-e043-e370-ae5149ef0acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sum.mem_uniformity_iff_glueDist (hε : 0 < ε) (s : Set ((X ⊕ Y) × (X ⊕ Y))) :
    s ∈ 𝓤 (X ⊕ Y) ↔ ∃ δ > 0, ∀ a b, glueDist Φ Ψ ε a b < δ → (a, b) ∈ s := by
  simp only [Sum.uniformity, Filter.mem_sup, Filter.mem_map, mem_uniformity_dist, mem_preimage]
  constructor
  · rintro ⟨⟨δX, δX0, hX⟩, δY, δY0, hY⟩
    refine ⟨min (min δX δY) ε, lt_min (lt_min δX0 δY0) hε, ?_⟩
    rintro (a | a) (b | b) h <;> simp only [lt_min_iff] at h
    · exact hX h.1.1
    · exact absurd h.2 (le_glueDist_inl_inr _ _ _ _ _).not_lt
    · exact absurd h.2 (le_glueDist_inr_inl _ _ _ _ _).not_lt
    · exact hY h.1.2
  · rintro ⟨ε, ε0, H⟩
    constructor <;> exact ⟨ε, ε0, fun _ _ h => H _ _ h⟩

/-- Given two maps `Φ` and `Ψ` intro metric spaces `X` and `Y` such that the distances between
`Φ p` and `Φ q`, and between `Ψ p` and `Ψ q`, coincide up to `2 ε` where `ε > 0`, one can almost
glue the two spaces `X` and `Y` along the images of `Φ` and `Ψ`, so that `Φ p` and `Ψ p` are
at distance `ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f1399586e311fd245c703d54ed8c0728c617c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
