# exists_adj_boundary_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:229b5099-f36b-a99a-8f9f-6b9e1c8827ce",
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
  "slug": "exists-adj-boundary-pair--feee52ddccc3966286b84227",
  "source": {
    "blob": "aff42121a744691f26f7e22c5b32f1e807903aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feee52ddccc3966286b84227b6c317050e348b7444870cfa10ca5520092597fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:229b5099-f36b-a99a-8f9f-6b9e1c8827ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–163.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff42121a744691f26f7e22c5b32f1e807903aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
