# summable_one_div_pow_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3aa0f44-8bc4-f8fc-4dd5-ec4daba20690",
  "kind": "theorem",
  "lexical_name": "summable_one_div_pow_of_le",
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
  "slug": "summable-one-div-pow-of-le--2ac12abccb1fc5744e359ead",
  "source": {
    "blob": "45d61887e17c52bdaa0091563890dace3d6f25ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 540,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac12abccb1fc5744e359ead284ae453bb887fc51f2e40fe73b491fe527db0a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3aa0f44-8bc4-f8fc-4dd5-ec4daba20690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_one_div_pow_of_le {m : ℝ} {f : ℕ → ℕ} (hm : 1 < m) (fi : ∀ i, i ≤ f i) :
    Summable fun i ↦ 1 / m ^ f i := by
  refine .of_nonneg_of_le (fun a ↦ by positivity) (fun a ↦ ?_)
      (summable_geometric_of_lt_one (one_div_nonneg.mpr (zero_le_one.trans hm.le))
        ((one_div_lt (zero_lt_one.trans hm) zero_lt_one).mpr (one_div_one.le.trans_lt hm)))
  rw [div_pow, one_pow]
  refine (one_div_le_one_div ?_ ?_).mpr (pow_right_mono₀ hm.le (fi a)) <;>
    exact pow_pos (zero_lt_one.trans hm) _

/-! ### Positive sequences with small sums on countable types -/


/-- For any positive `ε`, define on an encodable type a positive sequence with sum less than `ε` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d61887e17c52bdaa0091563890dace3d6f25ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
