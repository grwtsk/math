# CompleteBipartiteGraph.chromaticNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9192e97-bfcd-c87a-fcad-92bc44ee8566",
  "kind": "theorem",
  "lexical_name": "CompleteBipartiteGraph.chromaticNumber",
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
  "slug": "completebipartitegraph-chromaticnumber--8f9bd43552fc58e97a36e63e",
  "source": {
    "blob": "dc12d6ff80a09a327acf067707a4803edc9c87a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f9bd43552fc58e97a36e63e007dd5fcf04404947398b88b37c3db673443f2dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9192e97-bfcd-c87a-fcad-92bc44ee8566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompleteBipartiteGraph.chromaticNumber {V W : Type*} [Nonempty V] [Nonempty W] :
    (completeBipartiteGraph V W).chromaticNumber = 2 := by
  apply chromaticNumber_eq_card_of_forall_surj (CompleteBipartiteGraph.bicoloring V W)
  intro C b
  have v := Classical.arbitrary V
  have w := Classical.arbitrary W
  have h : (completeBipartiteGraph V W).Adj (Sum.inl v) (Sum.inr w) := by simp
  have hn := C.valid h
  by_cases he : C (Sum.inl v) = b
  · exact ⟨_, he⟩
  · by_cases he' : C (Sum.inr w) = b
    · exact ⟨_, he'⟩
    · exfalso
      cases b <;>
        simp only [Bool.eq_true_eq_not_eq_false, Bool.eq_false_eq_not_eq_true] at he he' <;>
          rw [he, he'] at hn <;>
        contradiction
#align simple_graph.complete_bipartite_graph.chromatic_number SimpleGraph.CompleteBipartiteGraph.chromaticNumber

/-! ### Cliques -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc12d6ff80a09a327acf067707a4803edc9c87a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
