# IsUltra.isTransitiveRel_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55521a14-0253-de8b-e17a-f047551c0061",
  "kind": "lemma",
  "lexical_name": "IsUltra.isTransitiveRel_ball",
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
  "slug": "isultra-istransitiverel-ball--c390d9faef539f46c1474a0e",
  "source": {
    "blob": "60dda9814686c32c23fd40e909859b4066377d32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 214,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c390d9faef539f46c1474a0e03695dccb19599009394a7adf8744d64a53337f5",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55521a14-0253-de8b-e17a-f047551c0061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUltra.isTransitiveRel_ball [Add R] [Zero R] [LinearOrder R] (d : PseudoMetric X R)
    [d.IsUltra] {ε : R} :
    IsTransitiveRel {xy | d xy.1 xy.2 < ε} :=
  fun _ _ _ hxy hyz ↦ le_sup.trans_lt (max_lt hxy hyz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant95a9ad5db018e792fdac6e1fa6b029a7d718717a792f89ef9473e5c2bb6e578e.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60dda9814686c32c23fd40e909859b4066377d32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
