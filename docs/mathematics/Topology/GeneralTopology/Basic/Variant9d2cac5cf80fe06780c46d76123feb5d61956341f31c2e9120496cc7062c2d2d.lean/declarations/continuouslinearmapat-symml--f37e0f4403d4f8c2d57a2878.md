# continuousLinearMapAt_symmL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fca6be30-7e71-915a-64d7-8bfa2e029592",
  "kind": "theorem",
  "lexical_name": "continuousLinearMapAt_symmL",
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
  "slug": "continuouslinearmapat-symml--f37e0f4403d4f8c2d57a2878",
  "source": {
    "blob": "88323637acd65639e883acfc9d0b58f6cd1a4088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 472,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37e0f4403d4f8c2d57a2878913ba42f089badec6b7585bc2c15db56cf144875",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca6be30-7e71-915a-64d7-8bfa2e029592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousLinearMapAt_symmL (e : Trivialization F (π F E)) [e.IsLinear R] {b : B}
    (hb : b ∈ e.baseSet) (y : F) : e.continuousLinearMapAt R b (e.symmL R b y) = y :=
  e.linearMapAt_symmₗ hb y
set_option linter.uppercaseLean3 false in
#align trivialization.continuous_linear_map_at_symmL Trivialization.continuousLinearMapAt_symmL

variable (R)

/-- In a vector bundle, a trivialization in the fiber (which is a priori only linear)
is in fact a continuous linear equiv between the fibers and the model fiber. -/
@[simps (config := { fullyApplied := false }) apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d2cac5cf80fe06780c46d76123feb5d61956341f31c2e9120496cc7062c2d2d.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88323637acd65639e883acfc9d0b58f6cd1a4088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
