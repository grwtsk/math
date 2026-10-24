# ergodic_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc3ae80844f68812ea5f37dbb9de9a5898bd5675",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f4e0d4eecf6783abd2e81462e1683c55f77f5b723b9b99d01a0795e72589698.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e414fb1-9b6f-5c46-6995-16c90a795b8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f8ad0ac-9124-37d3-08f6-6c04a02c6175",
  "kind": "theorem",
  "lexical_name": "ergodic_zsmul",
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
  "slug": "ergodic-zsmul--9fcac59d9e9613a7d9c0a941",
  "source": {
    "blob": "fc3ae80844f68812ea5f37dbb9de9a5898bd5675",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 105,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant6f4e0d4eecf6783abd2e81462e1683c55f77f5b723b9b99d01a0795e72589698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fcac59d9e9613a7d9c0a9418620716923ed14a9369b232d39b5f5797a165946",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant6f4e0d4eecf6783abd2e81462e1683c55f77f5b723b9b99d01a0795e72589698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8ad0ac-9124-37d3-08f6-6c04a02c6175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ergodic_zsmul {n : ℤ} (hn : 1 < |n|) : Ergodic fun y : AddCircle T => n • y :=
  { measurePreserving_zsmul volume (abs_pos.mp <| lt_trans zero_lt_one hn) with
    aeconst_set := fun s hs hs' => by
      let u : ℕ → AddCircle T := fun j => ↑((↑1 : ℝ) / ↑(n.natAbs ^ j) * T)
      replace hn : 1 < n.natAbs := by rwa [Int.abs_eq_natAbs, Nat.one_lt_cast] at hn
      have hu₀ : ∀ j, addOrderOf (u j) = n.natAbs ^ j := fun j => by
        convert!
          addOrderOf_div_of_gcd_eq_one (p := T) (m := 1) (pow_pos (pos_of_gt hn) j) (gcd_one_left _)
        norm_cast
      have hnu : ∀ j, n ^ j • u j = 0 := fun j => by
        rw [← addOrderOf_dvd_iff_zsmul_eq_zero, hu₀, Int.natCast_pow, Int.natCast_natAbs, ← abs_pow,
          abs_dvd]
      have hu₁ : ∀ j, (u j +ᵥ s : Set _) =ᵐ[volume] s := fun j =>
        (vadd_eq_self_of_preimage_zsmul_eq_self hs' (hnu j)).eventuallyEq
      have hu₂ : Tendsto (fun j => addOrderOf <| u j) atTop atTop := by
        simp_rw [hu₀]; exact tendsto_pow_atTop_atTop_of_one_lt hn
      rw [eventuallyEmptyOrUniv_iff']
      exact ae_empty_or_univ_of_forall_vadd_ae_eq_self hs.nullMeasurableSet hu₁ hu₂ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant6f4e0d4eecf6783abd2e81462e1683c55f77f5b723b9b99d01a0795e72589698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant6f4e0d4eecf6783abd2e81462e1683c55f77f5b723b9b99d01a0795e72589698.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3ae80844f68812ea5f37dbb9de9a5898bd5675` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
