# mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b32a6df1-ba72-fd3e-afd3-b82d358fa166",
  "kind": "theorem",
  "lexical_name": "mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset",
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
  "slug": "mem-nhdsge-iff-exists-mem-ioc-ico-subset--dd7c9ab1bfb453afb4d8be7c",
  "source": {
    "blob": "8093ca23c75f05af56cd50d9d3825ee3e4db6333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7c9ab1bfb453afb4d8be7cf7ffabbf84d9628e1e85b7571c1e2becd7e4142a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b32a6df1-ba72-fd3e-afd3-b82d358fa166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset {a u' : α} {s : Set α} (hu' : a < u') :
    s ∈ 𝓝[≥] a ↔ ∃ u ∈ Ioc a u', Ico a u ⊆ s :=
  (TFAE_mem_nhdsGE hu' s).out 0 3 (by norm_num) (by norm_num)

@[deprecated (since := "2024-12-22")]
alias mem_nhdsWithin_Ici_iff_exists_mem_Ioc_Ico_subset := mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset

/-- A set is a neighborhood of `a` within `[a, +∞)` if and only if it contains an interval `[a, u)`
with `a < u < u'`, provided `a` is not a top element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8093ca23c75f05af56cd50d9d3825ee3e4db6333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
