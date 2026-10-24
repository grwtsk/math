# nonempty_limitCone_of_compact_t2_cofiltered_system

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dd259f5-0fc8-1e9e-dd48-f3cf6c4a8a20",
  "kind": "theorem",
  "lexical_name": "nonempty_limitCone_of_compact_t2_cofiltered_system",
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
  "slug": "nonempty-limitcone-of-compact-t2-cofiltered-system--f5fbdcf2ed10966acca50f73",
  "source": {
    "blob": "5a7493df0c2cfa5c8b11d650b44b0bf08610e728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 119,
    "path": "GRWTSK/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5fbdcf2ed10966acca50f7395c1e057eb48c20b237ede526d34f10ee17d7495",
  "verification": {
    "reference": "docs/verification/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd259f5-0fc8-1e9e-dd48-f3cf6c4a8a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_limitCone_of_compact_t2_cofiltered_system (F : J ⥤ TopCat.{max v u})
    [IsCofilteredOrEmpty J]
    [∀ j : J, Nonempty (F.obj j)] [∀ j : J, CompactSpace (F.obj j)] [∀ j : J, T2Space (F.obj j)] :
    Nonempty (TopCat.limitCone F).pt := by
  classical
  obtain ⟨u, hu⟩ :=
    IsCompact.nonempty_iInter_of_directed_nonempty_isCompact_isClosed (fun G => partialSections F _)
      (partialSections.directed F) (fun G => partialSections.nonempty F _)
      (fun G => IsClosed.isCompact (partialSections.closed F _)) fun G =>
      partialSections.closed F _
  use u
  intro X Y f
  let G : FiniteDiagram J :=
    ⟨{X, Y},
      {⟨X, Y, by simp only [true_or, eq_self_iff_true, Finset.mem_insert], by
          simp only [eq_self_iff_true, or_true, Finset.mem_insert, Finset.mem_singleton], f⟩}⟩
  exact hu _ ⟨G, rfl⟩ (Finset.mem_singleton_self _)

end TopologicalKonig

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7493df0c2cfa5c8b11d650b44b0bf08610e728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
