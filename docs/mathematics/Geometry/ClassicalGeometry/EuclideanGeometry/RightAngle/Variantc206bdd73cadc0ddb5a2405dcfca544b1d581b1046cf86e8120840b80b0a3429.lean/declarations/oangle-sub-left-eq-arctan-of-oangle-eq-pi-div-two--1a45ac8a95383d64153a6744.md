# oangle_sub_left_eq_arctan_of_oangle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ca1f21c9b8128a1645700549e1243f412dc15da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1451b881-bb35-b665-bcad-f721a880dd94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:226c2f47-e8eb-a25a-64da-349211799d38",
  "kind": "theorem",
  "lexical_name": "oangle_sub_left_eq_arctan_of_oangle_eq_pi_div_two",
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
  "slug": "oangle-sub-left-eq-arctan-of-oangle-eq-pi-div-two--1a45ac8a95383d64153a6744",
  "source": {
    "blob": "8ca1f21c9b8128a1645700549e1243f412dc15da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 281,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a45ac8a95383d64153a6744b89f54d69e32e2337807bada87262407f78d6877",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:226c2f47-e8eb-a25a-64da-349211799d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_sub_left_eq_arctan_of_oangle_eq_pi_div_two {x y : V} (h : o.oangle x y = ↑(π / 2)) :
    o.oangle (x - y) x = Real.arctan (‖y‖ / ‖x‖) := by
  rw [← neg_inj, oangle_rev, ← oangle_neg_orientation_eq_neg, neg_inj] at h ⊢
  exact (-o).oangle_sub_right_eq_arctan_of_oangle_eq_pi_div_two h

/-- The cosine of an angle in a right-angled triangle as a ratio of sides, version subtracting
vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca1f21c9b8128a1645700549e1243f412dc15da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
