# map_eq_one_of_forall_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:240f355f-6942-dbf0-db7f-b131f6633850",
  "kind": "lemma",
  "lexical_name": "map_eq_one_of_forall_lt",
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
  "slug": "map-eq-one-of-forall-lt--39c11b4a9de41466cb85c4e1",
  "source": {
    "blob": "5567be2aba293aaba62fe06477ad582ed2172e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39c11b4a9de41466cb85c4e10928f905faa62ab76c1018f37d03ad817308b880",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:240f355f-6942-dbf0-db7f-b131f6633850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_eq_one_of_forall_lt [MulArchimedean Γ₀] {v : Valuation K Γ₀} {r : Γ₀} (hr : r ≠ 0)
    (h : ∀ x : K, v x ≠ 0 → r < v x) (x : K) (hx : v x ≠ 0) : v x = 1 := by
  lift r to Γ₀ˣ using IsUnit.mk0 _ hr
  rcases lt_trichotomy (Units.mk0 _ hx) 1 with H | H | H
  · obtain ⟨k, hk⟩ := exists_pow_lt H r
    specialize h (x ^ k) (by simp [hx])
    simp [← Units.val_lt_val, ← map_pow, h.not_gt] at hk
  · simpa [Units.ext_iff] using H
  · rw [← inv_lt_one'] at H
    obtain ⟨k, hk⟩ := exists_pow_lt H r
    specialize h (x ^ (-k : ℤ)) (by simp [hx])
    simp only [zpow_neg, zpow_natCast, map_inv₀, map_pow] at h
    simp [← Units.val_lt_val, h.not_gt, inv_pow] at hk

/-- The basis of open subgroups for the topology on a ring determined by a valuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5567be2aba293aaba62fe06477ad582ed2172e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
