# mem_insert_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8c75e51-fb0e-6fae-ce97-700c17566768",
  "kind": "theorem",
  "lexical_name": "mem_insert_of_mem",
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
  "slug": "mem-insert-of-mem--6ffc6cf6c7c5be97325ea8ff",
  "source": {
    "blob": "3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 780,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffc6cf6c7c5be97325ea8ff6b78a6508fdb87b0114bdb76274bbe2dbc24a1e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8c75e51-fb0e-6fae-ce97-700c17566768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_insert_of_mem {t : RBNode α} (ht : Balanced t c n) (h : v' ∈ t) :
    v' ∈ t.insert cmp v ∨ cmp v v' = .eq := by
  match e : zoom (cmp v) t with
  | (nil, p) =>
    let ⟨_, _, h₁, h₂⟩ := exists_insert_toList_zoom_nil ht e
    simp [← mem_toList, h₁] at h
    simp [← mem_toList, h₂]; cases h <;> simp [*]
  | (node .., p) =>
    let ⟨_, _, h₁, h₂⟩ := exists_insert_toList_zoom_node ht e
    simp [← mem_toList, h₁] at h
    simp [← mem_toList, h₂]; rcases h with h|h|h <;> simp [*]
    exact .inr (Path.zoom_zoomed₁ e)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
