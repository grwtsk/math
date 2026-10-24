# lt_iff_exists_filter_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3c6fab8350b0cca7f7d4a8559ce80581d086b59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8eaebe3-42e4-c923-f44e-cb12e282f110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b91601fe-cfe3-6a2c-c32a-6b788f036b13",
  "kind": "lemma",
  "lexical_name": "lt_iff_exists_filter_lt",
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
  "slug": "lt-iff-exists-filter-lt--d0d2643e796b9561f56cfc7c",
  "source": {
    "blob": "e3c6fab8350b0cca7f7d4a8559ce80581d086b59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 343,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d2643e796b9561f56cfc7c41f79b80072e91b04befadf133eded9bd157d116",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b91601fe-cfe3-6a2c-c32a-6b788f036b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lt_iff_exists_filter_lt :
    toColex s < toColex t ↔ ∃ w ∈ t \ s, {a ∈ s | w < a} = {a ∈ t | w < a} := by
  simp only [lt_iff_exists_forall_lt, mem_sdiff, filter_inj, and_assoc]
  refine ⟨fun h ↦ ?_, ?_⟩
  · let u := {w ∈ t \ s | ∀ a ∈ s, a ∉ t → a < w}
    have mem_u {w : α} : w ∈ u ↔ w ∈ t ∧ w ∉ s ∧ ∀ a ∈ s, a ∉ t → a < w := by simp [u, and_assoc]
    have hu : u.Nonempty := h.imp fun _ ↦ mem_u.2
    let m := max' _ hu
    have ⟨hmt, hms, hm⟩ : m ∈ t ∧ m ∉ s ∧ ∀ a ∈ s, a ∉ t → a < m := mem_u.1 <| max'_mem _ _
    refine ⟨m, hmt, hms, fun a hma ↦ ⟨fun has ↦ not_imp_comm.1 (hm _ has) hma.asymm, fun hat ↦ ?_⟩⟩
    by_contra has
    have hau : a ∈ u := mem_u.2 ⟨hat, has, fun b hbs hbt ↦ (hm _ hbs hbt).trans hma⟩
    exact hma.not_le <| le_max' _ _ hau
  · rintro ⟨w, hwt, hws, hw⟩
    refine ⟨w, hwt, hws, fun a has hat ↦ ?_⟩
    by_contra! hwa
    exact hat <| (hw <| hwa.lt_of_ne <| ne_of_mem_of_not_mem hwt hat).1 has

/-- If `s ≤ t` in colex and `#s ≤ #t`, then `s \ {a} ≤ t \ {min t}` for any `a ∈ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3c6fab8350b0cca7f7d4a8559ce80581d086b59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
