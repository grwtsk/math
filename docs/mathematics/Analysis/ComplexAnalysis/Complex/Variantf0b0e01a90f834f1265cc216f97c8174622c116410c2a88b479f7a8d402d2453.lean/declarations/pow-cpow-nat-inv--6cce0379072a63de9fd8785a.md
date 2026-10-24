# pow_cpow_nat_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a67149c846e38a48c4824fc1df3161feee9bb495",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0b0e01a90f834f1265cc216f97c8174622c116410c2a88b479f7a8d402d2453.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6df024ab-7be7-7362-aae8-fd8bbd3d6d09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:796a175c-033a-6a51-421d-7d16ee82f8b4",
  "kind": "lemma",
  "lexical_name": "pow_cpow_nat_inv",
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
  "slug": "pow-cpow-nat-inv--6cce0379072a63de9fd8785a",
  "source": {
    "blob": "a67149c846e38a48c4824fc1df3161feee9bb495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 171,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variantf0b0e01a90f834f1265cc216f97c8174622c116410c2a88b479f7a8d402d2453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cce0379072a63de9fd8785a264080545c2f41826953b6a784c1e9e8bfff9f55",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Complex/Variantf0b0e01a90f834f1265cc216f97c8174622c116410c2a88b479f7a8d402d2453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:796a175c-033a-6a51-421d-7d16ee82f8b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_cpow_nat_inv {x : ℂ} {n : ℕ} (h₀ : n ≠ 0) (hlt : -(π / n) < x.arg) (hle : x.arg ≤ π / n) :
    (x ^ n) ^ (n⁻¹ : ℂ) = x := by
  rw [← cpow_nat_mul', mul_inv_cancel₀ (Nat.cast_ne_zero.2 h₀), cpow_one]
  · rwa [← div_lt_iff₀' (Nat.cast_pos.2 h₀.bot_lt), neg_div]
  · rwa [← le_div_iff₀' (Nat.cast_pos.2 h₀.bot_lt)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Complex/Variantf0b0e01a90f834f1265cc216f97c8174622c116410c2a88b479f7a8d402d2453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Complex/Variantf0b0e01a90f834f1265cc216f97c8174622c116410c2a88b479f7a8d402d2453.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a67149c846e38a48c4824fc1df3161feee9bb495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
