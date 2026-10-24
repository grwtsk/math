# le_of_all_pow_lt_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30ace6a865a534d3c619f27cb36b9d89a6a5e875",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa8a550cf7a0fdbe132bad2db22b61b303d24e066a7e97ca15661a67f4cc459c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00b89d49-fbea-3198-4e01-9225b3cfdbf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28710a85-a7ec-2034-029c-40eb3319ccaf",
  "kind": "theorem",
  "lexical_name": "le_of_all_pow_lt_succ'",
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
  "slug": "le-of-all-pow-lt-succ--8a7d1e6201e48f0bc6e5fb14",
  "source": {
    "blob": "30ace6a865a534d3c619f27cb36b9d89a6a5e875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2013Q5/Variantfa8a550cf7a0fdbe132bad2db22b61b303d24e066a7e97ca15661a67f4cc459c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a7d1e6201e48f0bc6e5fb1480baf10a6507813de3986eb0daa3c652c8dfa8d3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2013Q5/Variantfa8a550cf7a0fdbe132bad2db22b61b303d24e066a7e97ca15661a67f4cc459c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28710a85-a7ec-2034-029c-40eb3319ccaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_all_pow_lt_succ' {x y : ℝ} (hx : 1 < x) (hy : 0 < y)
    (h : ∀ n : ℕ, 0 < n → x ^ n - 1 < y ^ n) : x ≤ y := by
  refine le_of_all_pow_lt_succ hx ?_ h
  by_contra! hy'' : y ≤ 1
  -- Then there exists y' such that 0 < y ≤ 1 < y' < x.
  have h_y'_lt_x : (x + 1) / 2 < x := by linarith
  have h1_lt_y' : 1 < (x + 1) / 2 := by linarith
  set y' := (x + 1) / 2
  have h_y_lt_y' : y < y' := by linarith
  have hh : ∀ n, 0 < n → x ^ n - 1 < y' ^ n := by
    intro n hn
    calc
      x ^ n - 1 < y ^ n := h n hn
      _ ≤ y' ^ n := by gcongr
  exact h_y'_lt_x.not_ge (le_of_all_pow_lt_succ hx h1_lt_y' hh)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2013Q5/Variantfa8a550cf7a0fdbe132bad2db22b61b303d24e066a7e97ca15661a67f4cc459c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2013Q5/Variantfa8a550cf7a0fdbe132bad2db22b61b303d24e066a7e97ca15661a67f4cc459c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ace6a865a534d3c619f27cb36b9d89a6a5e875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
