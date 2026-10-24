# isPiSystem_Ixx_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0598ddc4637f21d30b49d8ab119f4250b8c28da8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc6e6f40-1def-ad72-b48f-b6b60887066f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac8f92b7-973d-8cce-b568-7bd17e9db076",
  "kind": "theorem",
  "lexical_name": "isPiSystem_Ixx_mem",
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
  "slug": "ispisystem-ixx-mem--302360f3ab716dda26f2b59c",
  "source": {
    "blob": "0598ddc4637f21d30b49d8ab119f4250b8c28da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 168,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:302360f3ab716dda26f2b59c17814c3b243c14a37e47586d86f942bb8c8cd794",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac8f92b7-973d-8cce-b568-7bd17e9db076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPiSystem_Ixx_mem {Ixx : α → α → Set α} {p : α → α → Prop}
    (Hne : ∀ {a b}, (Ixx a b).Nonempty → p a b)
    (Hi : ∀ {a₁ b₁ a₂ b₂}, Ixx a₁ b₁ ∩ Ixx a₂ b₂ = Ixx (max a₁ a₂) (min b₁ b₂)) (s t : Set α) :
    IsPiSystem { S | ∃ᵉ (l ∈ s) (u ∈ t), p l u ∧ Ixx l u = S } := by
  rintro _ ⟨l₁, hls₁, u₁, hut₁, _, rfl⟩ _ ⟨l₂, hls₂, u₂, hut₂, _, rfl⟩
  simp only [Hi]
  exact fun H => ⟨l₁ ⊔ l₂, sup_ind l₁ l₂ hls₁ hls₂, u₁ ⊓ u₂, inf_ind u₁ u₂ hut₁ hut₂, Hne H, rfl⟩
#align is_pi_system_Ixx_mem isPiSystem_Ixx_mem

-- porting note: change `∃ (_ : p l u), _` to `_ ∧ _`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0598ddc4637f21d30b49d8ab119f4250b8c28da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
