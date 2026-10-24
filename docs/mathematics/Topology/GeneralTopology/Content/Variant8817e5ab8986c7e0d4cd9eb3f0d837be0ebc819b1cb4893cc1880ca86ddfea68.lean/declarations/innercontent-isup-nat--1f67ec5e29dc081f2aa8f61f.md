# innerContent_iSup_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b886327-80d9-206f-7a47-5ffb1df10676",
  "kind": "theorem",
  "lexical_name": "innerContent_iSup_nat",
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
  "slug": "innercontent-isup-nat--1f67ec5e29dc081f2aa8f61f",
  "source": {
    "blob": "d18908f2655b45a60cc7102558d0cfec5e8e920f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f67ec5e29dc081f2aa8f61f57988625e6a0a56eefdf3fcbf52a4c4859e570f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b886327-80d9-206f-7a47-5ffb1df10676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerContent_iSup_nat [R1Space G] (U : ℕ → Opens G) :
    μ.innerContent (⨆ i : ℕ, U i) ≤ ∑' i : ℕ, μ.innerContent (U i) := by
  have h3 : ∀ (t : Finset ℕ) (K : ℕ → Compacts G), μ (t.sup K) ≤ t.sum fun i => μ (K i) := by
    intro t K
    refine Finset.induction_on t ?_ ?_
    · simp only [μ.empty, nonpos_iff_eq_zero, Finset.sum_empty, Finset.sup_empty]
    · intro n s hn ih
      grw [Finset.sup_insert, Finset.sum_insert hn, μ.sup_le, ih]
  refine iSup₂_le fun K hK => ?_
  obtain ⟨t, ht⟩ :=
    K.isCompact.elim_finite_subcover _ (fun i => (U i).isOpen) (by rwa [← Opens.coe_iSup])
  rcases K.isCompact.finite_compact_cover t (SetLike.coe ∘ U) (fun i _ => (U i).isOpen) ht with
    ⟨K', h1K', h2K', h3K'⟩
  let L : ℕ → Compacts G := fun n => ⟨K' n, h1K' n⟩
  convert! le_trans (h3 t L) _
  · ext1
    rw [Compacts.coe_finset_sup, Finset.sup_eq_iSup]
    exact h3K'
  refine le_trans (Finset.sum_le_sum ?_) (ENNReal.sum_le_tsum t)
  intro i _
  refine le_trans ?_ (le_iSup _ (L i))
  refine le_trans ?_ (le_iSup _ (h2K' i))
  rfl

/-- The inner content of a union of sets is at most the sum of the individual inner contents.
  This is the "unbundled" version of `innerContent_iSup_nat`.
  It is required for the API of `inducedOuterMeasure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18908f2655b45a60cc7102558d0cfec5e8e920f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
