# Filter.EventuallyEq.mfderivWithin_eq_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e114405e3e3ef1ec7390e69425e52924716f306c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1073,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d13c659-c90f-fc07-b7b7-e607351fa9ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b9b4c8d-6def-4d6c-0129-02a708741457",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.mfderivWithin_eq_of_mem",
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
  "slug": "filter-eventuallyeq-mfderivwithin-eq-of-mem--30057f379a99609ccefb89e3",
  "source": {
    "blob": "e114405e3e3ef1ec7390e69425e52924716f306c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1078,
    "line": 1073,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30057f379a99609ccefb89e3bf2f0b81dd9fb7b90dc73cd9d79ef5f0ea77eabf",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b9b4c8d-6def-4d6c-0129-02a708741457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1073–1078.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.mfderivWithin_eq_of_mem (hL : f₁ =ᶠ[𝓝[s] x] f) (hx : x ∈ s) :
    mfderiv[s] f₁ x =
      (tangentSpaceCast I' (f x) (f₁ x) : TangentSpace I' (f x) →L[𝕜] TangentSpace I' (f₁ x))
        ∘L mfderiv[s] f x :=
  hL.mfderivWithin_eq (mem_of_mem_nhdsWithin hx hL :)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean#L1073).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e114405e3e3ef1ec7390e69425e52924716f306c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
