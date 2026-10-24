# cycleGraph_isContained_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0521edef-4352-a5d0-264d-f8ed0b60d651",
  "kind": "lemma",
  "lexical_name": "cycleGraph_isContained_iff",
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
  "slug": "cyclegraph-iscontained-iff--879b80aff735e8ac5e442dca",
  "source": {
    "blob": "6682f24503a9cf51472a668d1c96f89f39c35978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879b80aff735e8ac5e442dcaff37dc5ac040aabbd857a98df467140291495c28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0521edef-4352-a5d0-264d-f8ed0b60d651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cycleGraph_isContained_iff {n : ℕ} (hn : 2 < n) :
    cycleGraph n ⊑ G ↔ ∃ (v : V) (p : G.Walk v v), p.IsCycle ∧ p.length = n := by
  have hn' : n - 3 + 3 = n := by lia
  refine ⟨fun ⟨h⟩ ↦ ⟨_, _, cycleGraph.isCycle_cycle.map (hn' ▸ h).injective, by simp [hn']⟩, ?_⟩
  intro ⟨a, p, hp₁, hp₂⟩
  refine ⟨⟨fun n ↦ p.support[n.succ]'(by grind [not_nil_iff_lt_length]), ?_⟩, ?_⟩
  · intro ⟨x, hx⟩ ⟨y, hy⟩ hab
    wlog hle : x > y
    · have hne : x ≠ y := by simpa using hab.ne
      exact this hn hn' a p hp₁ hp₂ y hy x hx hab.symm (by lia) |>.symm
    rcases cycleGraph_adj'.mp hab with hab | hab
    · simp_rw [show x = y + 1 by grind [Fin.sub_val_of_le]]
      exact p.isChain_adj_support.getElem _ _ |>.symm
    · rw [Fin.coe_sub_iff_lt.mpr hle] at hab
      simp_rw [show x = n - 1 by lia, show y = 0 by lia, Fin.succ_mk, show n - 1 + 1 = n by lia]
      simp [← hp₂, hp₁.not_nil]
  · have hlen : p.tail.support.length = n := by grind [length_tail_add_one]
    have (m : Fin n) : p.support[m.succ]'(by grind) = p.tail.support[m] := by simp [hp₁.not_nil]
    simp_rw [this]
    exact hlen ▸ (isPath_iff_injective_get_support _).mp hp₁.isPath_tail

end IsContained

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6682f24503a9cf51472a668d1c96f89f39c35978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
