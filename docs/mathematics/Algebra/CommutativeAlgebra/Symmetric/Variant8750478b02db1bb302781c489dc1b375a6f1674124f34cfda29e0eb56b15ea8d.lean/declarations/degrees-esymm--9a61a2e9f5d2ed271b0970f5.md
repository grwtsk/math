# degrees_esymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af86fead33a24ae77d27522f6afda303c7ee015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:462ea96e-dcf0-a741-5c4b-f2f7243abf11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89176f21-b895-297e-662a-1616eebbbda5",
  "kind": "theorem",
  "lexical_name": "degrees_esymm",
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
  "slug": "degrees-esymm--9a61a2e9f5d2ed271b0970f5",
  "source": {
    "blob": "5af86fead33a24ae77d27522f6afda303c7ee015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 262,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a61a2e9f5d2ed271b0970f5897726f458ba9300b1a6624bb3b7b6d19b3a88d1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89176f21-b895-297e-662a-1616eebbbda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degrees_esymm [Nontrivial R] (n : ℕ) (hpos : 0 < n) (hn : n ≤ Fintype.card σ) :
    (esymm σ R n).degrees = (univ : Finset σ).val := by
  classical
    have :
      (Finsupp.toMultiset ∘ fun t : Finset σ => ∑ i : σ in t, Finsupp.single i 1) = Finset.val := by
      funext
      simp [Finsupp.toMultiset_sum_single]
    rw [degrees_def, support_esymm, sup_image, this]
    have : ((powersetLen n univ).sup (fun (x : Finset σ) => x)).val
        = sup (powersetLen n univ) val := by
      refine' comp_sup_eq_sup_comp _ _ _
      · intros
        simp only [union_val, sup_eq_union]
        congr
      · rfl
    rw [← this]
    obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hpos.ne'
    simpa using powersetLen_sup _ _ (Nat.lt_of_succ_le hn)
#align mv_polynomial.degrees_esymm MvPolynomial.degrees_esymm

end ElementarySymmetric

section PowerSum

open Finset

variable (σ R) [CommSemiring R] [Fintype σ] [Fintype τ]

/-- The degree-`n` power sum -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af86fead33a24ae77d27522f6afda303c7ee015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
