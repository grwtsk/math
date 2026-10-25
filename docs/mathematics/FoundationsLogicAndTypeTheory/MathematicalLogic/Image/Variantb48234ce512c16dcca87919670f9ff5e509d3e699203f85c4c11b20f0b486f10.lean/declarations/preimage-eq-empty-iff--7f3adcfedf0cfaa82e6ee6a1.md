# preimage_eq_empty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "336b47d3cfcd186a1e5606e3a3eb40eb573adbba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1635,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95ee6e9d-4c9f-236d-534d-d59c495e86c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae67cf50-045e-c9e1-3269-1e55607edf1a",
  "kind": "theorem",
  "lexical_name": "preimage_eq_empty_iff",
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
  "slug": "preimage-eq-empty-iff--7f3adcfedf0cfaa82e6ee6a1",
  "source": {
    "blob": "336b47d3cfcd186a1e5606e3a3eb40eb573adbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1652,
    "line": 1635,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3adcfedf0cfaa82e6ee6a1e0b2446999726ea72879ec6597b77ee13c8d37c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae67cf50-045e-c9e1-3269-1e55607edf1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1635–1652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_eq_empty_iff {s : Set β} : f ⁻¹' s = ∅ ↔ Disjoint s (range f) :=
  ⟨fun h => by
    simp only [eq_empty_iff_forall_not_mem, disjoint_iff_inter_eq_empty, not_exists, mem_inter_iff,
      not_and, mem_range, mem_preimage] at h ⊢
    intro y hy x hx
    rw [← hx] at hy
    exact h x hy,
  preimage_eq_empty⟩
#align set.preimage_eq_empty_iff Set.preimage_eq_empty_iff

end Set

end Disjoint

section Sigma

variable {α : Type*} {β : α → Type*} {i j : α} {s : Set (β i)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantb48234ce512c16dcca87919670f9ff5e509d3e699203f85c4c11b20f0b486f10.lean#L1635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `336b47d3cfcd186a1e5606e3a3eb40eb573adbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
