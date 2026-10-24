# eball_contractible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41eeb39b-d52a-88fc-60df-22a94690f0fd",
  "kind": "theorem",
  "lexical_name": "eball_contractible",
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
  "slug": "eball-contractible--d3a998f4cd2d9fa3358bdf71",
  "source": {
    "blob": "b7a0f499c18eb5537fdf18a26419d707d52c7841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3a998f4cd2d9fa3358bdf7144d2402b5bc061d29463ff0c50bac09999727bd4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41eeb39b-d52a-88fc-60df-22a94690f0fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eball_contractible {x : E} {r : ENNReal} (hr : 0 < r) :
    ContractibleSpace (EMetric.ball x r) := by
  cases r with
  | top =>
    rw [eball_top_eq_univ, (Homeomorph.Set.univ E).contractibleSpace_iff]
    exact RealTopologicalVectorSpace.contractibleSpace
  | coe r =>
    rw [emetric_ball_nnreal]
    apply ball_contractible
    simpa using hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a0f499c18eb5537fdf18a26419d707d52c7841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
