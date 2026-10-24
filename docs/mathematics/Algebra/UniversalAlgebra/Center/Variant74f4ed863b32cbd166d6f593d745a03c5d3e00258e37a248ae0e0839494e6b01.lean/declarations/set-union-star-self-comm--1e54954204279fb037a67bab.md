# Set.union_star_self_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7390f8ad6704cbee5304fdf9e319d9a7a2585fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68210cac-02ce-e6da-5c8c-f9c2cb4d99a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14e7a7c8-3fd1-9c30-2f4f-89d6f344e589",
  "kind": "theorem",
  "lexical_name": "Set.union_star_self_comm",
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
  "slug": "set-union-star-self-comm--1e54954204279fb037a67bab",
  "source": {
    "blob": "c7390f8ad6704cbee5304fdf9e319d9a7a2585fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e54954204279fb037a67bab7cad82a7bf76d4c0c7be0c463eb3dc84661bf206",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e7a7c8-3fd1-9c30-2f4f-89d6f344e589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.union_star_self_comm (hcomm : ∀ x ∈ s, ∀ y ∈ s, y * x = x * y)
    (hcomm_star : ∀ x ∈ s, ∀ y ∈ s, y * star x = star x * y) :
    ∀ x ∈ s ∪ star s, ∀ y ∈ s ∪ star s, y * x = x * y := by
  change s ∪ star s ⊆ (s ∪ star s).centralizer
  simp_rw [centralizer_union, ← star_centralizer, union_subset_iff, subset_inter_iff,
    star_subset_star, star_subset]
  exact ⟨⟨hcomm, hcomm_star⟩, ⟨hcomm_star, hcomm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7390f8ad6704cbee5304fdf9e319d9a7a2585fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
