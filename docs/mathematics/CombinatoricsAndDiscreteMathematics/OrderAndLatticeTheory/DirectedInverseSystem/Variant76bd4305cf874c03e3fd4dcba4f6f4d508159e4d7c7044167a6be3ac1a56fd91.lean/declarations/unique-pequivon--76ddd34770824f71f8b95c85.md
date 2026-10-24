# unique_pEquivOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3853d66e-2da0-98c2-ab23-6108ac59b759",
  "kind": "theorem",
  "lexical_name": "unique_pEquivOn",
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
  "slug": "unique-pequivon--76ddd34770824f71f8b95c85",
  "source": {
    "blob": "eba8367ed1ab4a5b7deccc7a2a4f67bb29ced57e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 423,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ddd34770824f71f8b95c852a181095063b50e2530c75e060800636cd55b96e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3853d66e-2da0-98c2-ab23-6108ac59b759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_pEquivOn (hs : IsLowerSet s) {e₁ e₂ : PEquivOn f equivSucc s} : e₁ = e₂ := by
  obtain ⟨e₁, nat₁, compat₁⟩ := e₁
  obtain ⟨e₂, nat₂, compat₂⟩ := e₂
  ext1; ext1 i; dsimp only
  refine SuccOrder.prelimitRecOn i.1 (motive := fun i ↦ ∀ h : i ∈ s, e₁ ⟨i, h⟩ = e₂ ⟨i, h⟩)
    (fun i nmax ih hi ↦ ?_) (fun i lim ih hi ↦ ?_) i.2
  · ext x ⟨j, hj⟩
    obtain rfl | hj := ((lt_succ_iff_of_not_isMax nmax).mp hj).eq_or_lt
    · exact (compat₁ _ nmax x).trans (compat₂ _ nmax x).symm
    have hi : i ∈ s := hs (le_succ i) hi
    rw [piLTProj_intro (f := e₁ _ x) (le_succ i) (by exact hj),
        ← nat₁ _ hi (by exact le_succ i), ih, nat₂ _ hi (by exact le_succ i)]
  · ext x j
    have ⟨k, hjk, hki⟩ := lim.mid j.2
    have hk : k ∈ s := hs hki.le hi
    rw [piLTProj_intro (f := e₁ _ x) hki.le hjk, piLTProj_intro (f := e₂ _ x) hki.le hjk,
      ← nat₁ _ hk, ← nat₂ _ hk, ih _ hki]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant76bd4305cf874c03e3fd4dcba4f6f4d508159e4d7c7044167a6be3ac1a56fd91.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba8367ed1ab4a5b7deccc7a2a4f67bb29ced57e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
