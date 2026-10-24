# of_injective_to_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:781dfaa8-4c1e-758a-20b6-c63b4ee2949c",
  "kind": "theorem",
  "lexical_name": "of_injective_to_set",
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
  "slug": "of-injective-to-set--2e42a30cdba6592a771ae9d6",
  "source": {
    "blob": "ae3995a5ad5705e6ebc722e07935000ddea506e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 437,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e42a30cdba6592a771ae9d6c57b77b59aaa3857bd3e3699fd163ad51b0ca820",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:781dfaa8-4c1e-758a-20b6-c63b4ee2949c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_injective_to_set {s : Set α} (hs : s ≠ Set.univ) {f : α → s} (hf : Injective f) :
    Infinite α :=
  of_not_fintype fun h => by
    classical
      refine lt_irrefl (Fintype.card α) ?_
      calc
        Fintype.card α ≤ Fintype.card s := Fintype.card_le_of_injective f hf
        _ = #s.toFinset := s.toFinset_card.symm
        _ < Fintype.card α :=
          Finset.card_lt_card <| by rwa [Set.toFinset_ssubset_univ, Set.ssubset_univ_iff]

/-- If `s : Set α` is a proper subset of `α` and `f : s → α` is surjective, then `α` is infinite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant12495a0afd4e4b5abcf91019d852c59788816f9711bcfd57ab5bfb2df6c649b5.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3995a5ad5705e6ebc722e07935000ddea506e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
