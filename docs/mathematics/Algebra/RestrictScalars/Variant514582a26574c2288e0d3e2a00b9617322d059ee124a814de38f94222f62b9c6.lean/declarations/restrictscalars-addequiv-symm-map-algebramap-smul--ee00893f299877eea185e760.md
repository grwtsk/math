# RestrictScalars.addEquiv_symm_map_algebraMap_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de316aeb-c042-404f-ec1a-eea22260745f",
  "kind": "theorem",
  "lexical_name": "RestrictScalars.addEquiv_symm_map_algebraMap_smul",
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
  "slug": "restrictscalars-addequiv-symm-map-algebramap-smul--ee00893f299877eea185e760",
  "source": {
    "blob": "36f7e819514ac275bef80ea793308e3f9576751b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 177,
    "path": "GRWTSK/Algebra/RestrictScalars/Variant514582a26574c2288e0d3e2a00b9617322d059ee124a814de38f94222f62b9c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee00893f299877eea185e760697e6e254bc6e5fdec895942f6565810f202b28d",
  "verification": {
    "reference": "docs/verification/Algebra/RestrictScalars/Variant514582a26574c2288e0d3e2a00b9617322d059ee124a814de38f94222f62b9c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de316aeb-c042-404f-ec1a-eea22260745f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RestrictScalars.addEquiv_symm_map_algebraMap_smul (r : R) (x : M) :
    (RestrictScalars.addEquiv R S M).symm (algebraMap R S r • x) =
      r • (RestrictScalars.addEquiv R S M).symm x :=
  rfl
#align restrict_scalars.add_equiv_symm_map_algebra_map_smul RestrictScalars.addEquiv_symm_map_algebraMap_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RestrictScalars/Variant514582a26574c2288e0d3e2a00b9617322d059ee124a814de38f94222f62b9c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RestrictScalars/Variant514582a26574c2288e0d3e2a00b9617322d059ee124a814de38f94222f62b9c6.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f7e819514ac275bef80ea793308e3f9576751b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
