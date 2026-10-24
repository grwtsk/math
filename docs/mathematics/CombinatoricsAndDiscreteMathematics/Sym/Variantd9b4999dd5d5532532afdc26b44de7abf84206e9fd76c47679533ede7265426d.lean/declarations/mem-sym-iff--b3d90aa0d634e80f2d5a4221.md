# mem_sym_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30170021-2cd0-e031-4e53-4fea04ffe137",
  "kind": "theorem",
  "lexical_name": "mem_sym_iff",
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
  "slug": "mem-sym-iff--b3d90aa0d634e80f2d5a4221",
  "source": {
    "blob": "1fb43de6ddbc6eadc79c296212a041c3923673ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d90aa0d634e80f2d5a42210738b233c9030824b8502a38b1e27d7e44652199",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30170021-2cd0-e031-4e53-4fea04ffe137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sym_iff : m ∈ s.sym n ↔ ∀ a ∈ m, a ∈ s := by
  induction' n with n ih
  · refine' mem_singleton.trans ⟨_, fun _ ↦ Sym.eq_nil_of_card_zero _⟩
    rintro rfl
    exact fun a ha ↦ (Finset.not_mem_empty _ ha).elim
  refine' mem_sup.trans ⟨_, fun h ↦ _⟩
  · rintro ⟨a, ha, he⟩ b hb
    rw [mem_image] at he
    obtain ⟨m, he, rfl⟩ := he
    rw [Sym.mem_cons] at hb
    obtain rfl | hb := hb
    · exact ha
    · exact ih.1 he _ hb
  · obtain ⟨a, m, rfl⟩ := m.exists_eq_cons_of_succ
    exact
      ⟨a, h _ <| Sym.mem_cons_self _ _,
        mem_image_of_mem _ <| ih.2 fun b hb ↦ h _ <| Sym.mem_cons_of_mem hb⟩
#align finset.mem_sym_iff Finset.mem_sym_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb43de6ddbc6eadc79c296212a041c3923673ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
