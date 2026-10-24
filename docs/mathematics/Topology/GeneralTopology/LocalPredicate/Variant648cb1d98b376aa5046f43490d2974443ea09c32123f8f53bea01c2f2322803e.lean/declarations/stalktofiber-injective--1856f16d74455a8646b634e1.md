# stalkToFiber_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aaae3065a8daa5594b2ec39c41b4c942b2fe018a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17038a6f-b4f1-33df-9077-1e91d837f0d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c77f782a-ed83-4839-71cd-6f9bd71b3f79",
  "kind": "theorem",
  "lexical_name": "stalkToFiber_injective",
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
  "slug": "stalktofiber-injective--1856f16d74455a8646b634e1",
  "source": {
    "blob": "aaae3065a8daa5594b2ec39c41b4c942b2fe018a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1856f16d74455a8646b634e1e412d78efb82e1ccbf274b6d8c5615ffdbf9a2f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77f782a-ed83-4839-71cd-6f9bd71b3f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkToFiber_injective (P : LocalPredicate T) (x : X)
    (w :
      ∀ (U V : OpenNhds x) (fU : ∀ y : U.1, T y) (_ : P.pred fU) (fV : ∀ y : V.1, T y)
        (_ : P.pred fV) (_ : fU ⟨x, U.2⟩ = fV ⟨x, V.2⟩),
        ∃ (W : OpenNhds x) (iU : W ⟶ U) (iV : W ⟶ V), ∀ w : W.1,
          fU (iU w : U.1) = fV (iV w : V.1)) :
    Function.Injective (stalkToFiber P x) := fun tU tV h ↦ by
  -- We promise to provide all the ingredients of the proof later:
  let Q :
    ∃ (W : (OpenNhds x)ᵒᵖ) (s : ∀ w : (unop W).1, T w) (hW : P.pred s),
      tU = (subsheafToTypes P).presheaf.germ _ x (unop W).2 ⟨s, hW⟩ ∧
        tV = (subsheafToTypes P).presheaf.germ _ x (unop W).2 ⟨s, hW⟩ :=
    ?_
  · choose W s hW e using Q
    exact e.1.trans e.2.symm
  -- Then use induction to pick particular representatives of `tU tV : stalk x`
  obtain ⟨U, ⟨fU, hU⟩, rfl⟩ := jointly_surjective' tU
  obtain ⟨V, ⟨fV, hV⟩, rfl⟩ := jointly_surjective' tV
  -- Decompose everything into its constituent parts:
  dsimp
  simp only [stalkToFiber, Types.Colimit.ι_desc_apply'] at h
  specialize w (unop U) (unop V) fU hU fV hV h
  rcases w with ⟨W, iU, iV, w⟩
  -- and put it back together again in the correct order.
  refine ⟨op W, fun w ↦ fU (iU w : (unop U).1), P.res ?_ _ hU, ?_⟩
  · rcases W with ⟨W, m⟩
    exact iU
  · exact ⟨colimit_sound iU.op (Subtype.eq rfl), colimit_sound iV.op (Subtype.eq (funext w).symm)⟩

universe u

/-- Some repackaging:
the presheaf of functions satisfying `continuousPrelocal` is just the same thing as
the presheaf of continuous functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaae3065a8daa5594b2ec39c41b4c942b2fe018a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
