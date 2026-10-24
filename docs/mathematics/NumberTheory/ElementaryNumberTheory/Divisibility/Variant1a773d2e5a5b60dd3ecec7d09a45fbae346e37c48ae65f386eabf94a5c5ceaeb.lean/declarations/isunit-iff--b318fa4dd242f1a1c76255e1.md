# isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ec03122-120c-7ee5-8967-954d6b0c2034",
  "kind": "theorem",
  "lexical_name": "isUnit_iff",
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
  "slug": "isunit-iff--b318fa4dd242f1a1c76255e1",
  "source": {
    "blob": "ade99a6e2bb892a6d7de0f1257e4d3b39817ec1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b318fa4dd242f1a1c76255e1581e63d61204eb0455b07db945ab67cc5a96bbaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ec03122-120c-7ee5-8967-954d6b0c2034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff : IsUnit a ↔ a = 1 := by
  refine
    ⟨fun h => ?_, by
      rintro rfl
      exact isUnit_one⟩
  rcases eq_or_ne a 0 with (rfl | ha)
  · exact (not_isUnit_zero h).elim
  rw [isUnit_iff_forall_dvd] at h
  obtain ⟨t, ht⟩ := h 1
  rw [eq_comm, mul_eq_one_iff_of_one_le] at ht
  · exact ht.1
  · exact one_le_iff_ne_zero.mpr ha
  · apply one_le_iff_ne_zero.mpr
    intro h
    rw [h, mul_zero] at ht
    exact zero_ne_one ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant1a773d2e5a5b60dd3ecec7d09a45fbae346e37c48ae65f386eabf94a5c5ceaeb.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade99a6e2bb892a6d7de0f1257e4d3b39817ec1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
