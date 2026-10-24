# lawfulApplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86f2d93f0ee5348e78bd1e6a886981b1d9352afc52e44a1b50a6778d57a501ab",
  "kind": "instance",
  "lexical_name": "lawfulApplicative",
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
  "slug": "lawfulapplicative--252d6fd2b10a3a9f5bc76d66",
  "source": {
    "blob": "26f7854188cab3856d926607645a6cb222be7c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:252d6fd2b10a3a9f5bc76d66592227867437979534bc29763ee2136627aba259",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86f2d93f0ee5348e78bd1e6a886981b1d9352afc52e44a1b50a6778d57a501ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lawfulApplicative : LawfulApplicative Finset :=
  { Finset.lawfulFunctor with
    seqLeft_eq := fun s t => by
      rw [seq_def, fmap_def, seqLeft_def]
      obtain rfl | ht := t.eq_empty_or_nonempty
      · simp_rw [image_empty, ite_true]
        exact (sup_bot _).symm
      · ext a
        rw [ite_eq_right ht.ne_empty, mem_sup]
        refine ⟨fun ha => ⟨const _ a, mem_image_of_mem _ ha, mem_image_const_self.2 ht⟩, ?_⟩
        rintro ⟨f, hf, ha⟩
        rw [mem_image] at hf ha
        obtain ⟨b, hb, rfl⟩ := hf
        obtain ⟨_, _, rfl⟩ := ha
        exact hb
    seqRight_eq := fun s t => by
      rw [seq_def, fmap_def, seqRight_def]
      obtain rfl | hs := s.eq_empty_or_nonempty
      · rw [ite_eq_left rfl, image_empty, sup_empty, bot_eq_empty]
      · ext a
        rw [ite_eq_right hs.ne_empty, mem_sup]
        refine ⟨fun ha => ⟨id, mem_image_const_self.2 hs, by rwa [image_id]⟩, ?_⟩
        rintro ⟨f, hf, ha⟩
        rw [mem_image] at hf ha
        obtain ⟨b, hb, rfl⟩ := ha
        obtain ⟨_, _, rfl⟩ := hf
        exact hb
    pure_seq := fun f s => by simp only [pure_def, seq_def, sup_singleton, fmap_def]
    map_pure := fun _ _ => image_singleton _ _
    seq_pure := fun _ _ => sup_singleton_apply _ _
    seq_assoc := fun s t u => by
      ext a
      simp_rw [seq_def, fmap_def]
      simp only [mem_sup, mem_image]
      constructor
      · rintro ⟨g, hg, b, ⟨f, hf, a, ha, rfl⟩, rfl⟩
        exact ⟨g ∘ f, ⟨comp g, ⟨g, hg, rfl⟩, f, hf, rfl⟩, a, ha, rfl⟩
      · rintro ⟨c, ⟨_, ⟨g, hg, rfl⟩, f, hf, rfl⟩, a, ha, rfl⟩
        exact ⟨g, hg, f a, ⟨f, hf, a, ha, rfl⟩, rfl⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante1322058c8cb23e4aadba9b3fccd1abf42c7483f0915748d1554bd06c7530c00.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f7854188cab3856d926607645a6cb222be7c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
