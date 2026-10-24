# bank_retains_complete_pulse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65b9d641-a5e4-04a5-eb5b-99e3bd599799",
  "kind": "theorem",
  "lexical_name": "bank_retains_complete_pulse",
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
  "slug": "bank-retains-complete-pulse--9e6f1ad960b6fa831aeb08af",
  "source": {
    "blob": "ce49393a91867637cf14d99ff14bb3c9943aefdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e6f1ad960b6fa831aeb08aff73662bbcdf26f8fc377bfbc99b42c3d774cf549",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b9d641-a5e4-04a5-eb5b-99e3bd599799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bank_retains_complete_pulse (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (hsep : Separated M) (j n : ℕ) (hn : (M j) ^ 2 ≤ n)
    (hnU : n ≤ (M j) ^ 2 + 2 * M j) (a : ℝ) :
    bankStorage M a n = storage (M j) a n := by
  have hjrange : j ∈ Finset.range (n + 1) := by
    apply Finset.mem_range.mpr
    have := hM j
    nlinarith
  have heq : height M n = triangle (M j) n := by
    apply le_antisymm
    · apply Finset.sup_le
      intro k _
      by_cases hkj : k = j
      · subst k; rfl
      · have hkzero : triangle (M k) n = 0 := by
          rcases hsep k j hkj with h | h
          · exact triangle_zero (Or.inr (h.trans hn))
          · exact triangle_zero (Or.inl (hnU.trans h))
        rw [hkzero]
        omega
    · exact Finset.le_sup (f := fun k ↦ triangle (M k) n) hjrange
  simp [bankStorage, storage, heq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce49393a91867637cf14d99ff14bb3c9943aefdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
