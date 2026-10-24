# Icc_factorization_eq_pow_dvd

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
      "line": 718,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18bd6346-345d-90e8-8cd6-91861b27d783",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78ced508-a73f-26ce-4074-713d0c69b31d",
  "kind": "theorem",
  "lexical_name": "Icc_factorization_eq_pow_dvd",
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
  "slug": "icc-factorization-eq-pow-dvd--68137518c1e7785f18a0410f",
  "source": {
    "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 718,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68137518c1e7785f18a0410fca5381a3031cf7d9529b254ebd47a8883c8f8b06",
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

Occurrence: `result:78ced508-a73f-26ce-4074-713d0c69b31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Icc_factorization_eq_pow_dvd (n : ℕ) {p : ℕ} (pp : Prime p) :
    Icc 1 (n.factorization p) = (Ico 1 n).filter fun i : ℕ => p ^ i ∣ n := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp
  ext x
  simp only [mem_Icc, Finset.mem_filter, mem_Ico, and_assoc, and_congr_right_iff,
    pp.pow_dvd_iff_le_factorization hn, iff_and_self]
  exact fun _ H => lt_of_le_of_lt H (factorization_lt p hn)
#align nat.Icc_factorization_eq_pow_dvd Nat.Icc_factorization_eq_pow_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76683c5ca2e6fa7651186e158a5ce2c7080c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
