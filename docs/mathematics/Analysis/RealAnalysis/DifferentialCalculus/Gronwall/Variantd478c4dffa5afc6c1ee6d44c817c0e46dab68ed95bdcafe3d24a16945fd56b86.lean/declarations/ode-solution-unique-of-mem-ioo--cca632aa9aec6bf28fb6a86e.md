# ODE_solution_unique_of_mem_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "609cf53913229b7d3ea89d4f2f0f9f9084288641",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:675b3f5c-b2fe-9cef-9fba-8ac432a1182f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fff898fd-52a9-c5c5-27a0-c88ed28a3eff",
  "kind": "theorem",
  "lexical_name": "ODE_solution_unique_of_mem_Ioo",
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
  "slug": "ode-solution-unique-of-mem-ioo--cca632aa9aec6bf28fb6a86e",
  "source": {
    "blob": "609cf53913229b7d3ea89d4f2f0f9f9084288641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 305,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cca632aa9aec6bf28fb6a86e19b4bd88a97c34e78375a330b1d1bb4b1787d469",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fff898fd-52a9-c5c5-27a0-c88ed28a3eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ODE_solution_unique_of_mem_Ioo
    (hv : ∀ t ∈ Ioo a b, LipschitzOnWith K (v t) (s t))
    (ht : t₀ ∈ Ioo a b)
    (hf : ∀ t ∈ Ioo a b, HasDerivAt f (v t (f t)) t ∧ f t ∈ s t)
    (hg : ∀ t ∈ Ioo a b, HasDerivAt g (v t (g t)) t ∧ g t ∈ s t)
    (heq : f t₀ = g t₀) :
    EqOn f g (Ioo a b) := by
  intros t' ht'
  rcases lt_or_le t' t₀ with (h | h)
  · have hss : Icc t' t₀ ⊆ Ioo a b :=
      fun _ ht'' ↦ ⟨lt_of_lt_of_le ht'.1 ht''.1, lt_of_le_of_lt ht''.2 ht.2⟩
    exact ODE_solution_unique_of_mem_Icc_left
      (fun t'' ht'' ↦ hv t'' ((Ioc_subset_Icc_self.trans hss) ht''))
      (HasDerivAt.continuousOn fun _ ht'' ↦ (hf _ <| hss ht'').1)
      (fun _ ht'' ↦ (hf _ <| hss <| Ioc_subset_Icc_self ht'').1.hasDerivWithinAt)
      (fun _ ht'' ↦ (hf _ <| hss <| Ioc_subset_Icc_self ht'').2)
      (HasDerivAt.continuousOn fun _ ht'' ↦ (hg _ <| hss ht'').1)
      (fun _ ht'' ↦ (hg _ <| hss <| Ioc_subset_Icc_self ht'').1.hasDerivWithinAt)
      (fun _ ht'' ↦ (hg _ <| hss <| Ioc_subset_Icc_self ht'').2) heq
      ⟨le_rfl, le_of_lt h⟩
  · have hss : Icc t₀ t' ⊆ Ioo a b :=
      fun _ ht'' ↦ ⟨lt_of_lt_of_le ht.1 ht''.1, lt_of_le_of_lt ht''.2 ht'.2⟩
    exact ODE_solution_unique_of_mem_Icc_right
      (fun t'' ht'' ↦ hv t'' ((Ico_subset_Icc_self.trans hss) ht''))
      (HasDerivAt.continuousOn fun _ ht'' ↦ (hf _ <| hss ht'').1)
      (fun _ ht'' ↦ (hf _ <| hss <| Ico_subset_Icc_self ht'').1.hasDerivWithinAt)
      (fun _ ht'' ↦ (hf _ <| hss <| Ico_subset_Icc_self ht'').2)
      (HasDerivAt.continuousOn fun _ ht'' ↦ (hg _ <| hss ht'').1)
      (fun _ ht'' ↦ (hg _ <| hss <| Ico_subset_Icc_self ht'').1.hasDerivWithinAt)
      (fun _ ht'' ↦ (hg _ <| hss <| Ico_subset_Icc_self ht'').2) heq
      ⟨h, le_rfl⟩

/-- Local unqueness of ODE solutions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609cf53913229b7d3ea89d4f2f0f9f9084288641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
