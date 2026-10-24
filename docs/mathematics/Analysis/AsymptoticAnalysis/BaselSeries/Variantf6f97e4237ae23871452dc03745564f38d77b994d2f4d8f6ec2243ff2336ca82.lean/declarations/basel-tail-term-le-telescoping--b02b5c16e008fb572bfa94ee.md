# basel_tail_term_le_telescoping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed464a68823f193bc87326fd43692fd521f0173c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4135040-0690-36f6-c5a1-a46190ef3ac6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34441520-8827-4d98-6683-0ce2ccfc8fd5",
  "kind": "theorem",
  "lexical_name": "basel_tail_term_le_telescoping",
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
  "slug": "basel-tail-term-le-telescoping--b02b5c16e008fb572bfa94ee",
  "source": {
    "blob": "ed464a68823f193bc87326fd43692fd521f0173c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b02b5c16e008fb572bfa94eecd9b53d16181af004ba1ff662984fcd256fb2c99",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34441520-8827-4d98-6683-0ce2ccfc8fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basel_tail_term_le_telescoping
    (n : ℕ) :
    baselTerm (n + 10) ≤
      (1 : ℝ) / (n + 10) - (1 : ℝ) / (n + 11) := by
  have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
  have hterm : baselTerm (n + 10) = 1 / (((n : ℝ) + 11) ^ 2) := by
    unfold baselTerm
    push_cast
    ring
  have hkey :
      (1 : ℝ) / ((n : ℝ) + 10) - (1 : ℝ) / ((n : ℝ) + 11) =
        1 / (((n : ℝ) + 10) * ((n : ℝ) + 11)) := by
    have h10 : ((n : ℝ) + 10) ≠ 0 := by positivity
    have h11 : ((n : ℝ) + 11) ≠ 0 := by positivity
    field_simp
    ring
  rw [hterm]
  calc
    (1 : ℝ) / (((n : ℝ) + 11) ^ 2)
        ≤ 1 / (((n : ℝ) + 10) * ((n : ℝ) + 11)) :=
          one_div_le_one_div_of_le (by positivity) (by nlinarith [hn])
    _ = (1 : ℝ) / ((n : ℝ) + 10) - (1 : ℝ) / ((n : ℝ) + 11) := hkey.symm

/-- Finite telescoping identity for the comparison series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed464a68823f193bc87326fd43692fd521f0173c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
