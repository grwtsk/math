# output_probability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5a55024-ba80-37ea-e32a-9d189284a742",
  "kind": "theorem",
  "lexical_name": "output_probability",
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
  "slug": "output-probability--2a0b87adb3da7d771c521b34",
  "source": {
    "blob": "eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 266,
    "path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a0b87adb3da7d771c521b34b9da79c90d27d60ddf0b26919861bda24f91004a",
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

Occurrence: `result:e5a55024-ba80-37ea-e32a-9d189284a742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem output_probability (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A)
    (R : Finset A) (hR : R.card = m) :
    jointProbability sizes (fun s => output s = R) =
      1 / (((Finset.univ : Finset A).powersetCard m).card : ℚ) := by
  classical
  have hs : 0 < Fintype.card (Sample (A := A) sizes) :=
    Fintype.card_pos_iff.mpr (sample_nonempty sizes hpos hsum)
  have hcount := sample_card_eq_output_fiber_mul sizes R hR
  have hden : 0 < Fintype.card (OutputFiber sizes R) := by
    rw [hcount] at hs
    by_contra hn
    have hz := Nat.eq_zero_of_not_pos hn
    simp [hz] at hs
  unfold jointProbability
  have hc : @Fintype.card (OutputFiber sizes R)
      (@Subtype.fintype (Sample (A := A) sizes) (fun s => output s = R)
        (fun _ => Classical.propDecidable _) (sampleFintype sizes)) =
      Fintype.card (OutputFiber sizes R) :=
    @Fintype.card_congr (OutputFiber sizes R) (OutputFiber sizes R)
      (@Subtype.fintype (Sample (A := A) sizes) (fun s => output s = R)
        (fun _ => Classical.propDecidable _) (sampleFintype sizes))
      inferInstance (Equiv.refl _)
  rw [hc, hcount, Nat.cast_mul]
  have hn : (Fintype.card (OutputFiber sizes R) : ℚ) ≠ 0 := by
    exact_mod_cast ne_of_gt hden
  field_simp

/-- Rectangular events in the product choice space factor exactly. This is the
finite counting proof of conditional independence, including nonidentical parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
