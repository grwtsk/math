# Function.Injective.tprod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d75551b7-a553-5a4e-03dd-01c686f3b7ec",
  "kind": "theorem",
  "lexical_name": "Function.Injective.tprod_eq",
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
  "slug": "function-injective-tprod-eq--d754ef1d7f5ab8520c3c4567",
  "source": {
    "blob": "3016778253def5ff0b82482193f500d98342d8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 548,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d754ef1d7f5ab8520c3c4567cf3d0363472372cb984dca18c105d5a7542c7812",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d75551b7-a553-5a4e-03dd-01c686f3b7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.tprod_eq {g : γ → β} (hg : Injective g) {f : β → α}
    (hf : mulSupport f ⊆ Set.range g) : ∏' c, f (g c) = ∏' b, f b := by
  classical
  have : mulSupport f = g '' mulSupport (f ∘ g) := by
    rw [mulSupport_comp_eq_preimage, Set.image_preimage_eq_iff.2 hf]
  rw [← Function.comp_def]
  by_cases hf_fin : (mulSupport f).Finite
  · have hfg_fin : (mulSupport (f ∘ g)).Finite := hf_fin.preimage hg.injOn
    lift g to γ ↪ β using hg
    simp_rw [tprod_eq_prod' hf_fin.coe_toFinset.ge, tprod_eq_prod' hfg_fin.coe_toFinset.ge,
      comp_apply, ← Finset.prod_map]
    refine Finset.prod_congr (Finset.coe_injective ?_) fun _ _ ↦ rfl
    simp [this]
  · have hf_fin' : ¬ Set.Finite (mulSupport (f ∘ g)) := by
      rwa [this, Set.finite_image_iff hg.injOn] at hf_fin
    simp_rw [tprod_def, SummationFilter.support_eq_univ, Set.inter_univ,
      show (unconditional β).HasSupport by infer_instance,
      show (unconditional γ).HasSupport by infer_instance, true_and,
      ite_eq_right hf_fin, ite_eq_right hf_fin', Multipliable]
    simp [hg.hasProd_iff (mulSupport_subset_iff'.1 hf)]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantdb6e86ce795727534db25b34ec9a28b6377644d0d5c379c3432752f74ca717f0.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3016778253def5ff0b82482193f500d98342d8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
