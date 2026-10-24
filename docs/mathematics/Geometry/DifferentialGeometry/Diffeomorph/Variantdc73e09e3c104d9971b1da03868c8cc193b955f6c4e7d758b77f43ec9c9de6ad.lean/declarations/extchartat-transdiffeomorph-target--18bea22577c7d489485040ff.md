# extChartAt_transDiffeomorph_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "580997ba3ae378113e1ed2f2cf5d817c247fd0be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8448da2-6bf3-a61a-00c0-8d46eedd3483",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68d03190-7f8c-6f4b-bdde-a240e1d3a609",
  "kind": "theorem",
  "lexical_name": "extChartAt_transDiffeomorph_target",
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
  "slug": "extchartat-transdiffeomorph-target--18bea22577c7d489485040ff",
  "source": {
    "blob": "580997ba3ae378113e1ed2f2cf5d817c247fd0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 434,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18bea22577c7d489485040ff72a44e2bfeb1b5b4d5365381a931f51eedb8f8cf",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68d03190-7f8c-6f4b-bdde-a240e1d3a609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extChartAt_transDiffeomorph_target (x : M) :
    (extChartAt (I.transDiffeomorph e) x).target = e.symm ⁻¹' (extChartAt I x).target := by
  simp only [e.range_comp, preimage_preimage, mfld_simps]; rfl

end ModelWithCorners

namespace Diffeomorph

section

variable [NeZero n] (e : E ≃ₘ^n⟮𝓘(𝕜, E), 𝓘(𝕜, F)⟯ F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `580997ba3ae378113e1ed2f2cf5d817c247fd0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
