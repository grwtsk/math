# inter_minimals_preimage_inter_eq_of_rel_iff_rel_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c5da6ae09e192c78e5b38e27a0626e12a44a66b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14901c7656d1903268c244ae37fd8615f5537f81b05d0c6f88ab754f1a8b5bdc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fb158d5-e031-c331-b07f-ee8d1313d93b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdbc1d7e-e5a1-4d1e-1a7a-1411555068dc",
  "kind": "theorem",
  "lexical_name": "inter_minimals_preimage_inter_eq_of_rel_iff_rel_on",
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
  "slug": "inter-minimals-preimage-inter-eq-of-rel-iff-rel-on--66f8fed14715588a37326012",
  "source": {
    "blob": "2c5da6ae09e192c78e5b38e27a0626e12a44a66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 328,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variant14901c7656d1903268c244ae37fd8615f5537f81b05d0c6f88ab754f1a8b5bdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66f8fed14715588a373260120b589482908efa65ae04f341f3814db225f7504f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variant14901c7656d1903268c244ae37fd8615f5537f81b05d0c6f88ab754f1a8b5bdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbc1d7e-e5a1-4d1e-1a7a-1411555068dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_minimals_preimage_inter_eq_of_rel_iff_rel_on
    (hf : ∀ ⦃a a'⦄, a ∈ x → a' ∈ x → (r a a' ↔ s (f a) (f a'))) (y : Set β) :
    x ∩ f ⁻¹' (minimals s ((f '' x) ∩ y)) = minimals r (x ∩ f ⁻¹' y) := by
  ext a
  simp only [minimals, mem_inter_iff, mem_image, and_imp, forall_exists_index,
    forall_apply_eq_imp_iff₂, preimage_setOf_eq, mem_setOf_eq, mem_preimage]
  exact ⟨fun ⟨hax,⟨_,hay⟩,h2⟩ ↦ ⟨⟨hax, hay⟩, fun a₁ ha₁ ha₁y ha₁a ↦
          (hf hax ha₁).mpr (h2 _ ha₁ ha₁y ((hf ha₁ hax).mp ha₁a))⟩ ,
        fun ⟨⟨hax,hay⟩,h⟩ ↦ ⟨hax, ⟨⟨_, hax, rfl⟩, hay⟩, fun a' ha' ha'y hsa' ↦
          (hf hax ha').mp (h ha' ha'y ((hf ha' hax).mpr hsa'))⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variant14901c7656d1903268c244ae37fd8615f5537f81b05d0c6f88ab754f1a8b5bdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variant14901c7656d1903268c244ae37fd8615f5537f81b05d0c6f88ab754f1a8b5bdc.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c5da6ae09e192c78e5b38e27a0626e12a44a66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
