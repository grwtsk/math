# exists_adj_boundary_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03a00b69a438ba32f1f93a617394712190b5b1ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd7d0a0d74de1f2985adcd338e6a88186b4f8bd620fe93eab202f031b0093b84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b0b07b-b0b6-502f-d6c1-1957954dfd9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a880f61e-d928-5b73-244f-9eb3e09f6d50",
  "kind": "theorem",
  "lexical_name": "exists_adj_boundary_pair",
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
  "slug": "exists-adj-boundary-pair--ff3b9be5bcde3d57e2898761",
  "source": {
    "blob": "03a00b69a438ba32f1f93a617394712190b5b1ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variantdd7d0a0d74de1f2985adcd338e6a88186b4f8bd620fe93eab202f031b0093b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff3b9be5bcde3d57e2898761c92900557711d28a62f764622b3d249bc0155440",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variantdd7d0a0d74de1f2985adcd338e6a88186b4f8bd620fe93eab202f031b0093b84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a880f61e-d928-5b73-244f-9eb3e09f6d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_adj_boundary_pair (Gc : G.Preconnected) (hK : K.Nonempty) :
    ∀ C : G.ComponentCompl K, ∃ ck : V × V, ck.1 ∈ C ∧ ck.2 ∈ K ∧ G.Adj ck.1 ck.2 := by
  refine ComponentCompl.ind fun v vnK => ?_
  let C : G.ComponentCompl K := G.componentComplMk vnK
  let dis := Set.disjoint_iff.mp C.disjoint_right
  by_contra! h
  suffices Set.univ = (C : Set V) by exact dis ⟨hK.choose_spec, this ▸ Set.mem_univ hK.some⟩
  symm
  rw [Set.eq_univ_iff_forall]
  rintro u
  by_contra unC
  obtain ⟨p⟩ := Gc v u
  obtain ⟨⟨⟨x, y⟩, xy⟩, -, xC, ynC⟩ :=
    p.exists_boundary_dart (C : Set V) (G.componentComplMk_mem vnK) unC
  exact ynC (mem_of_adj x y xC (fun yK : y ∈ K => h ⟨x, y⟩ xC yK xy) xy)

/--
If `K ⊆ L`, the components outside of `L` are all contained in a single component outside of `K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variantdd7d0a0d74de1f2985adcd338e6a88186b4f8bd620fe93eab202f031b0093b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variantdd7d0a0d74de1f2985adcd338e6a88186b4f8bd620fe93eab202f031b0093b84.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a00b69a438ba32f1f93a617394712190b5b1ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
