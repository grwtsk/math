# LocalSubring.exists_le_valuationSubring_of_isIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3fe0fea-6ee9-1624-0273-56d1d7cd8145",
  "kind": "lemma",
  "lexical_name": "LocalSubring.exists_le_valuationSubring_of_isIntegrallyClosedIn",
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
  "slug": "localsubring-exists-le-valuationsubring-of-isintegrallyclosedin--e4e3d4bccd4611de949e8fb1",
  "source": {
    "blob": "8799df0564fc3ad2e388effbfe78be11707c5feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 175,
    "path": "GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e3d4bccd4611de949e8fb1954796e941f6fcd4af4a3bdda8e93c9f329d6de4",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fe0fea-6ee9-1624-0273-56d1d7cd8145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[stacks 090P "part (2)"] lemma LocalSubring.exists_le_valuationSubring_of_isIntegrallyClosedIn
    {x : K} {R : LocalSubring K} (hxR : x ∉ R.toSubring) [IsIntegrallyClosedIn R.toSubring K] :
    ∃ V : ValuationSubring K, R ≤ V.toLocalSubring ∧ x ∉ V := by
  obtain rfl | hx0 := eq_or_ne x 0
  · exact (hxR R.toSubring.zero_mem).elim
  let := invertibleOfNonzero hx0
  let B := R.toSubring[x⁻¹]
  let xinv : B.toSubring := ⟨x⁻¹, subset_adjoin rfl⟩
  have : (maximalIdeal R.toSubring).map (algebraMap _ B) + .span {xinv} ≠ ⊤ := fun eq ↦ hxR <|
    have ⟨p, hp, hpx⟩ := exists_aeval_invOf_eq_zero_of_idealMap_adjoin_sup_span_eq_top _ _
      (maximalIdeal.isMaximal R.toSubring).ne_top eq
    have H : IsUnit p.leadingCoeff := of_not_not fun h ↦ by simpa using sub_mem h hp
    (Subring.isIntegrallyClosedIn_iff).mp ‹_›
      ⟨.C H.unit⁻¹.1 * p, by simp [Polynomial.Monic], by simpa using .inr hpx⟩
  have ⟨V, hV⟩ := Ideal.image_subset_nonunits_valuationSubring (A := B.toSubring) _ this
  refine ⟨V, ⟨fun r hr ↦ hV.1 (B.algebraMap_mem ⟨r, hr⟩),
    ((local_hom_TFAE _).out 4 1).mp fun r hr ↦ ?_⟩, (V.inv_mem_nonunits_iff.mp <|
      hV.2 ⟨_, le_add_self (α := Ideal B) (Ideal.subset_span rfl), rfl⟩).resolve_left hx0⟩
  rw [← V.image_maximalIdeal] at hV
  obtain ⟨⟨r, _⟩, hr, rfl⟩ := hV.2 ⟨_, le_self_add (α := Ideal B) (Ideal.mem_map_of_mem _ hr), rfl⟩
  exact hr

/-- A subring integrally closed in a field is the intersection of valuation subrings
containing it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8799df0564fc3ad2e388effbfe78be11707c5feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
