# ineq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adff9ece634022f93a1ad964540bdb438a4f1902",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35c72bb4b6cef4c76deeca2ed50a26c09efb6284111090f6b600b5520439187b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dc21641-3aae-f3fd-83ee-ecab06977fa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf848227-ff6e-a07f-69ec-2c465004bd83",
  "kind": "lemma",
  "lexical_name": "ineq",
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
  "slug": "ineq--cd426c209fe5dc88fc8c88b0",
  "source": {
    "blob": "adff9ece634022f93a1ad964540bdb438a4f1902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 54,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo1982Q3/Variant35c72bb4b6cef4c76deeca2ed50a26c09efb6284111090f6b600b5520439187b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd426c209fe5dc88fc8c88b014c0414f5b60bf8b9de2741b0ad5a0a40ca765d1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo1982Q3/Variant35c72bb4b6cef4c76deeca2ed50a26c09efb6284111090f6b600b5520439187b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf848227-ff6e-a07f-69ec-2c465004bd83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ineq (h0 : x 0 = 1) (hp : ∀ k, 0 < x k) :
    4 * n / (n + 1) ≤ ∑ k ∈ range (n + 1), x k ^ 2 / x (k + 1) := by
  calc
    -- We first use AM-GM.
    _ ≤ (∑ k ∈ range n, x (k + 1) + 1) ^ 2 / (∑ k ∈ range n, x (k + 1)) * n / (n + 1) := by
      gcongr
      rw [le_div_iff₀]
      · simpa using four_mul_le_sq_add (∑ k ∈ range n, x (k + 1)) 1
      · exact sum_pos (fun k _ ↦ hp _) (nonempty_range_iff.2 hn)
    -- We move the fraction into the denominator.
    _ = (∑ k ∈ range n, x (k + 1) + 1) ^ 2 / ((∑ k ∈ range n, x (k + 1)) * (1 + 1 / n)) := by
      field
    -- We make use of the `le_avg` lemma.
    _ ≤ (∑ k ∈ range (n + 1), x k) ^ 2 / ∑ k ∈ range (n + 1), x (k + 1) := by
      gcongr
      · exact sum_pos (fun k _ ↦ hp _) nonempty_range_add_one
      · exact add_nonneg (sum_nonneg fun k _ ↦ (hp _).le) zero_le_one
      · rw [sum_range_succ', h0]
      · exact le_avg hn (hx.comp_monotone @Nat.succ_le_succ)
    -- We conclude by Sedrakyan.
    _ ≤ _ := sq_sum_div_le_sum_sq_div _ x fun k _ ↦ hp (k + 1)

end Imo1982Q3

/-- Part a of the problem is solved by `n = 4000`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo1982Q3/Variant35c72bb4b6cef4c76deeca2ed50a26c09efb6284111090f6b600b5520439187b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo1982Q3/Variant35c72bb4b6cef4c76deeca2ed50a26c09efb6284111090f6b600b5520439187b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adff9ece634022f93a1ad964540bdb438a4f1902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
