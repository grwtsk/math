# AffineIndependent.affineSpan_image_finset_eq_of_le_of_card_eq_finrank_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb3fb949-79d1-be63-d1a4-584cfe5dc408",
  "kind": "theorem",
  "lexical_name": "AffineIndependent.affineSpan_image_finset_eq_of_le_of_card_eq_finrank_add_one",
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
  "slug": "affineindependent-affinespan-image-finset-eq-of-le-of-card-eq-finrank-ad--84537cd024dac9e93b1db14f",
  "source": {
    "blob": "3b7e5dd2b9b5932210ea292d5e7500dac57ff83a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84537cd024dac9e93b1db14fd0249667a2f9fdc0518c4a3ef6963f1a8abf9232",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb3fb949-79d1-be63-d1a4-584cfe5dc408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineIndependent.affineSpan_image_finset_eq_of_le_of_card_eq_finrank_add_one
    [DecidableEq P] {p : ι → P}
    (hi : AffineIndependent k p) {s : Finset ι} {sp : AffineSubspace k P}
    [FiniteDimensional k sp.direction] (hle : affineSpan k (s.image p : Set P) ≤ sp)
    (hc : #s = finrank k sp.direction + 1) : affineSpan k (s.image p : Set P) = sp := by
  have hn : s.Nonempty := by
    rw [← Finset.card_pos, hc]
    apply Nat.succ_pos
  refine eq_of_direction_eq_of_nonempty_of_le ?_ ((hn.image p).to_set.affineSpan k) hle
  have hd := direction_le hle
  rw [direction_affineSpan] at hd ⊢
  exact hi.vectorSpan_image_finset_eq_of_le_of_card_eq_finrank_add_one hd hc

/-- If the `affineSpan` of a finite affinely independent family lies
in an affine subspace whose direction has dimension one less than its
cardinality, it equals that subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variantae12633834aaed09ccb45848ffb86ac6959dbeb8399110ac601a8bd574ccbb93.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7e5dd2b9b5932210ea292d5e7500dac57ff83a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
