# exists_orderedMinor_sq_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ae1781-478b-f38b-9e67-9583f2a07f8a",
  "kind": "theorem",
  "lexical_name": "exists_orderedMinor_sq_margin",
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
  "slug": "exists-orderedminor-sq-margin--5a27ae7e55e3b3e6cb13da42",
  "source": {
    "blob": "d0f0ba302aff47a11fd33db86e8caaba2364f70d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a27ae7e55e3b3e6cb13da42ec9a1a9578de3cdce5e758cf3e497f55545ab983",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ae1781-478b-f38b-9e67-9583f2a07f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orderedMinor_sq_margin (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, 1 / (n.choose k : ℝ) ≤ orderedMinor A I ^ 2 := by
  classical
  have hs := sum_orderedMinor_sq_eq_one A hA
  have hn : Nonempty (Fin k ↪o Fin n) := by
    by_contra h
    have : IsEmpty (Fin k ↪o Fin n) := not_nonempty_iff.mp h
    simp at hs
  have hcard : 0 < (n.choose k : ℝ) := by
    have hc := Fintype.card_pos_iff.mpr hn
    rw [card_orderedPivots] at hc
    exact_mod_cast hc
  by_contra! h
  have ht : (∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2) <
      ∑ _I : Fin k ↪o Fin n, 1 / (n.choose k : ℝ) :=
    Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty (fun i _ => h i)
  simp only [Finset.sum_const, Finset.card_univ, card_orderedPivots, nsmul_eq_mul] at ht
  rw [hs, mul_one_div_cancel hcard.ne'] at ht
  exact (lt_irrefl (1 : ℝ)) ht

/-- The explicit determinant margin uses the positive square root of the pivot count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0f0ba302aff47a11fd33db86e8caaba2364f70d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
