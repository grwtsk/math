# reduced_eq_iff_gauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdab4c92-ba06-6d54-b23e-8801f16527a8",
  "kind": "theorem",
  "lexical_name": "reduced_eq_iff_gauge",
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
  "slug": "reduced-eq-iff-gauge--697213946a91aabad9396e31",
  "source": {
    "blob": "dede9b689159b011b7845285c90222f7344de7aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697213946a91aabad9396e31e6a055ecda0f2516783641f8af0844623005e4b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdab4c92-ba06-6d54-b23e-8801f16527a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_eq_iff_gauge (u v : Cell V) :
    reduced u = reduced v ↔ ∃ w : Triple V, average w = 0 ∧ u = gaugeShift w v := by
  constructor
  · intro h
    have hm : average u.1 = average v.1 := congrArg Prod.fst h
    have he : delta0 u.1 - u.2 = delta0 v.1 - v.2 := congrArg Prod.snd h
    refine ⟨u.1 - v.1, ?_, ?_⟩
    · rw [average_sub, hm, sub_self]
    · apply Prod.ext
      · change u.1 = v.1 + (u.1 - v.1)
        abel
      · change u.2 = v.2 + delta0 (u.1 - v.1)
        rw [delta0_sub]
        calc
          u.2 = delta0 u.1 - (delta0 u.1 - u.2) := by abel
          _ = delta0 u.1 - (delta0 v.1 - v.2) := by rw [he]
          _ = v.2 + (delta0 u.1 - delta0 v.1) := by abel
  · rintro ⟨w, hw, rfl⟩
    exact reduced_gauge w hw v

/-- No compatibility restriction is hidden in the reduced output space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dede9b689159b011b7845285c90222f7344de7aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
