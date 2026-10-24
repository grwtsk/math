# sum_ownedPieces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa2335d0-2a29-911d-444c-4847de0c1e1d",
  "kind": "theorem",
  "lexical_name": "sum_ownedPieces",
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
  "slug": "sum-ownedpieces--d1083437b93eed24d2cfb347",
  "source": {
    "blob": "55fdef65b0085488cc8e652479bdc4660a5b8dda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1083437b93eed24d2cfb347e4132999d473a054ad4e4d928c188b7369b3ff5e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa2335d0-2a29-911d-444c-4847de0c1e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_ownedPieces [AddCommMonoid M] (A : Finset X) (C : Fin n → Finset X)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) (w : X → M) :
    ∑ x ∈ A, w x = ∑ i, ∑ x ∈ ownedPiece A C i, w x := by
  calc
    _ = ∑ x ∈ Finset.univ.biUnion (ownedPiece A C), w x := by
      rw [ownedPieces_reconstruct A C hcover]
    _ = _ := by
      apply Finset.sum_biUnion
      intro i _ j _ hij
      exact ownedPiece_disjoint A C i j hij

/-- Different ordered covers may change owners, but preserve the total readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55fdef65b0085488cc8e652479bdc4660a5b8dda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
