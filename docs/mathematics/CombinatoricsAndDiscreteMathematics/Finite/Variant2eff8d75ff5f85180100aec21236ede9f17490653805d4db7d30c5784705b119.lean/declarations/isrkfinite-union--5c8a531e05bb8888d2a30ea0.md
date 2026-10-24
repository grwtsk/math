# IsRkFinite.union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9bac4f1-6724-0cf7-d0ba-961758ed6f30",
  "kind": "lemma",
  "lexical_name": "IsRkFinite.union",
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
  "slug": "isrkfinite-union--5c8a531e05bb8888d2a30ea0",
  "source": {
    "blob": "ff92d11b029fbaee7c433832e611cebbcebce63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c8a531e05bb8888d2a30ea024e73ea566f74c4290c2b65f611b8d62722a8db2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9bac4f1-6724-0cf7-d0ba-961758ed6f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRkFinite.union (hX : M.IsRkFinite X) (hY : M.IsRkFinite Y) : M.IsRkFinite (X ∪ Y) := by
  obtain ⟨I, hI, hIfin⟩ := hX.exists_finite_isBasis'
  obtain ⟨J, hJ, hJfin⟩ := hY.exists_finite_isBasis'
  rw [← isRkFinite_inter_ground_iff]
  refine (M.isRkFinite_of_finite (hIfin.union hJfin)).closure.subset ?_
  rw [closure_union_congr_left hI.closure_eq_closure,
    closure_union_congr_right hJ.closure_eq_closure]
  exact inter_ground_subset_closure M (X ∪ Y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff92d11b029fbaee7c433832e611cebbcebce63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
