# output_event_probability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecb2d14d-4031-536c-8445-23bf2ba53286",
  "kind": "theorem",
  "lexical_name": "output_event_probability",
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
  "slug": "output-event-probability--bc40ca9ab255abe2b85dcc93",
  "source": {
    "blob": "eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 329,
    "path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc40ca9ab255abe2b85dcc93ec7484afea720885b3716bae39f7bd821ec308cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecb2d14d-4031-536c-8445-23bf2ba53286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem output_event_probability (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A)
    (E : Finset A → Prop) :
    jointProbability sizes (fun s => E (output s)) =
      (((Finset.univ : Finset A).powersetCard m).filter E).card /
        (((Finset.univ : Finset A).powersetCard m).card : ℚ) := by
  classical
  obtain ⟨s₀⟩ := sample_nonempty sizes hpos hsum
  let R := output s₀
  have hR : R.card = m := output_card s₀
  let K := Fintype.card (OutputFiber sizes R)
  have htotal := sample_card_eq_output_fiber_mul sizes R hR
  have hK : (K : ℚ) ≠ 0 := by
    have hn : Nonempty (OutputFiber sizes R) := ⟨⟨s₀, rfl⟩⟩
    exact_mod_cast ne_of_gt (Fintype.card_pos_iff.mpr hn)
  have hevent : Fintype.card {s : Sample (A := A) sizes // E (output s)} =
      (((Finset.univ : Finset A).powersetCard m).filter E).card * K := by
    rw [Fintype.card_subtype]
    have h := Finset.card_eq_sum_card_fiberwise
      (s := (Finset.univ : Finset (Sample (A := A) sizes)).filter (fun s => E (output s)))
      (t := ((Finset.univ : Finset A).powersetCard m).filter E) (f := output)
      (fun s hs => Finset.mem_filter.mpr
        ⟨Finset.mem_powersetCard.mpr ⟨Finset.subset_univ _, output_card s⟩,
          (Finset.mem_filter.mp hs).2⟩)
    rw [h]
    calc
      _ = ∑ T ∈ ((Finset.univ : Finset A).powersetCard m).filter E, K := by
        apply Finset.sum_congr rfl
        intro T hT
        have hET := (Finset.mem_filter.mp hT).2
        have hTc := (Finset.mem_powersetCard.mp (Finset.mem_filter.mp hT).1).2
        have hsets : ((Finset.univ : Finset (Sample (A := A) sizes)).filter
            (fun s => E (output s))).filter (fun s => output s = T) =
            Finset.univ.filter (fun s => output s = T) := by
          ext s
          simp only [Finset.mem_filter, Finset.mem_univ, true_and]
          exact ⟨And.right, fun hs => ⟨hs ▸ hET, hs⟩⟩
        rw [hsets, ← Fintype.card_subtype]
        exact outputFiber_card_eq sizes T R (hTc.trans hR.symm)
      _ = _ := by simp
  unfold jointProbability
  rw [hevent, htotal, Nat.cast_mul, Nat.cast_mul]
  change _ / (_ * (K : ℚ)) = _
  field_simp

/-- Balanced sizes differ by at most one, with the larger parts first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
