# eventuallyEq_toIcoDiv_nhdsLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf8b5162-bcc5-b9de-fa71-d47b6cb5a790",
  "kind": "theorem",
  "lexical_name": "eventuallyEq_toIcoDiv_nhdsLT",
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
  "slug": "eventuallyeq-toicodiv-nhdslt--881055009735602b02c9d19f",
  "source": {
    "blob": "dc71366f4c55aaf40d5382f07cce3231dc3986f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:881055009735602b02c9d19f43706e86e1b233d9ebbac4f0785cebd0920d8343",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8b5162-bcc5-b9de-fa71-d47b6cb5a790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventuallyEq_toIcoDiv_nhdsLT : toIcoDiv hp a =ᶠ[𝓝[<] x] fun _ ↦ toIocDiv hp a x := by
  simp only [Filter.EventuallyEq, toIcoDiv_eq_iff, sub_mem_Ico_iff_left]
  apply Ico_mem_nhdsLT_of_mem
  rw [← sub_mem_Ioc_iff_left, ← toIocDiv_eq_iff]

/-- At every point `x`, for all `y > x` sufficiently close to `x`,
we have `toIocDiv hp a y = toIcoDiv hp a x`.

Note that we use different functions on the LHS and on the RHS.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc71366f4c55aaf40d5382f07cce3231dc3986f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
