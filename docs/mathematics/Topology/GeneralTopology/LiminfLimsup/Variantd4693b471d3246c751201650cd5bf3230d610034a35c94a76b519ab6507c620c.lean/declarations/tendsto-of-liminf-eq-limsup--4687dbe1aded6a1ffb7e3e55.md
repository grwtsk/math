# tendsto_of_liminf_eq_limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6078470c-ab2c-b36a-1ff5-8fce57a90c97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41570534-85a3-5339-82f5-050de097b8bb",
  "kind": "theorem",
  "lexical_name": "tendsto_of_liminf_eq_limsup",
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
  "slug": "tendsto-of-liminf-eq-limsup--4687dbe1aded6a1ffb7e3e55",
  "source": {
    "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4687dbe1aded6a1ffb7e3e558f3b76fa01dd9622adad357382e5f8f70fea197b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41570534-85a3-5339-82f5-050de097b8bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_liminf_eq_limsup {f : Filter β} {u : β → α} {a : α} (hinf : liminf u f = a)
    (hsup : limsup u f = a) (h : f.IsBoundedUnder (· ≤ ·) u := by isBoundedDefault)
    (h' : f.IsBoundedUnder (· ≥ ·) u := by isBoundedDefault) : Tendsto u f (𝓝 a) :=
  le_nhds_of_limsSup_eq_limsInf h h' hsup hinf
#align tendsto_of_liminf_eq_limsup tendsto_of_liminf_eq_limsup

/-- If a number `a` is less than or equal to the `liminf` of a function `f` at some filter
and is greater than or equal to the `limsup` of `f`, then `f` tends to `a` along this filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
