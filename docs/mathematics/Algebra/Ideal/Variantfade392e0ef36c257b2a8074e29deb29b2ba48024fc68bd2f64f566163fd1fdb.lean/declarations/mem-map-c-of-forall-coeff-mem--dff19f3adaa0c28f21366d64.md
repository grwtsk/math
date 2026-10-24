# mem_map_C_of_forall_coeff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c7e7e6f-edd5-a93f-28a2-622557cd2815",
  "kind": "theorem",
  "lexical_name": "mem_map_C_of_forall_coeff_mem",
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
  "slug": "mem-map-c-of-forall-coeff-mem--dff19f3adaa0c28f21366d64",
  "source": {
    "blob": "eb0d1eb3a256de86634359d67bdec1c9c214d898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 57,
    "path": "GRWTSK/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff19f3adaa0c28f21366d644efc0db40d09a5d1550d70244211895522a6a547",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7e7e6f-edd5-a93f-28a2-622557cd2815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_map_C_of_forall_coeff_mem (hI : I.FG) (hf : ∀ m : σ →₀ ℕ, p.coeff m ∈ I) :
    p ∈ I.map C := by
  obtain ⟨S, hS⟩ := hI
  have (m : σ →₀ ℕ) : ∃ r : S → R, p.coeff m = ∑ a ∈ S.attach, r a * a := by
    have h_mem : p.coeff m ∈ Submodule.span R (Set.range (fun a : S => a.val)) := by
      convert hf m using 1
      simp [hS]
    obtain ⟨c, hc⟩ := Finsupp.mem_span_range_iff_exists_finsupp.mp h_mem
    exact ⟨c, by simp_all [Finsupp.sum_fintype]⟩
  obtain ⟨g, hg⟩ : ∃ g : S → MvPowerSeries σ R,
      ∀ m, p.coeff m = ∑ a ∈ S.attach, (g a).coeff m * a.val := by
    choose r hr using this
    exact ⟨fun a m => r m a, hr⟩
  have h_sum : p = ∑ a ∈ S.attach, g a * C a.val := by
    simp [MvPowerSeries.ext_iff, hg]
  rw [← hS, h_sum]
  exact sum_mem _ fun a _ => mul_mem_left _ _ (mem_map_of_mem _ (subset_span a.2))

/-- Suppose that `I` is finitely generated, then the push-forward of an ideal `I` of `R` to
`MvPowerSeries σ R` via inclusion is exactly the set of power series whose
coefficients are in `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0d1eb3a256de86634359d67bdec1c9c214d898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
