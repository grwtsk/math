# isTopologicalGroup_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e5033e6-661b-31e8-611f-5db2f180bbf0",
  "kind": "theorem",
  "lexical_name": "isTopologicalGroup_inf",
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
  "slug": "istopologicalgroup-inf--781402db872db2cffc541c2a",
  "source": {
    "blob": "3de600b6955f74106ab6e7089f9b0c12cd0ec43f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 454,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781402db872db2cffc541c2a27deb9d7c042eb0665db73c827354f501486cfc5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e5033e6-661b-31e8-611f-5db2f180bbf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalGroup_inf {t₁ t₂ : TopologicalSpace G} (h₁ : @IsTopologicalGroup G t₁ _)
    (h₂ : @IsTopologicalGroup G t₂ _) : @IsTopologicalGroup G (t₁ ⊓ t₂) _ := by
  rw [inf_eq_iInf]
  refine isTopologicalGroup_iInf fun b => ?_
  cases b <;> assumption

@[to_additive (attr := deprecated (since := "2026-08-21"))]
alias topologicalGroup_inf := isTopologicalGroup_inf

end LatticeOps
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de600b6955f74106ab6e7089f9b0c12cd0ec43f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
