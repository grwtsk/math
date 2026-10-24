# KaehlerDifferential.span_range_derivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b65e71a-89ea-3d5e-828a-e1c15089bdde",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.span_range_derivation",
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
  "slug": "kaehlerdifferential-span-range-derivation--39df1331c1f6b72555e60982",
  "source": {
    "blob": "a4dd5e434af9d53d19da48a4a31bc630194ee4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 240,
    "path": "GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39df1331c1f6b72555e6098248f1b73623a207a1559cd5e80e2ce2b5de58ec97",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b65e71a-89ea-3d5e-828a-e1c15089bdde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.span_range_derivation :
    Submodule.span S (Set.range <| KaehlerDifferential.D R S) = ⊤ := by
  rw [_root_.eq_top_iff]
  rintro x -
  obtain ⟨⟨x, hx⟩, rfl⟩ := Ideal.toCotangent_surjective _ x
  have : x ∈ (KaehlerDifferential.ideal R S).restrictScalars S := hx
  rw [← KaehlerDifferential.submodule_span_range_eq_ideal] at this
  suffices ∃ hx, (KaehlerDifferential.ideal R S).toCotangent ⟨x, hx⟩ ∈
      Submodule.span S (Set.range <| KaehlerDifferential.D R S) by
    exact this.choose_spec
  refine Submodule.span_induction this ?_ ?_ ?_ ?_
  · rintro _ ⟨x, rfl⟩
    refine ⟨KaehlerDifferential.one_smul_sub_smul_one_mem_ideal R x, ?_⟩
    apply Submodule.subset_span
    exact ⟨x, KaehlerDifferential.DLinearMap_apply R S x⟩
  · exact ⟨zero_mem _, Submodule.zero_mem _⟩
  · rintro x y ⟨hx₁, hx₂⟩ ⟨hy₁, hy₂⟩; exact ⟨add_mem hx₁ hy₁, Submodule.add_mem _ hx₂ hy₂⟩
  · rintro r x ⟨hx₁, hx₂⟩;
    exact ⟨((KaehlerDifferential.ideal R S).restrictScalars S).smul_mem r hx₁,
      Submodule.smul_mem _ r hx₂⟩
#align kaehler_differential.span_range_derivation KaehlerDifferential.span_range_derivation

variable {R S}

/-- The linear map from `Ω[S⁄R]`, associated with a derivation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dd5e434af9d53d19da48a4a31bc630194ee4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
