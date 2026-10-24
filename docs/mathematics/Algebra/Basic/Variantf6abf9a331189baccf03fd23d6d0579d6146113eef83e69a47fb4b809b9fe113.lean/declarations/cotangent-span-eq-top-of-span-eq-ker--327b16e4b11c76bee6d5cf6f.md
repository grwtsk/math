# Cotangent.span_eq_top_of_span_eq_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a285c000db0d58feabbb54c8de8cc10d4ce129bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e64e0db3-171f-e2da-bc4d-3146fc978a76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55b976c8-60ad-11cd-cd1f-02013045c69b",
  "kind": "lemma",
  "lexical_name": "Cotangent.span_eq_top_of_span_eq_ker",
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
  "slug": "cotangent-span-eq-top-of-span-eq-ker--327b16e4b11c76bee6d5cf6f",
  "source": {
    "blob": "a285c000db0d58feabbb54c8de8cc10d4ce129bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 448,
    "path": "GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:327b16e4b11c76bee6d5cf6f2d1d86084339fb020438fa9e4c54479c9b76324c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b976c8-60ad-11cd-cd1f-02013045c69b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.span_eq_top_of_span_eq_ker {ι : Type*} (s : ι → P.Ring)
    (hs : Ideal.span (Set.range s) = P.ker) :
    Submodule.span S (.range (fun i ↦ mk ⟨s i, hs.le (Ideal.subset_span ⟨i, rfl⟩)⟩)) = ⊤ := by
  rw [Ideal.span, ← Submodule.span_range_subtype_eq_top_iff] at hs
  · apply Submodule.span_eq_top_of_span_eq_top (R := P.Ring)
    rw [← Function.comp_def, Set.range_comp, ← Submodule.map_span, hs, Submodule.map_top,
      LinearMap.range_eq_top_of_surjective _ mk_surjective]
  · simp [← hs, Ideal.mem_span_range_self]

variable {P'}
variable [Algebra R R'] [Algebra R' R''] [Algebra R' S'']
variable [Algebra S S'] [Algebra S' S''] [Algebra S S'']
variable [Algebra R S'] [IsScalarTower R R' S']

/-- A hom between two extensions induces a map between cotangent spaces. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a285c000db0d58feabbb54c8de8cc10d4ce129bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
