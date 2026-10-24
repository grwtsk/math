# disjoint_pi_univ_Ioc_update_left_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24e3e8bf-c168-cce8-4a70-8e836f560fb1",
  "kind": "theorem",
  "lexical_name": "disjoint_pi_univ_Ioc_update_left_right",
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
  "slug": "disjoint-pi-univ-ioc-update-left-right--048c524c9045a764021167df",
  "source": {
    "blob": "6692388d7aea3b8c6f933168f1b8defd7a9e036b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:048c524c9045a764021167df97e51bd86b58a02678093a7bbdaf8c7ae70ce6fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e3e8bf-c168-cce8-4a70-8e836f560fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_pi_univ_Ioc_update_left_right {x y : ∀ i, α i} {i₀ : ι} {m : α i₀} :
    Disjoint (pi univ fun i ↦ Ioc (x i) (update y i₀ m i))
    (pi univ fun i ↦ Ioc (update x i₀ m i) (y i)) := by
  rw [disjoint_left]
  rintro z h₁ h₂
  refine' (h₁ i₀ (mem_univ _)).2.not_lt _
  simpa only [Function.update_same] using (h₂ i₀ (mem_univ _)).1
#align set.disjoint_pi_univ_Ioc_update_left_right Set.disjoint_pi_univ_Ioc_update_left_right

end PiPreorder

section PiPartialOrder

variable [DecidableEq ι] [∀ i, PartialOrder (α i)]

-- porting note: Dot notation on `Function.update` broke
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6692388d7aea3b8c6f933168f1b8defd7a9e036b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
