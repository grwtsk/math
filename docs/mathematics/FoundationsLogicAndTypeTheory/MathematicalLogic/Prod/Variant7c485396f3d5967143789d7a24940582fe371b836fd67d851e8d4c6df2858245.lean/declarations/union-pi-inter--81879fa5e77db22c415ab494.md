# union_pi_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eeae493-5eee-3647-1e14-1141075c2de6",
  "kind": "theorem",
  "lexical_name": "union_pi_inter",
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
  "slug": "union-pi-inter--81879fa5e77db22c415ab494",
  "source": {
    "blob": "3d9759472517f826af65949e24035aa74780fb87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 746,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81879fa5e77db22c415ab494e085ca1a11dd0bef8f0a1451eacfe5c71bf2c55a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eeae493-5eee-3647-1e14-1141075c2de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_pi_inter
    (ht₁ : ∀ i ∉ s₁, t₁ i = univ) (ht₂ : ∀ i ∉ s₂, t₂ i = univ) :
    (s₁ ∪ s₂).pi (fun i ↦ t₁ i ∩ t₂ i) = s₁.pi t₁ ∩ s₂.pi t₂ := by
  ext x
  simp only [mem_pi, mem_union, mem_inter_iff]
  refine ⟨fun h ↦ ⟨fun i his₁ ↦ (h i (Or.inl his₁)).1, fun i his₂ ↦ (h i (Or.inr his₂)).2⟩,
    fun h i hi ↦ ?_⟩
  rcases hi with hi | hi
  · by_cases hi2 : i ∈ s₂
    · exact ⟨h.1 i hi, h.2 i hi2⟩
    · refine ⟨h.1 i hi, ?_⟩
      rw [ht₂ i hi2]
      exact mem_univ _
  · by_cases hi1 : i ∈ s₁
    · exact ⟨h.1 i hi1, h.2 i hi⟩
    · refine ⟨?_, h.2 i hi⟩
      rw [ht₁ i hi1]
      exact mem_univ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variant7c485396f3d5967143789d7a24940582fe371b836fd67d851e8d4c6df2858245.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9759472517f826af65949e24035aa74780fb87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
