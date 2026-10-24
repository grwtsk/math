# card_interedges_badVertices_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a48f549-2bf8-1685-b85c-c0f59f2efc5d",
  "kind": "lemma",
  "lexical_name": "card_interedges_badVertices_le",
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
  "slug": "card-interedges-badvertices-le--51787b1263dcf989554d011b",
  "source": {
    "blob": "c22ec81f13ab28b30e15946042b4f29a770bb48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51787b1263dcf989554d011ba3372582cd42c124320a7bcc9aafbb5b4fd735c9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a48f549-2bf8-1685-b85c-c0f59f2efc5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma card_interedges_badVertices_le :
    #(Rel.interedges G.Adj (badVertices G ε s t) t) ≤
      #(badVertices G ε s t) * #t * (G.edgeDensity s t - ε) := by
  classical
  refine (Nat.cast_le.2 <| (card_le_card <| subset_of_eq (Rel.interedges_eq_biUnion _)).trans
    card_biUnion_le).trans ?_
  simp_rw [Nat.cast_sum, card_map, ← nsmul_eq_mul, smul_mul_assoc, mul_comm (#t : ℝ)]
  exact sum_le_card_nsmul _ _ _ fun x hx ↦ (mem_filter.1 hx).2.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22ec81f13ab28b30e15946042b4f29a770bb48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
