# ord_proj_dvd_ord_proj_iff_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 596,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2f0bbc5-791b-8f02-2ca0-72af60cc6687",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d904bf1-90e1-4ce1-ec21-ce1ef4ce44af",
  "kind": "theorem",
  "lexical_name": "ord_proj_dvd_ord_proj_iff_dvd",
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
  "slug": "ord-proj-dvd-ord-proj-iff-dvd--b25f5c81754eea8a564ab302",
  "source": {
    "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 596,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b25f5c81754eea8a564ab302eefdd40f8552e406541c3fe465aeb08269edbaad",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d904bf1-90e1-4ce1-ec21-ce1ef4ce44af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ord_proj_dvd_ord_proj_iff_dvd {a b : ℕ} (ha0 : a ≠ 0) (hb0 : b ≠ 0) :
    (∀ p : ℕ, ord_proj[p] a ∣ ord_proj[p] b) ↔ a ∣ b := by
  refine' ⟨fun h => _, fun hab p => ord_proj_dvd_ord_proj_of_dvd hb0 hab p⟩
  rw [← factorization_le_iff_dvd ha0 hb0]
  intro q
  rcases le_or_lt q 1 with (hq_le | hq1)
  · interval_cases q <;> simp
  exact (pow_dvd_pow_iff_le_right hq1).1 (h q)
#align nat.ord_proj_dvd_ord_proj_iff_dvd Nat.ord_proj_dvd_ord_proj_iff_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76683c5ca2e6fa7651186e158a5ce2c7080c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
