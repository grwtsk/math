# mem_map_C_of_forall_coeff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea0a8e441c9bbba5a2f8dd946d0c530deb643bdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c50477fa0db03a3e028299e5810a7027e97f5c8e0cf533b494acaf241a55515.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afb0f1da-15b8-f412-5987-f793adade345",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88116a84-fcec-f9d0-9ed7-e6728591c05a",
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
  "slug": "mem-map-c-of-forall-coeff-mem--2583b73e220071d7725572a1",
  "source": {
    "blob": "ea0a8e441c9bbba5a2f8dd946d0c530deb643bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/Algebra/Ideal/Variant8c50477fa0db03a3e028299e5810a7027e97f5c8e0cf533b494acaf241a55515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2583b73e220071d7725572a12f24d510fbfe91d601a19fd6309046e6368abda7",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant8c50477fa0db03a3e028299e5810a7027e97f5c8e0cf533b494acaf241a55515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88116a84-fcec-f9d0-9ed7-e6728591c05a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

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

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant8c50477fa0db03a3e028299e5810a7027e97f5c8e0cf533b494acaf241a55515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant8c50477fa0db03a3e028299e5810a7027e97f5c8e0cf533b494acaf241a55515.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea0a8e441c9bbba5a2f8dd946d0c530deb643bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
