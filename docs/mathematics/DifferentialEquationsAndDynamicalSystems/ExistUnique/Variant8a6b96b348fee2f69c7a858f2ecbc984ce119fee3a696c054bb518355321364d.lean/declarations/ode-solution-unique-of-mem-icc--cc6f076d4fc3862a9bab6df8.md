# ODE_solution_unique_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c7bbc71-df8d-e5f2-a023-01cd6292dac0",
  "kind": "theorem",
  "lexical_name": "ODE_solution_unique_of_mem_Icc",
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
  "slug": "ode-solution-unique-of-mem-icc--cc6f076d4fc3862a9bab6df8",
  "source": {
    "blob": "fd17382c2a8add899969cc6c56a493c2ba42dbf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 259,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc6f076d4fc3862a9bab6df80f40b71b2a706a932d61df9d133c0282aa0767c7",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c7bbc71-df8d-e5f2-a023-01cd6292dac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ODE_solution_unique_of_mem_Icc
    (hv : ∀ t ∈ Ioo a b, LipschitzOnWith K (v t) (s t))
    (ht : t₀ ∈ Ioo a b)
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ t ∈ Ioo a b, HasDerivAt f (v t (f t)) t)
    (hfs : ∀ t ∈ Ioo a b, f t ∈ s t)
    (hg : ContinuousOn g (Icc a b))
    (hg' : ∀ t ∈ Ioo a b, HasDerivAt g (v t (g t)) t)
    (hgs : ∀ t ∈ Ioo a b, g t ∈ s t)
    (heq : f t₀ = g t₀) :
    EqOn f g (Icc a b) := by
  rw [← Icc_union_Icc_eq_Icc (le_of_lt ht.1) (le_of_lt ht.2)]
  apply EqOn.union
  · have hss : Ioc a t₀ ⊆ Ioo a b := Ioc_subset_Ioo_right ht.2
    exact ODE_solution_unique_of_mem_Icc_left (fun t ht ↦ hv t (hss ht))
      (hf.mono <| Icc_subset_Icc_right <| le_of_lt ht.2)
      (fun _ ht' ↦ (hf' _ (hss ht')).hasDerivWithinAt) (fun _ ht' ↦ (hfs _ (hss ht')))
      (hg.mono <| Icc_subset_Icc_right <| le_of_lt ht.2)
      (fun _ ht' ↦ (hg' _ (hss ht')).hasDerivWithinAt) (fun _ ht' ↦ (hgs _ (hss ht'))) heq
  · have hss : Ico t₀ b ⊆ Ioo a b := Ico_subset_Ioo_left ht.1
    exact ODE_solution_unique_of_mem_Icc_right (fun t ht ↦ hv t (hss ht))
      (hf.mono <| Icc_subset_Icc_left <| le_of_lt ht.1)
      (fun _ ht' ↦ (hf' _ (hss ht')).hasDerivWithinAt) (fun _ ht' ↦ (hfs _ (hss ht')))
      (hg.mono <| Icc_subset_Icc_left <| le_of_lt ht.1)
      (fun _ ht' ↦ (hg' _ (hss ht')).hasDerivWithinAt) (fun _ ht' ↦ (hgs _ (hss ht'))) heq

/-- A version of `ODE_solution_unique_of_mem_Icc` for uniqueness in an open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd17382c2a8add899969cc6c56a493c2ba42dbf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
