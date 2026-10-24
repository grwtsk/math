# _root_.Even.eq_of_totient_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47e68aea-3696-cc99-28b7-8ee7a27bb420",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d937fb21-aa37-dd20-d795-9f69c6f74ac9",
  "kind": "theorem",
  "lexical_name": "_root_.Even.eq_of_totient_eq_totient",
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
  "slug": "root-even-eq-of-totient-eq-totient--d4364f7556d700dca0cec2bf",
  "source": {
    "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 412,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4364f7556d700dca0cec2bf1ee8c1bbd018742ee2f27e20c765b44d13f01bbb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d937fb21-aa37-dd20-d795-9f69c6f74ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Even.eq_of_totient_eq_totient {a b : ℕ} (h : a ∣ b) (ha : Even a)
    (h' : a.totient = b.totient) : a = b := by
  by_cases ha' : a = 0
  · rw [ha', totient_zero, eq_comm, totient_eq_zero] at h'
    rw [h', ha']
  refine (eq_or_eq_of_totient_eq_totient h h').resolve_right fun h ↦ ?_
  rw [← h, totient_mul_of_prime_of_dvd (prime_two) (even_iff_two_dvd.mp ha), eq_comm,
    mul_eq_right (totient_eq_zero.not.mpr ha')] at h'
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e14c6e0393b2fd86b0b827db56ac0b18f0994990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
