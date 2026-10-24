# extensive_regular_generate_coherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de848d9cbf352a315169c27a3f3dc773368c9879",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3656e1bb-a63b-d060-ab32-bc3ebb9663b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc079826-6bef-4882-53c2-bc487c0e9156",
  "kind": "theorem",
  "lexical_name": "extensive_regular_generate_coherent",
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
  "slug": "extensive-regular-generate-coherent--5b15cfa47ec0c748fa0a3c77",
  "source": {
    "blob": "de848d9cbf352a315169c27a3f3dc773368c9879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b15cfa47ec0c748fa0a3c77927c141b5051e74abfdbe76147aff18652867413",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc079826-6bef-4882-53c2-bc487c0e9156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extensive_regular_generate_coherent [Preregular C] [FinitaryPreExtensive C] :
    ((extensiveCoverage C) ⊔ (regularCoverage C)).toGrothendieck =
    (coherentTopology C) := by
  ext B S
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · induction h with
    | of Y T hT =>
      apply Coverage.Saturate.of
      simp only [Coverage.sup_covering, Set.mem_union] at hT
      exact Or.elim hT
        (fun ⟨α, x, X, π, ⟨h, _⟩⟩ ↦ ⟨α, x, X, π, ⟨h, inferInstance⟩⟩)
        (fun ⟨Z, f, ⟨h, _⟩⟩ ↦ ⟨Unit, inferInstance, fun _ ↦ Z, fun _ ↦ f, ⟨h, inferInstance⟩⟩)
    | top => apply Coverage.Saturate.top
    | transitive Y T => apply Coverage.Saturate.transitive Y T<;> [assumption; assumption]
  · induction h with
    | of Y T hT =>
      obtain ⟨I, _, X, f, rfl, hT⟩ := hT
      apply Coverage.Saturate.transitive Y (generate (Presieve.ofArrows
        (fun (_ : Unit) ↦ (∐ fun (i : I) => X i)) (fun (_ : Unit) ↦ Sigma.desc f)))
      · apply Coverage.Saturate.of
        simp only [Coverage.sup_covering, extensiveCoverage, regularCoverage, Set.mem_union,
          Set.mem_setOf_eq]
        exact Or.inr ⟨_, Sigma.desc f, ⟨rfl, inferInstance⟩⟩
      · rintro R g ⟨W, ψ, σ, ⟨⟩, rfl⟩
        change _ ∈ ((extensiveCoverage C) ⊔ (regularCoverage C)).toGrothendieck _ R
        rw [Sieve.pullback_comp]
        apply pullback_stable
        have : generate (Presieve.ofArrows X fun (i : I) ↦ Sigma.ι X i) ≤
            (generate (Presieve.ofArrows X f)).pullback (Sigma.desc f) := by
          rintro Q q ⟨E, e, r, ⟨hq, rfl⟩⟩
          exact ⟨E, e, r ≫ (Sigma.desc f), by cases hq; simpa using Presieve.ofArrows.mk _, by simp⟩
        apply Coverage.saturate_of_superset _ this
        apply Coverage.Saturate.of
        refine Or.inl ⟨I, inferInstance, _, _, ⟨rfl, ?_⟩⟩
        convert IsIso.id _
        aesop
    | top => apply Coverage.Saturate.top
    | transitive Y T => apply Coverage.Saturate.transitive Y T<;> [assumption; assumption]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de848d9cbf352a315169c27a3f3dc773368c9879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
