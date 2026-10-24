# insertWith.valid_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0b7d02f26aecf4da3b9803cbe86682331cca63b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9335c7b6-0e64-5300-c488-8e9c66831562",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2333684d-cd89-d5a1-cf61-56d0ad146bd5",
  "kind": "theorem",
  "lexical_name": "insertWith.valid_aux",
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
  "slug": "insertwith-valid-aux--c2bcffaffdb7e7895f36fafb",
  "source": {
    "blob": "e0b7d02f26aecf4da3b9803cbe86682331cca63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1532,
    "line": 1503,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2bcffaffdb7e7895f36fafb3feec40f01ebfcda86cc6229f1ac7f531b7c13c4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2333684d-cd89-d5a1-cf61-56d0ad146bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1503–1532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertWith.valid_aux [IsTotal α (· ≤ ·)] [@DecidableRel α (· ≤ ·)] (f : α → α) (x : α)
    (hf : ∀ y, x ≤ y ∧ y ≤ x → x ≤ f y ∧ f y ≤ x) :
    ∀ {t o₁ o₂},
      Valid' o₁ t o₂ →
        Bounded nil o₁ x →
          Bounded nil x o₂ →
            Valid' o₁ (insertWith f x t) o₂ ∧ Raised (size t) (size (insertWith f x t))
  | nil, o₁, o₂, _, bl, br => ⟨valid'_singleton bl br, Or.inr rfl⟩
  | node sz l y r, o₁, o₂, h, bl, br => by
    rw [insertWith, cmpLE]
    split_ifs with h_1 h_2 <;> dsimp only
    · rcases h with ⟨⟨lx, xr⟩, hs, hb⟩
      rcases hf _ ⟨h_1, h_2⟩ with ⟨xf, fx⟩
      refine'
        ⟨⟨⟨lx.mono_right (le_trans h_2 xf), xr.mono_left (le_trans fx h_1)⟩, hs, hb⟩, Or.inl rfl⟩
    · rcases insertWith.valid_aux f x hf h.left bl (lt_of_le_not_le h_1 h_2) with ⟨vl, e⟩
      suffices H
      · refine' ⟨vl.balanceL h.right H, _⟩
        rw [size_balanceL vl.3 h.3.2.2 vl.2 h.2.2.2 H, h.2.size_eq]
        refine' (e.add_right _).add_right _
      · exact Or.inl ⟨_, e, h.3.1⟩
    · have : y < x := lt_of_le_not_le ((total_of (· ≤ ·) _ _).resolve_left h_1) h_1
      rcases insertWith.valid_aux f x hf h.right this br with ⟨vr, e⟩
      suffices H
      · refine' ⟨h.left.balanceR vr H, _⟩
        rw [size_balanceR h.3.2.1 vr.3 h.2.2.1 vr.2 H, h.2.size_eq]
        refine' (e.add_left _).add_right _
      · exact Or.inr ⟨_, e, h.3.1⟩
#align ordnode.insert_with.valid_aux Ordnode.insertWith.valid_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean#L1503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0b7d02f26aecf4da3b9803cbe86682331cca63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
