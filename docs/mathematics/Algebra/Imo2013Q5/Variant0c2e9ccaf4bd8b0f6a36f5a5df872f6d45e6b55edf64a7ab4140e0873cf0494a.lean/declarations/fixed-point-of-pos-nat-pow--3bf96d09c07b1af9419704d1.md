# fixed_point_of_pos_nat_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668711c3df3cf32942ddf42e4bc11f42f1a59de8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:232d1dcb-c12f-c80a-d10d-5ba08dab42f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ff4b788-767a-bd51-a7f1-24d1f2508324",
  "kind": "theorem",
  "lexical_name": "fixed_point_of_pos_nat_pow",
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
  "slug": "fixed-point-of-pos-nat-pow--3bf96d09c07b1af9419704d1",
  "source": {
    "blob": "668711c3df3cf32942ddf42e4bc11f42f1a59de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf96d09c07b1af9419704d13d2212fe641d87e858844b0a3ba08490c916d0c9",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ff4b788-767a-bd51-a7f1-24d1f2508324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_point_of_pos_nat_pow {f : ℚ → ℝ} {n : ℕ} (hn : 0 < n)
    (H1 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y) (H4 : ∀ n : ℕ, 0 < n → (n : ℝ) ≤ f n)
    (H5 : ∀ x : ℚ, 1 < x → (x : ℝ) ≤ f x) {a : ℚ} (ha1 : 1 < a) (hae : f a = a) :
    f (a ^ n) = a ^ n := by
  have hh0 : (a : ℝ) ^ n ≤ f (a ^ n) := by exact_mod_cast H5 (a ^ n) (one_lt_pow ha1 hn.ne')
  have hh1 :=
    calc
      f (a ^ n) ≤ f a ^ n := pow_f_le_f_pow hn ha1 H1 H4
      _ = (a : ℝ) ^ n := by rw [← hae]
  exact_mod_cast hh1.antisymm hh0
#align imo2013_q5.fixed_point_of_pos_nat_pow Imo2013Q5.fixed_point_of_pos_nat_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668711c3df3cf32942ddf42e4bc11f42f1a59de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
