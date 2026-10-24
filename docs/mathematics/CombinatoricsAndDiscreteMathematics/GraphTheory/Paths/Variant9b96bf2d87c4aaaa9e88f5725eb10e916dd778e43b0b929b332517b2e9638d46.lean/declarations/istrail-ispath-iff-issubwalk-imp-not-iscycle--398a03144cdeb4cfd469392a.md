# IsTrail.isPath_iff_isSubwalk_imp_not_isCycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f7317b-fd95-adb5-8ee0-991af1851a1c",
  "kind": "theorem",
  "lexical_name": "IsTrail.isPath_iff_isSubwalk_imp_not_isCycle",
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
  "slug": "istrail-ispath-iff-issubwalk-imp-not-iscycle--398a03144cdeb4cfd469392a",
  "source": {
    "blob": "2805a5aa5e57327fc43cc550d1e9ea98840570ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398a03144cdeb4cfd469392ae749fa56cfb6d24c145e052421fe2c04aac93618",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f7317b-fd95-adb5-8ee0-991af1851a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTrail.isPath_iff_isSubwalk_imp_not_isCycle {u v} {p : G.Walk u v} (ht : p.IsTrail) :
    p.IsPath ↔ ∀ (v : V) (w : G.Walk v v), w.IsSubwalk p → ¬w.IsCycle := by
  refine ⟨by grind [isPath_iff_isSubwalk_imp_nil, IsCycle.not_nil], fun h ↦ ?_⟩
  classical
  match p with
  | .nil => simp
  | .cons hadj p =>
    have hp := isPath_iff_isSubwalk_imp_not_isCycle ht.of_cons |>.mpr (h · · <| ·.cons hadj)
    refine cons_isPath_iff .. |>.mpr ⟨hp, fun hup ↦ h u (p.takeUntil u hup |>.cons hadj) ?_ ?_⟩
    · rw [isSubwalk_iff_support_isInfix, support_cons, support_cons]
      exact (List.prefix_cons_inj u |>.mpr <| p.support_takeUntil_prefix_support hup).isInfix
    · refine cons_isCycle_iff .. |>.mpr ⟨hp.takeUntil hup, fun he ↦ ?_⟩
      exact ht.edges_nodup.notMem <| p.edges_takeUntil_subset_edges hup he

end Walk

/-! ### Type of paths -/

/-- The type for paths between two vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant9b96bf2d87c4aaaa9e88f5725eb10e916dd778e43b0b929b332517b2e9638d46.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2805a5aa5e57327fc43cc550d1e9ea98840570ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
