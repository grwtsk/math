# zpow_eq_one_iff_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 558,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21c0a861-5819-7d69-d55c-e6952844df01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ce43a39-8963-9ebf-c43a-a56e0520680f",
  "kind": "theorem",
  "lexical_name": "zpow_eq_one_iff_dvd",
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
  "slug": "zpow-eq-one-iff-dvd--a547f6ea9f2a7d0de37af420",
  "source": {
    "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 558,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a547f6ea9f2a7d0de37af420eb8545eec730c4dd9a19023c1eb3f8b7b81c8e53",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ce43a39-8963-9ebf-c43a-a56e0520680f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_eq_one_iff_dvd (h : IsPrimitiveRoot ζ k) (l : ℤ) : ζ ^ l = 1 ↔ (k : ℤ) ∣ l := by
  by_cases h0 : 0 ≤ l
  · lift l to ℕ using h0; rw [zpow_ofNat]; norm_cast; exact h.pow_eq_one_iff_dvd l
  · have : 0 ≤ -l := by simp only [not_le, neg_nonneg] at h0 ⊢; exact le_of_lt h0
    lift -l to ℕ using this with l' hl'
    rw [← dvd_neg, ← hl']
    norm_cast
    rw [← h.pow_eq_one_iff_dvd, ← inv_inj, ← zpow_neg, ← hl', zpow_ofNat, inv_one]
#align is_primitive_root.zpow_eq_one_iff_dvd IsPrimitiveRoot.zpow_eq_one_iff_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7d346b387e87d7ad658156243fed6149b1957e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
