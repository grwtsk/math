# IsMinOn.of_isLocalMinOn_of_convexOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a7e5d43-7706-e848-0d14-1cf2e1e3d57e",
  "kind": "theorem",
  "lexical_name": "IsMinOn.of_isLocalMinOn_of_convexOn_Icc",
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
  "slug": "isminon-of-islocalminon-of-convexon-icc--b1b4b9903577f900b791aebd",
  "source": {
    "blob": "05eb31c596c5ec588c580395baf2320b108e6a5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 38,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1b4b9903577f900b791aebd5ea310a47b9f3b47868c00b31d682c8b400a608f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a7e5d43-7706-e848-0d14-1cf2e1e3d57e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMinOn.of_isLocalMinOn_of_convexOn_Icc {f : ℝ → β} {a b : ℝ} (a_lt_b : a < b)
    (h_local_min : IsLocalMinOn f (Icc a b) a) (h_conv : ConvexOn ℝ (Icc a b) f) :
    IsMinOn f (Icc a b) a := by
  rintro c hc
  dsimp only [mem_setOf_eq]
  rw [IsLocalMinOn, nhdsWithin_Icc_eq_nhdsWithin_Ici a_lt_b] at h_local_min
  rcases hc.1.eq_or_lt with (rfl | a_lt_c)
  · exact le_rfl
  have H₁ : ∀ᶠ y in 𝓝[>] a, f a ≤ f y :=
    h_local_min.filter_mono (nhdsWithin_mono _ Ioi_subset_Ici_self)
  have H₂ : ∀ᶠ y in 𝓝[>] a, y ∈ Ioc a c := Ioc_mem_nhdsWithin_Ioi (left_mem_Ico.2 a_lt_c)
  rcases(H₁.and H₂).exists with ⟨y, hfy, hy_ac⟩
  rcases(Convex.mem_Ioc a_lt_c).mp hy_ac with ⟨ya, yc, ya₀, yc₀, yac, rfl⟩
  suffices : ya • f a + yc • f a ≤ ya • f a + yc • f c
  exact (smul_le_smul_iff_of_pos yc₀).1 (le_of_add_le_add_left this)
  calc
    ya • f a + yc • f a = f a := by rw [← add_smul, yac, one_smul]
    _ ≤ f (ya * a + yc * c) := hfy
    _ ≤ ya • f a + yc • f c := h_conv.2 (left_mem_Icc.2 a_lt_b.le) hc ya₀ yc₀.le yac
#align is_min_on.of_is_local_min_on_of_convex_on_Icc IsMinOn.of_isLocalMinOn_of_convexOn_Icc

/-- A local minimum of a convex function is a global minimum, restricted to a set `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05eb31c596c5ec588c580395baf2320b108e6a5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
