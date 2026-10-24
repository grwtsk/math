# exists_compact_closed_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c9bda28-b3fa-cd20-880c-d87a8c6a39c9",
  "kind": "theorem",
  "lexical_name": "exists_compact_closed_between",
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
  "slug": "exists-compact-closed-between--a0d36a4baed790b70decf022",
  "source": {
    "blob": "71c36b384d864adad1815ba38d0f8e3435e701eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 354,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d36a4baed790b70decf0229c038ba55ccdb9362cb150a202912a6e3222c458",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c9bda28-b3fa-cd20-880c-d87a8c6a39c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compact_closed_between [LocallyCompactSpace X] [RegularSpace X]
    {K U : Set X} (hK : IsCompact K) (hU : IsOpen U) (h_KU : K ⊆ U) :
    ∃ L, IsCompact L ∧ IsClosed L ∧ K ⊆ interior L ∧ L ⊆ U :=
  let ⟨L, L_comp, KL, LU⟩ := exists_compact_between hK hU h_KU
  ⟨closure L, L_comp.closure, isClosed_closure, KL.trans <| interior_mono subset_closure,
    L_comp.closure_subset_of_isOpen hU LU⟩

/-- In a (possibly non-Hausdorff) locally compact regular space, for every compact set `K`,
`𝓝ˢ K` has a basis consisting of closed compact sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c36b384d864adad1815ba38d0f8e3435e701eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
