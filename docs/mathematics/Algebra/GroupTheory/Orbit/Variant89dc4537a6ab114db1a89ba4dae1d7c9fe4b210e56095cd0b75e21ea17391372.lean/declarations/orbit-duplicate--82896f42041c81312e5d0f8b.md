# Orbit.duplicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87b209d4a21d124ba65bd9c8fee8bc748c9a6458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9d33912-c4af-d3ed-3cb2-c7c8193b28a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0faa1f45-9bd0-df9f-9ea1-013dba370f88",
  "kind": "theorem",
  "lexical_name": "Orbit.duplicate",
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
  "slug": "orbit-duplicate--82896f42041c81312e5d0f8b",
  "source": {
    "blob": "87b209d4a21d124ba65bd9c8fee8bc748c9a6458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82896f42041c81312e5d0f8b750e7d5dfea3a7106d8b402c4bf2b06b1f1cc6d2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0faa1f45-9bd0-df9f-9ea1-013dba370f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Orbit.duplicate (x : X) (w : α × Bool) :
    {(mk [w])⁻¹ • y | y ∈ MulAction.orbit (startsWith w) x} =
      (⋃ v ∈ {z : α × Bool | z ≠ (w.1, !w.2)}, MulAction.orbit (startsWith v) x) ∪ {x} := by
  ext i
  constructor
  · rintro ⟨-, ⟨⟨g, hg⟩, rfl⟩, rfl⟩
    set l := g.toWord with hl
    have h : (⟨g, hg⟩ : startsWith w) = ⟨mk g.toWord, by simp [g.mk_toWord, hg]⟩ := by
      simp [g.mk_toWord]
    match l with
    | [] => simp [← hl, startsWith] at hg
    | [a] =>
      simp_rw [h, ← hl, show a = w by simpa [← hl, startsWith] using hg, startsWith.smul_def,
        inv_smul_smul]
      exact Or.inr rfl
    | a :: b :: l =>
      have ha : a = w := by simpa [← hl, startsWith] using hg
      have h1 := isReduced_cons_cons.mp (hl ▸ isReduced_toWord)
      refine Or.inl (Set.mem_biUnion (x := b) (by grind) ?_)
      simp_rw [h, ← hl, ha, ← List.singleton_append (l := b :: l), ← mul_mk, startsWith.smul_def,
        mul_smul, inv_smul_smul]
      exact ⟨⟨mk (b :: l), by simp [startsWith, h1.2.reduce_eq]⟩, rfl⟩
  · rintro (⟨-, ⟨w', rfl⟩, -, ⟨hw, rfl⟩, ⟨g, hg⟩, rfl⟩ | rfl)
    · exact ⟨mk [w] • g • x, ⟨⟨mk [w] * g, startsWith_mk_mul g
        ((startsWith.disjoint_iff_ne.mpr hw).notMem_of_mem_left hg)⟩,
        mul_smul (mk [w]) g x⟩, inv_smul_smul (mk [w]) (g • x)⟩
    · exact ⟨mk [w] • i, ⟨⟨mk [w], rfl⟩, rfl⟩, inv_smul_smul (mk [w]) i⟩

end FreeGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Orbit/Variant89dc4537a6ab114db1a89ba4dae1d7c9fe4b210e56095cd0b75e21ea17391372.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b209d4a21d124ba65bd9c8fee8bc748c9a6458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
