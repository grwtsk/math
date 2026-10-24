# apply_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8623f738-24d4-e861-5c9c-adf57fb43d9b",
  "kind": "theorem",
  "lexical_name": "apply_symm_apply",
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
  "slug": "apply-symm-apply--42981c26c2ae6140a8e50095",
  "source": {
    "blob": "1890e9185c034383282ffa84639c6da12d433f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 83,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42981c26c2ae6140a8e50095cc45f4ea57b44bf358bbaef7b15a6ae981532033",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8623f738-24d4-e861-5c9c-adf57fb43d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem apply_symm_apply (e : X ≃ᵈ Y) (x : Y) : e (e.symm x) = x := e.right_inv x
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1890e9185c034383282ffa84639c6da12d433f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
