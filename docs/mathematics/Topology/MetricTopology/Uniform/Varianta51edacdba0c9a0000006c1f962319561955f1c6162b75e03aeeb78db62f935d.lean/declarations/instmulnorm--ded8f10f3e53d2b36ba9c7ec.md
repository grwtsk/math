# instMulNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42fbf1f4ad866388712bd3675806320de0828c5962455a676601fc852b588e9b",
  "kind": "instance",
  "lexical_name": "instMulNorm",
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
  "slug": "instmulnorm--ded8f10f3e53d2b36ba9c7ec",
  "source": {
    "blob": "569b81b580ee6f34a986f0dbae8f5100eaaad0e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 394,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ded8f10f3e53d2b36ba9c7ec05462f02c679bac42214b15869f1628f68900604",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42fbf1f4ad866388712bd3675806320de0828c5962455a676601fc852b588e9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMulNorm : Norm (SeparationQuotient E) where
  norm := lift Norm.norm fun _ _ h => h.norm_eq_norm'

set_option linter.docPrime false in
@[to_additive (attr := simp) norm_mk]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569b81b580ee6f34a986f0dbae8f5100eaaad0e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
