# ofPermHom_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed543361-617e-b508-ca9b-9afe7a79c8d4",
  "kind": "theorem",
  "lexical_name": "ofPermHom_support",
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
  "slug": "ofpermhom-support--1351d11d9013e725c6f285a5",
  "source": {
    "blob": "d69eedbbaa6aea3acbc9778d6e1be02643b802a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 371,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1351d11d9013e725c6f285a5d217610b6183cd9a18d3850bab3c1b75f1a11be7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed543361-617e-b508-ca9b-9afe7a79c8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPermHom_support :
    (ofPermHom a τ).support =
      (τ : Perm g.cycleFactorsFinset).support.biUnion (fun c ↦ c.val.support) := by
  ext x
  simp only [mem_support, Finset.mem_biUnion, ofPermHom_apply]
  rcases mem_fixedPoints_or_exists_zpow_eq a x with (hx | ⟨c, hc, m, hm⟩)
  · simp only [ofPermHomFun_apply_of_mem_fixedPoints a τ hx, ne_eq, not_true_eq_false, false_iff,
      ← mem_support]
    rintro ⟨c, -, hc⟩
    rw [Function.mem_fixedPoints_iff] at hx
    exact mem_support.mp ((mem_cycleFactorsFinset_support_le c.prop) hc) hx
  · rw [ofPermHomFun_apply_of_cycleOf_mem a τ hc hm]
    conv_lhs => rw [← hm]
    rw [(g ^ m).injective.ne_iff, a.injective.ne_iff, not_iff_comm]
    by_cases H : (τ : Perm g.cycleFactorsFinset) c = c
    · simp only [H, iff_true]
      push Not
      intro d hd
      rw [← notMem_support]
      have := g.cycleFactorsFinset_pairwise_disjoint c.prop d.prop
      rw [disjoint_iff_disjoint_support, Finset.disjoint_left] at this
      exact this (by lia) hc
    · simpa only [H, iff_false, not_not] using ⟨c, H, mem_support.mp hc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d69eedbbaa6aea3acbc9778d6e1be02643b802a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
