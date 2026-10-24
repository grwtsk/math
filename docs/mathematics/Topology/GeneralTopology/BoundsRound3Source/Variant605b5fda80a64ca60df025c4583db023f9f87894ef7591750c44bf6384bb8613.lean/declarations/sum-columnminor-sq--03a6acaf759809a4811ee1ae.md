# sum_columnMinor_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b14d03a-edd4-5582-24ae-d1e1ba71998d",
  "kind": "theorem",
  "lexical_name": "sum_columnMinor_sq",
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
  "slug": "sum-columnminor-sq--03a6acaf759809a4811ee1ae",
  "source": {
    "blob": "8a6f5451b53faaf00804b52b39a7ebe0aefea395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a6acaf759809a4811ee1ae54ab3f814597cf4471b5589aa7603b090db011c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b14d03a-edd4-5582-24ae-d1e1ba71998d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_columnMinor_sq (A : Matrix (Fin k) (Fin n) ℝ) :
    (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      (k.factorial : ℝ) * ∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2 := by
  classical
  have hs : (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      ∑ c : {c : Fin k → Fin n // Function.Injective c}, columnMinor A c.val ^ 2 := by
    rw [Finset.sum_subtype_eq_sum_filter]
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro c _ hc
    have h : ¬ Function.Injective c := by simpa using hc
    rw [columnMinor_eq_zero_of_not_injective A c h, zero_pow (by decide : 2 ≠ 0)]
  rw [hs, ← orderedPermutationEquiv.sum_comp]
  change (∑ p : (Fin k ↪o Fin n) × Equiv.Perm (Fin k),
    columnMinor A (fun i => p.1 (p.2 i)) ^ 2) = _
  rw [Fintype.sum_prod_type]
  simp only [columnMinor_comp_perm_sq, Finset.sum_const, Finset.card_univ,
    Fintype.card_perm, nsmul_eq_mul]
  rw [Finset.mul_sum]

/-- Cauchy--Binet squared-minor identity for orthonormal rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a6f5451b53faaf00804b52b39a7ebe0aefea395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
