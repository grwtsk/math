# minimalPeriod_eq_prime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72427a4dee418798d5762e1a9232a13e9f255db3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40bb1b8d174e99c89cb17b9aec78442a3f94ca3c780ce4e486a6ecdc6775e598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0eda1f65-cf43-e35a-0e2b-fad24397afc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:847dd119-3173-308d-1fdf-056d5d6afa0a",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_eq_prime_iff",
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
  "slug": "minimalperiod-eq-prime-iff--42c0b278ab0a7cd0c009480f",
  "source": {
    "blob": "72427a4dee418798d5762e1a9232a13e9f255db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant40bb1b8d174e99c89cb17b9aec78442a3f94ca3c780ce4e486a6ecdc6775e598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c0b278ab0a7cd0c009480f63f945ae278ca09573c5ff8e8d4bf63f3044951a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant40bb1b8d174e99c89cb17b9aec78442a3f94ca3c780ce4e486a6ecdc6775e598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:847dd119-3173-308d-1fdf-056d5d6afa0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimalPeriod_eq_prime_iff {p : ℕ} [hp : Fact p.Prime] :
    minimalPeriod f x = p ↔ IsPeriodicPt f p x ∧ ¬IsFixedPt f x := by
  rw [Function.isPeriodicPt_iff_minimalPeriod_dvd, Nat.dvd_prime hp.out,
    ← minimalPeriod_eq_one_iff_isFixedPt.not, or_and_right, and_not_self_iff, false_or,
    iff_self_and]
  exact fun h ↦ ne_of_eq_of_ne h hp.out.ne_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant40bb1b8d174e99c89cb17b9aec78442a3f94ca3c780ce4e486a6ecdc6775e598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant40bb1b8d174e99c89cb17b9aec78442a3f94ca3c780ce4e486a6ecdc6775e598.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72427a4dee418798d5762e1a9232a13e9f255db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
