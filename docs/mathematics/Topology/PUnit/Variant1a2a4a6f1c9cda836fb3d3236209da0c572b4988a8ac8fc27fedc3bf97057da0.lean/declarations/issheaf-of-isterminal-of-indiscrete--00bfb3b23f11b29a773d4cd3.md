# isSheaf_of_isTerminal_of_indiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "671f5298e79c1eda5665614fbc45f66617fd5aa4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a2a4a6f1c9cda836fb3d3236209da0c572b4988a8ac8fc27fedc3bf97057da0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fcdcba2-8b36-4036-289d-89a52f74f309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a5cd854-51a5-d488-ea96-e9a1e34a9f32",
  "kind": "theorem",
  "lexical_name": "isSheaf_of_isTerminal_of_indiscrete",
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
  "slug": "issheaf-of-isterminal-of-indiscrete--00bfb3b23f11b29a773d4cd3",
  "source": {
    "blob": "671f5298e79c1eda5665614fbc45f66617fd5aa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 23,
    "path": "GRWTSK/Topology/PUnit/Variant1a2a4a6f1c9cda836fb3d3236209da0c572b4988a8ac8fc27fedc3bf97057da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00bfb3b23f11b29a773d4cd3092fc05fd75d1c5a06a9c3250408ea3821c62e02",
  "verification": {
    "reference": "docs/verification/Topology/PUnit/Variant1a2a4a6f1c9cda836fb3d3236209da0c572b4988a8ac8fc27fedc3bf97057da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5cd854-51a5-d488-ea96-e9a1e34a9f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_of_isTerminal_of_indiscrete {X : TopCat.{w}} (hind : X.str = ⊤) (F : Presheaf C X)
    (it : IsTerminal <| F.obj <| op ⊥) : F.IsSheaf := fun c U s hs => by
  obtain rfl | hne := eq_or_ne U ⊥
  · intro _ _
    rw [@existsUnique_iff_exists _ ⟨fun _ _ => _⟩]
    · refine ⟨it.from _, fun U hU hs => IsTerminal.hom_ext ?_ _ _⟩
      rwa [le_bot_iff.1 hU.le]
    · apply it.hom_ext
  · convert Presieve.isSheafFor_top_sieve (F ⋙ coyoneda.obj (@op C c))
    rw [← Sieve.id_mem_iff_eq_top]
    have := (U.eq_bot_or_top hind).resolve_left hne
    subst this
    obtain he | ⟨⟨x⟩⟩ := isEmpty_or_nonempty X
    · exact (hne <| SetLike.ext'_iff.2 <| Set.univ_eq_empty_iff.2 he).elim
    obtain ⟨U, f, hf, hm⟩ := hs x _root_.trivial
    obtain rfl | rfl := U.eq_bot_or_top hind
    · cases hm
    · convert hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PUnit/Variant1a2a4a6f1c9cda836fb3d3236209da0c572b4988a8ac8fc27fedc3bf97057da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PUnit/Variant1a2a4a6f1c9cda836fb3d3236209da0c572b4988a8ac8fc27fedc3bf97057da0.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671f5298e79c1eda5665614fbc45f66617fd5aa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
