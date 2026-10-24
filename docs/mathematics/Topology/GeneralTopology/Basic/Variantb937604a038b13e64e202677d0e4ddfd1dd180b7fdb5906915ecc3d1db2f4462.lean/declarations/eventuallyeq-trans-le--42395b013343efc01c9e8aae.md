# EventuallyEq.trans_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1680,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c763e7c-5492-b427-bd51-3d07e38d8707",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0e2cdf9-5269-1760-1ba3-9e7ef0009c5b",
  "kind": "theorem",
  "lexical_name": "EventuallyEq.trans_le",
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
  "slug": "eventuallyeq-trans-le--42395b013343efc01c9e8aae",
  "source": {
    "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1684,
    "line": 1680,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42395b013343efc01c9e8aaed6117d86a1bba7efe29799f0de1949bee29fe1f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0e2cdf9-5269-1760-1ba3-9e7ef0009c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1680–1684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyEq.trans_le (H₁ : f =ᶠ[l] g) (H₂ : g ≤ᶠ[l] h) : f ≤ᶠ[l] h :=
  H₁.le.trans H₂
#align filter.eventually_eq.trans_le Filter.EventuallyEq.trans_le

-- porting note: new instance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean#L1680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515ff2aaf33ed7f005571558e8864c9ea206c988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
