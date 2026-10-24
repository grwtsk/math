# le_gauge_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52b45f6543e27c4d855004246f96470eb994f569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5421592fa01e35041561d225ae6ec4841e8fbb562c9b826e16d5610cf95de824.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbc0d04c-044f-80d3-9dda-aa2a64e6e099",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55125e63-eafa-92e4-7e03-1dcbb1c8544a",
  "kind": "theorem",
  "lexical_name": "le_gauge_of_notMem",
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
  "slug": "le-gauge-of-notmem--d3ae6583438093eb8e243d12",
  "source": {
    "blob": "52b45f6543e27c4d855004246f96470eb994f569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 242,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant5421592fa01e35041561d225ae6ec4841e8fbb562c9b826e16d5610cf95de824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ae6583438093eb8e243d1274cbeaee1f9afdb27f4a736e59a72d1c0b808ab2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variant5421592fa01e35041561d225ae6ec4841e8fbb562c9b826e16d5610cf95de824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55125e63-eafa-92e4-7e03-1dcbb1c8544a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_gauge_of_notMem (hs₀ : StarConvex ℝ 0 s) (hs₂ : Absorbs ℝ s {x}) (hx : x ∉ a • s) :
    a ≤ gauge s x := by
  rw [starConvex_zero_iff] at hs₀
  obtain ⟨r, hr, h⟩ := hs₂.exists_pos
  refine le_csInf ⟨r, hr, singleton_subset_iff.1 <| h _ (Real.norm_of_nonneg hr.le).ge⟩ ?_
  rintro b ⟨hb, x, hx', rfl⟩
  refine not_lt.1 fun hba => hx ?_
  have ha := hb.trans hba
  refine ⟨(a⁻¹ * b) • x, hs₀ hx' (by positivity) ?_, ?_⟩
  · rw [← div_eq_inv_mul]
    exact div_le_one_of_le₀ hba.le ha.le
  · dsimp only
    rw [← mul_smul, mul_inv_cancel_left₀ ha.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variant5421592fa01e35041561d225ae6ec4841e8fbb562c9b826e16d5610cf95de824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant5421592fa01e35041561d225ae6ec4841e8fbb562c9b826e16d5610cf95de824.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b45f6543e27c4d855004246f96470eb994f569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
