# HasStrictDerivAt.clm_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1bcece5-2d32-967e-dc7e-502e918a738e",
  "kind": "theorem",
  "lexical_name": "HasStrictDerivAt.clm_comp",
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
  "slug": "hasstrictderivat-clm-comp--405959323a340fc915d2e02a",
  "source": {
    "blob": "21fe3d7745cb66044d8a522976e7c7426278158c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 444,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variantbf98928faeb79c7f00ab225e79fafbbd0ea7b743e2f461c70e7263d38868c27f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:405959323a340fc915d2e02a359265dbae3fff403eab6d15952a07f47612822c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variantbf98928faeb79c7f00ab225e79fafbbd0ea7b743e2f461c70e7263d38868c27f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1bcece5-2d32-967e-dc7e-502e918a738e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasStrictDerivAt.clm_comp (hc : HasStrictDerivAt c c' x) (hd : HasStrictDerivAt d d' x) :
    HasStrictDerivAt (fun y => (c y).comp (d y)) (c'.comp (d x) + (c x).comp d') x := by
  have := (hc.hasStrictFDerivAt.clm_comp hd.hasStrictFDerivAt).hasStrictDerivAt
  rwa [add_apply, comp_apply, comp_apply, smulRight_apply, smulRight_apply, one_apply, one_smul,
    one_smul, add_comm] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variantbf98928faeb79c7f00ab225e79fafbbd0ea7b743e2f461c70e7263d38868c27f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variantbf98928faeb79c7f00ab225e79fafbbd0ea7b743e2f461c70e7263d38868c27f.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21fe3d7745cb66044d8a522976e7c7426278158c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
