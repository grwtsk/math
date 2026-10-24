# angle_eq_iff_oangle_eq_neg_of_sign_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ffcc8a4-8bfc-83b9-7ff9-327e10e564b7",
  "kind": "lemma",
  "lexical_name": "angle_eq_iff_oangle_eq_neg_of_sign_eq_neg",
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
  "slug": "angle-eq-iff-oangle-eq-neg-of-sign-eq-neg--3cfbf35d00f465b177ffa0e1",
  "source": {
    "blob": "90e9bd1c4a1c866672c2bd7f790e5b1bb9fad448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 683,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cfbf35d00f465b177ffa0e106d20d813807e1c17801c764878a2eaa17cd159b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ffcc8a4-8bfc-83b9-7ff9-327e10e564b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_eq_iff_oangle_eq_neg_of_sign_eq_neg {w x y z : V} (hw : w ≠ 0) (hx : x ≠ 0)
    (hy : y ≠ 0) (hz : z ≠ 0) (hs : (o.oangle w x).sign = -(o.oangle y z).sign) :
    InnerProductGeometry.angle w x = InnerProductGeometry.angle y z ↔
      o.oangle w x = -o.oangle y z := by
  rw [← oangle_rev]
  rw [← Real.Angle.sign_neg, ← oangle_rev] at hs
  nth_rw 2 [InnerProductGeometry.angle_comm]
  exact o.angle_eq_iff_oangle_eq_of_sign_eq hw hx hz hy hs

/-- The oriented angle between two vectors equals the unoriented angle if the sign is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90e9bd1c4a1c866672c2bd7f790e5b1bb9fad448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
