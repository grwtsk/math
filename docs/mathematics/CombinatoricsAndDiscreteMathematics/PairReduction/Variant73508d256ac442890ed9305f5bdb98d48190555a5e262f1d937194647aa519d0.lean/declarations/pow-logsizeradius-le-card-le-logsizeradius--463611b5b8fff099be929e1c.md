# pow_logSizeRadius_le_card_le_logSizeRadius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31c39251-762c-fc7f-f306-71f06d0192ab",
  "kind": "lemma",
  "lexical_name": "pow_logSizeRadius_le_card_le_logSizeRadius",
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
  "slug": "pow-logsizeradius-le-card-le-logsizeradius--463611b5b8fff099be929e1c",
  "source": {
    "blob": "b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:463611b5b8fff099be929e1cc27ad8676fdec4bb43445da51f3bc5dcf1f40d56",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c39251-762c-fc7f-f306-71f06d0192ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_logSizeRadius_le_card_le_logSizeRadius (ha : 1 < a) (ht : t ∈ V) :
    a ^ (logSizeRadius t V a c - 1)
      ≤ #(V.filter fun x ↦ edist t x ≤ (logSizeRadius t V a c - 1) * c) := by
  by_cases h_one : logSizeRadius t V a c = 1
  · simp only [h_one, tsub_self, pow_zero, Nat.cast_one, zero_mul, nonpos_iff_eq_zero,
      Nat.one_le_cast, Finset.one_le_card]
    exact ⟨t, by simpa⟩
  rw [logSizeRadius, dite_eq_left ha] at h_one ⊢
  have : Nat.find (exists_radius_le t V ha c) - 1 < Nat.find (exists_radius_le t V ha c) := by
    simp
  have h := Nat.find_min (exists_radius_le t V ha c) this
  simp only [ENNReal.natCast_sub, Nat.cast_one, not_and, not_le] at h
  exact (h (by lia)).le

/-- A structure for carrying the data of `logSizeBallSeq` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
