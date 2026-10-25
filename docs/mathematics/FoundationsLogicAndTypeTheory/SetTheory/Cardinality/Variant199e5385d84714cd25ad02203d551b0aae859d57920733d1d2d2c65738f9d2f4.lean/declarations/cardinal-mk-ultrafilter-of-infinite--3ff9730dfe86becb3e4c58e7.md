# Cardinal.mk_ultrafilter_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57f80560-f0bb-f8a5-76f1-400bc3b7d416",
  "kind": "theorem",
  "lexical_name": "Cardinal.mk_ultrafilter_of_infinite",
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
  "slug": "cardinal-mk-ultrafilter-of-infinite--3ff9730dfe86becb3e4c58e7",
  "source": {
    "blob": "adfb26b64f255e49fbc037ca31ead88bb4a3e7dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff9730dfe86becb3e4c58e75c8939073f4665833fa902f1ef10b96b203af71d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f80560-f0bb-f8a5-76f1-400bc3b7d416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem Cardinal.mk_ultrafilter_of_infinite :
    #(Ultrafilter α) = 2 ^ (2 ^ #α : Cardinal) := by
  rw [← Cardinal.mk_set, ← Cardinal.mk_set]
  apply le_antisymm
  · exact Cardinal.mk_le_of_injective (Filter.sets_injective.comp Ultrafilter.coe_injective)
  · obtain ⟨e⟩ : Nonempty (Finset α × Finset (Finset α) ≃ α) := Cardinal.eq.1 (by simp)
    let f (s : Set (Set α)) : Ultrafilter α := Ultrafilter.of ((interPairsFilter s).map e)
    suffices hf : f.Injective from Cardinal.mk_le_of_injective hf
    intro s t hst
    contrapose! hst
    have hdj : Disjoint ((interPairsFilter s).map e) ((interPairsFilter t).map e) := by
      rw [disjoint_map e.injective]
      exact interPairsFilter_pairwiseDisjoint (mem_univ s) (mem_univ t) hst
    unfold f
    rw [← Ultrafilter.coe_injective.ne_iff]
    exact (hdj.mono (Ultrafilter.of_le _) (Ultrafilter.of_le _)).ne (Ultrafilter.neBot _).ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfb26b64f255e49fbc037ca31ead88bb4a3e7dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
