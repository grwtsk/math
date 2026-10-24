# ofMapSplitAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac79005648d334e3fcacea262e9bfe0f7d708daa2945e56ddd2014a7c7a8216e",
  "kind": "def",
  "lexical_name": "ofMapSplitAdd",
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
  "slug": "ofmapsplitadd--100b0fe8e84a55d571b95de6",
  "source": {
    "blob": "61fb2e528f253707440b02c0cd6efbc9b945a9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:100b0fe8e84a55d571b95de63c649d22144749249e79db44fa658932e8e6bcc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac79005648d334e3fcacea262e9bfe0f7d708daa2945e56ddd2014a7c7a8216e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMapSplitAdd [Finite ι] (f : Box ι → M) (I₀ : WithTop (Box ι))
    (hf : ∀ I : Box ι, ↑I ≤ I₀ → ∀ {i x}, x ∈ Ioo (I.lower i) (I.upper i) →
      (I.splitLower i x).elim' 0 f + (I.splitUpper i x).elim' 0 f = f I) :
    ι →ᵇᵃ[I₀] M := by
  classical
  refine ⟨f, ?_⟩
  replace hf (I : Box ι) (hI : ↑I ≤ I₀) (s) : ∑ J ∈ (splitMany I s).boxes, f J = f I := by
    induction s using Finset.induction_on with
    | empty => simp
    | insert a s _ ihs =>
      rw [splitMany_insert, inf_split, ← ihs, biUnion_boxes, sum_biUnion_boxes]
      refine Finset.sum_congr rfl fun J' hJ' => ?_
      by_cases h : a.2 ∈ Ioo (J'.lower a.1) (J'.upper a.1)
      · rw [sum_split_boxes]
        exact hf _ ((WithTop.coe_le_coe.2 <| le_of_mem _ hJ').trans hI) h
      · rw [split_of_notMem_Ioo h, top_boxes, Finset.sum_singleton]
  intro I hI π hπ
  have Hle : ∀ J ∈ π, ↑J ≤ I₀ := fun J hJ => (WithTop.coe_le_coe.2 <| π.le_of_mem hJ).trans hI
  rcases hπ.exists_splitMany_le with ⟨s, hs⟩
  rw [← hf _ hI, ← inf_of_le_right hs, inf_splitMany, biUnion_boxes, sum_biUnion_boxes]
  exact Finset.sum_congr rfl fun J hJ => (hf _ (Hle _ hJ) _).symm

/-- If `g : M → N` is an additive map and `f` is a box additive map, then `g ∘ f` is a box additive
map. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61fb2e528f253707440b02c0cd6efbc9b945a9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
