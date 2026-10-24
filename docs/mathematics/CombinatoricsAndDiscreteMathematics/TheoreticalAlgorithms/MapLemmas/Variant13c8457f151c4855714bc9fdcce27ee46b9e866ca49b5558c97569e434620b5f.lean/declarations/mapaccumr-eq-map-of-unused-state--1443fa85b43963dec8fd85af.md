# mapAccumr₂_eq_map₂_of_unused_state

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b44e978-4e78-77e3-61c8-5c5e50fe410a",
  "kind": "theorem",
  "lexical_name": "mapAccumr₂_eq_map₂_of_unused_state",
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
  "slug": "mapaccumr-eq-map-of-unused-state--1443fa85b43963dec8fd85af",
  "source": {
    "blob": "a64785ae3e346f08c7649cd87d46a2da91e58d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1443fa85b43963dec8fd85afc41c82938e656dee480ab3a54a7af717eb1e2ae9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b44e978-4e78-77e3-61c8-5c5e50fe410a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAccumr₂_eq_map₂_of_unused_state (f : α → β → σ → σ × γ) (f' : α → β → γ) (s : σ)
    (h : ∀ a b s, (f a b s).snd = f' a b) :
    (mapAccumr₂ f xs ys s).snd = (map₂ (fun x y => (f x y s).snd) xs ys) :=
  mapAccumr₂_eq_map₂ .univ (Set.mem_univ _) (fun _ _ _ _ => Set.mem_univ _)
    (fun a b s s' _ _ => by rw [h, h])

/-- If `f` takes a pair of states, but always returns the same value for both elements of the
pair, then we can simplify to just a single element of state.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a64785ae3e346f08c7649cd87d46a2da91e58d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
