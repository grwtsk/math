# mapFinIdx_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98defc14472234f01d62b5e9842452801d4eab48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad3789b15327e62e443240fc110d45a5abc79a99ce9a6bdd9fc4a2cb3768c83e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6b37e62-4b63-7ead-43f3-03ce3d8c8a34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbdfbd20-76d4-44fa-170f-f3cce21cbaa3",
  "kind": "theorem",
  "lexical_name": "mapFinIdx_eq_append_iff",
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
  "slug": "mapfinidx-eq-append-iff--cd5d84794e351afb65c5d026",
  "source": {
    "blob": "98defc14472234f01d62b5e9842452801d4eab48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantad3789b15327e62e443240fc110d45a5abc79a99ce9a6bdd9fc4a2cb3768c83e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd5d84794e351afb65c5d0261ef4b82afc40dac8a8ba1faaa4338a69d4c075ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantad3789b15327e62e443240fc110d45a5abc79a99ce9a6bdd9fc4a2cb3768c83e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbdfbd20-76d4-44fa-170f-f3cce21cbaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapFinIdx_eq_append_iff {xs : Array α} {f : (i : Nat) → α → (h : i < xs.size) → β} {ys zs : Array β} :
    xs.mapFinIdx f = ys ++ zs ↔
      ∃ (ys' : Array α) (zs' : Array α) (w : xs = ys' ++ zs'),
        ys'.mapFinIdx (fun i a h => f i a (by simp [w]; omega)) = ys ∧
        zs'.mapFinIdx (fun i a h => f (i + ys'.size) a (by simp [w]; omega)) = zs := by
  rcases xs with ⟨l⟩
  rcases ys with ⟨l₁⟩
  rcases zs with ⟨l₂⟩
  simp only [List.mapFinIdx_toArray, List.append_toArray, mk.injEq, List.mapFinIdx_eq_append_iff,
    toArray_eq_append_iff]
  constructor
  · rintro ⟨l₁, l₂, rfl, rfl, rfl⟩
    refine ⟨l₁.toArray, l₂.toArray, by simp_all [Array.size]⟩
  · rintro ⟨⟨l₁⟩, ⟨l₂⟩, rfl, h₁, h₂⟩
    simp [← toList_inj] at h₁ h₂
    obtain rfl := h₁
    obtain rfl := h₂
    refine ⟨l₁, l₂, by simp_all [Array.size]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantad3789b15327e62e443240fc110d45a5abc79a99ce9a6bdd9fc4a2cb3768c83e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantad3789b15327e62e443240fc110d45a5abc79a99ce9a6bdd9fc4a2cb3768c83e.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98defc14472234f01d62b5e9842452801d4eab48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
