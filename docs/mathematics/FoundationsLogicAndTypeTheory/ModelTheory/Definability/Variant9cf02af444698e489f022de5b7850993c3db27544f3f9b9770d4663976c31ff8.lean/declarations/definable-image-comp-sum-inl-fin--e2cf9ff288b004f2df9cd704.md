# Definable.image_comp_sum_inl_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3cdaddf0644ef68cd6bddc2488db170e646c810",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b8df5cd-6b2f-1e9b-b487-6af61e16181f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91e5e881-fab5-54d7-def3-640501fd8bf0",
  "kind": "theorem",
  "lexical_name": "Definable.image_comp_sum_inl_fin",
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
  "slug": "definable-image-comp-sum-inl-fin--e2cf9ff288b004f2df9cd704",
  "source": {
    "blob": "e3cdaddf0644ef68cd6bddc2488db170e646c810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2cf9ff288b004f2df9cd704357a911d1a44c1053549516add7bc9a5a951b05e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e5e881-fab5-54d7-def3-640501fd8bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Definable.image_comp_sum_inl_fin (m : ℕ) {s : Set (Sum α (Fin m) → M)}
    (h : A.Definable L s) : A.Definable L ((fun g : Sum α (Fin m) → M => g ∘ Sum.inl) '' s) := by
  obtain ⟨φ, rfl⟩ := h
  refine' ⟨(BoundedFormula.relabel id φ).exs, _⟩
  ext x
  simp only [Set.mem_image, mem_setOf_eq, BoundedFormula.realize_exs,
    BoundedFormula.realize_relabel, Function.comp.right_id, Fin.castAdd_zero, Fin.castIso_refl]
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact
      ⟨y ∘ Sum.inr, (congr (congr rfl (Sum.elim_comp_inl_inr y).symm) (funext finZeroElim)).mp hy⟩
  · rintro ⟨y, hy⟩
    exact ⟨Sum.elim x y, (congr rfl (funext finZeroElim)).mp hy, Sum.elim_comp_inl _ _⟩
#align set.definable.image_comp_sum_inl_fin Set.Definable.image_comp_sum_inl_fin

/-- Shows that definability is closed under finite projections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3cdaddf0644ef68cd6bddc2488db170e646c810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
