# openCoverOfMapIrrelevantEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c75fa8f15d94b555749abb9a8c8c8d4d2ca192d91c443e22b7a27607714c9d62",
  "kind": "def",
  "lexical_name": "openCoverOfMapIrrelevantEqTop",
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
  "slug": "opencoverofmapirrelevanteqtop--a4733c541afc2432adcde8ec",
  "source": {
    "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 414,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4733c541afc2432adcde8ecd684de974edb6793b03c09906b343eb8ab091cff",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c75fa8f15d94b555749abb9a8c8c8d4d2ca192d91c443e22b7a27607714c9d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openCoverOfMapIrrelevantEqTop : X.OpenCover :=
  X.openCoverOfIsOpenCover (fun ir : Σ' i r, 0 < i ∧ r ∈ 𝒜 i ↦
    X.basicOpen (f ir.2.1)) (by
    classical
    have H : Ideal.span (Set.range fun x : Σ' i r, 0 < i ∧ r ∈ 𝒜 i ↦ x.2.1) =
        (HomogeneousIdeal.irrelevant 𝒜).toIdeal := by
      apply le_antisymm
      · rw [Ideal.span_le, Set.range_subset_iff]
        rintro ⟨i, r, hi0, hri⟩
        simp [-ZeroMemClass.coe_eq_zero,
          DirectSum.decompose_of_mem_ne 𝒜 hri hi0.ne']
      · intro x hx
        rw [← DirectSum.sum_support_decompose 𝒜 x]
        refine Ideal.sum_mem _ fun c hc ↦ ?_
        have : c ≠ 0 := by contrapose hc; simpa [hc] using hx
        exact Ideal.subset_span ⟨⟨c, _, this.bot_lt, by simp⟩, rfl⟩
    ext1
    apply compl_injective
    simp only [TopologicalSpace.Opens.coe_iSup, Set.compl_iUnion, ← Scheme.zeroLocus_singleton,
      ← Scheme.zeroLocus_iUnion, Set.iUnion_singleton_eq_range, TopologicalSpace.Opens.coe_top,
      Set.compl_univ]
    rw [← Scheme.zeroLocus_span, Set.range_comp', ← Ideal.map_span, H, hf]
    simp)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Given a graded ring `A` and a map `f : A →+* Γ(X, ⊤)` such that the image of the
irrelevant ideal under `f` generates the whole ring, we can construct a map `X ⟶ Proj 𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
