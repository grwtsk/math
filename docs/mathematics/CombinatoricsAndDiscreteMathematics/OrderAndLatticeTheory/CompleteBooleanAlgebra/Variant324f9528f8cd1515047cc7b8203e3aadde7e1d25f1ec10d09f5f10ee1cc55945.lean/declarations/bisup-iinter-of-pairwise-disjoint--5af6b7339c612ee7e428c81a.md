# biSup_iInter_of_pairwise_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a68cee17-c620-8807-43da-7cc10afe9f3e",
  "kind": "theorem",
  "lexical_name": "biSup_iInter_of_pairwise_disjoint",
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
  "slug": "bisup-iinter-of-pairwise-disjoint--5af6b7339c612ee7e428c81a",
  "source": {
    "blob": "72b9082d728256f9a78510b35272b52181d5d445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af6b7339c612ee7e428c81abc8131184edcc027851ca2c108e1590709f6e8fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a68cee17-c620-8807-43da-7cc10afe9f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biSup_iInter_of_pairwise_disjoint [CompletelyDistribLattice α] {ι κ : Type*}
    [hκ : Nonempty κ] {f : ι → α} (h : Pairwise (Disjoint on f)) (s : κ → Set ι) :
    (⨆ i ∈ (⋂ j, s j), f i) = ⨅ j, (⨆ i ∈ s j, f i) := by
  rcases hκ with ⟨j⟩
  simp_rw [iInf_iSup_eq, mem_iInter]
  refine le_antisymm
    (iSup₂_le fun i hi ↦ le_iSup₂_of_le (fun _ ↦ i) hi (le_iInf fun _ ↦ le_rfl))
    (iSup₂_le fun I hI ↦ ?_)
  by_cases! H : ∀ k, I k = I j
  · exact le_iSup₂_of_le (I j) (fun k ↦ (H k) ▸ (hI k)) (iInf_le _ _)
  · rcases H with ⟨k, hk⟩
    calc ⨅ l, f (I l)
    _ ≤ f (I k) ⊓ f (I j) := le_inf (iInf_le _ _) (iInf_le _ _)
    _ = ⊥ := (h hk).eq_bot
    _ ≤ _ := bot_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b9082d728256f9a78510b35272b52181d5d445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
