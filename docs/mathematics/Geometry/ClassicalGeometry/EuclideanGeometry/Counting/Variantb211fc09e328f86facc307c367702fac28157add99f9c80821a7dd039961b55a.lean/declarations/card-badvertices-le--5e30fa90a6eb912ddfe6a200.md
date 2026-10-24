# card_badVertices_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:385bd0e9-cb96-ecfe-a9a4-c927b49f9c3e",
  "kind": "lemma",
  "lexical_name": "card_badVertices_le",
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
  "slug": "card-badvertices-le--5e30fa90a6eb912ddfe6a200",
  "source": {
    "blob": "c22ec81f13ab28b30e15946042b4f29a770bb48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e30fa90a6eb912ddfe6a20019c7f37c5e8ecb63080df73f0f80708e66ab7ae8",
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

Occurrence: `result:385bd0e9-cb96-ecfe-a9a4-c927b49f9c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma card_badVertices_le (dst : 2 * ε ≤ G.edgeDensity s t) (hst : G.IsUniform ε s t) :
    #(badVertices G ε s t) ≤ #s * ε := by
  have hε : ε ≤ 1 := (le_rfl.trans <| le_mul_of_one_le_left hst.pos.le (by norm_num)).trans
    (dst.trans <| by exact_mod_cast edgeDensity_le_one _ _ _)
  by_contra! h
  have : |(G.edgeDensity (badVertices G ε s t) t - G.edgeDensity s t : ℝ)| < ε :=
    hst (filter_subset _ _) Subset.rfl h.le (mul_le_of_le_one_right (Nat.cast_nonneg _) hε)
  rw [abs_sub_lt_iff] at this
  linarith [G.edgeDensity_badVertices_le hst.pos.le dst]

/-- A subset of the triangles constructed in a weird way to make them easy to count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22ec81f13ab28b30e15946042b4f29a770bb48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
