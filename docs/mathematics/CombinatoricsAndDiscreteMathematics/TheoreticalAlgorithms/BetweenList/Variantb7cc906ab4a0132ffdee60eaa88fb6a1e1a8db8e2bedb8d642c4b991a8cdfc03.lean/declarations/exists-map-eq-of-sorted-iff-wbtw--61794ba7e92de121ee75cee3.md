# exists_map_eq_of_sorted_iff_wbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bff2313-1f4b-f274-3e85-36d15864c5f9",
  "kind": "lemma",
  "lexical_name": "exists_map_eq_of_sorted_iff_wbtw",
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
  "slug": "exists-map-eq-of-sorted-iff-wbtw--61794ba7e92de121ee75cee3",
  "source": {
    "blob": "6df737761c9dd3f993e7382e6cadd0d1f95cfbac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61794ba7e92de121ee75cee375f70ad2c3d5e569bb869865bb50ae6b754d3db1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bff2313-1f4b-f274-3e85-36d15864c5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_eq_of_sorted_iff_wbtw {l : List P} :
    (∃ p₁ p₂ : P, ∃ l' : List R, l'.SortedLE ∧ l'.map (lineMap p₁ p₂) = l) ↔ l.Wbtw R := by
  refine ⟨fun ⟨p₁, p₂, l', hl's, hl'l⟩ ↦ ?_, fun h ↦ ?_⟩
  · subst hl'l
    exact Wbtw.map hl's.wbtw _
  · by_cases hl : l = []
    · exact ⟨AddTorsor.nonempty.some, AddTorsor.nonempty.some, [], by
        simp [hl, sortedLE_iff_pairwise]⟩
    · exact ⟨l.head hl, l.getLast hl, (exists_map_eq_of_sorted_nonempty_iff_wbtw hl).2 h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df737761c9dd3f993e7382e6cadd0d1f95cfbac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
