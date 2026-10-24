# IsCompact.extremePoints_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f81911c0-6a1c-c07e-1852-69c47979451a",
  "kind": "theorem",
  "lexical_name": "IsCompact.extremePoints_nonempty",
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
  "slug": "iscompact-extremepoints-nonempty--c0ecc8d7efb861b43e55fd21",
  "source": {
    "blob": "93d74543237d7885c87bcf02ea998eaf432068f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0ecc8d7efb861b43e55fd21c56a79905348ed5b446ccd1acdbffa88c72da8bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f81911c0-6a1c-c07e-1852-69c47979451a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.extremePoints_nonempty (hscomp : IsCompact s) (hsnemp : s.Nonempty) :
    (s.extremePoints ℝ).Nonempty := by
  let S : Set (Set E) := { t | t.Nonempty ∧ IsClosed t ∧ IsExtreme ℝ s t }
  rsuffices ⟨t, ht⟩ : ∃ t, Minimal (· ∈ S) t
  · obtain ⟨⟨x,hxt⟩, htclos, hst⟩ := ht.prop
    refine ⟨x, IsExtreme.mem_extremePoints ?_⟩
    rwa [← eq_singleton_iff_unique_mem.2 ⟨hxt, fun y hyB => ?_⟩]
    by_contra hyx
    obtain ⟨l, hl⟩ := geometric_hahn_banach_point_point hyx
    obtain ⟨z, hzt, hz⟩ :=
      (hscomp.of_isClosed_subset htclos hst.1).exists_isMaxOn ⟨x, hxt⟩
        l.continuous.continuousOn
    have h : IsExposed ℝ t ({ z ∈ t | ∀ w ∈ t, l w ≤ l z }) := fun _ => ⟨l, rfl⟩
    rw [ht.eq_of_ge (y := ({ z ∈ t | ∀ w ∈ t, l w ≤ l z }))
      ⟨⟨z, hzt, hz⟩, h.isClosed htclos, hst.trans h.isExtreme⟩ (t.sep_subset _)] at hyB
    exact hl.not_le (hyB.2 x hxt)
  refine zorn_superset _ fun F hFS hF => ?_
  obtain rfl | hFnemp := F.eq_empty_or_nonempty
  · exact ⟨s, ⟨hsnemp, hscomp.isClosed, IsExtreme.rfl⟩, fun _ => False.elim⟩
  refine ⟨⋂₀ F, ⟨?_, isClosed_sInter fun t ht => (hFS ht).2.1,
    isExtreme_sInter hFnemp fun t ht => (hFS ht).2.2⟩, fun t ht => sInter_subset_of_mem ht⟩
  haveI : Nonempty (↥F) := hFnemp.to_subtype
  rw [sInter_eq_iInter]
  refine IsCompact.nonempty_iInter_of_directed_nonempty_isCompact_isClosed _ (fun t u => ?_)
    (fun t => (hFS t.mem).1)
    (fun t => hscomp.of_isClosed_subset (hFS t.mem).2.1 (hFS t.mem).2.2.1) fun t =>
      (hFS t.mem).2.1
  obtain htu | hut := hF.total t.mem u.mem
  exacts [⟨t, Subset.rfl, htu⟩, ⟨u, hut, Subset.rfl⟩]

/-- **Krein-Milman theorem**: In a LCTVS, any compact convex set is the closure of the convex hull
    of its extreme points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d74543237d7885c87bcf02ea998eaf432068f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
