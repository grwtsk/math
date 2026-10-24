# simply_connected_iff_loops_nullhomotopic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6572a22d60627d94425b6fa7286ade982fc1e9e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dd26e30-8768-7d9b-e8ce-1c386cc6e906",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a925b91d-cafa-1426-444a-ce866e660e14",
  "kind": "theorem",
  "lexical_name": "simply_connected_iff_loops_nullhomotopic",
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
  "slug": "simply-connected-iff-loops-nullhomotopic--97bed77f8f64526fce0f848b",
  "source": {
    "blob": "6572a22d60627d94425b6fa7286ade982fc1e9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 106,
    "path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97bed77f8f64526fce0f848b673e1110855751e996859df99cfe31b45e74d6cb",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a925b91d-cafa-1426-444a-ce866e660e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simply_connected_iff_loops_nullhomotopic :
    SimplyConnectedSpace Y ↔
      PathConnectedSpace Y ∧ ∀ (x : Y) (γ : Path x x), Path.Homotopic γ (Path.refl x) := by
  rw [simply_connected_iff_paths_homotopic']
  constructor
  · -- Forward: all paths homotopic implies all loops null-homotopic
    intro ⟨hpc, hall⟩
    exact ⟨hpc, fun x γ => hall γ (Path.refl x)⟩
  · -- Backward: all loops null-homotopic implies all paths homotopic
    intro ⟨hpc, hloops⟩
    refine ⟨hpc, fun {x y} p₁ p₂ => ?_⟩
    -- Work in the quotient where structural steps can be done by simp
    rw [← eq]
    replace hloops : ∀ (x : Y) (γ : Path x x),
        (⟦γ⟧ : Path.Homotopic.Quotient x x) = ⟦Path.refl x⟧ :=
      fun x γ => Quotient.sound (hloops x γ)
    have h : trans ⟦p₁⟧ (symm ⟦p₂⟧) = refl x := by
      simpa using hloops x (p₁.trans p₂.symm)
    calc ⟦p₁⟧
      _ = trans (trans ⟦p₁⟧ (symm ⟦p₂⟧)) ⟦p₂⟧ := by simp
      _ = ⟦p₂⟧ := by grind

/-!
### Simply connected sets
-/

/-- We say that a set is simply connected if it's a simply connected topological space
in the induced topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6572a22d60627d94425b6fa7286ade982fc1e9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
