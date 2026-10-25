# verify_strict_lower_bound_withInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "061689e7b77ffdfc7df4d6e345946dffe49db0be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64825118-2fde-f15a-9bde-bf7ad24436c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c0680f7-4c0d-e156-2bc5-b1994776a4dc",
  "kind": "theorem",
  "lexical_name": "verify_strict_lower_bound_withInv",
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
  "slug": "verify-strict-lower-bound-withinv--23506a5bb445fcc9d1ac12f8",
  "source": {
    "blob": "061689e7b77ffdfc7df4d6e345946dffe49db0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23506a5bb445fcc9d1ac12f8d12d91078369543bf9b487c2da940367c9dbedc3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c0680f7-4c0d-e156-2bc5-b1994776a4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strict_lower_bound_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (c : ℚ)
    (h_cert : checkStrictLowerBoundWithInv e I c = true) :
    ∀ x ∈ I, c < Expr.eval (fun _ => x) e := by
  simp only [checkStrictLowerBoundWithInv] at h_cert
  split at h_cert
  · next J hsome =>
    simp only [decide_eq_true_eq] at h_cert
    intro x hx
    have hge := evalInterval?_ge_of_lo e hsupp I J J.lo hsome (le_refl _) x hx
    have hJ_lo : (J.lo : ℝ) ≤ Expr.eval (fun _ => x) e := hge
    have hc_lt_lo : (c : ℝ) < (J.lo : ℝ) := by exact_mod_cast h_cert
    exact lt_of_lt_of_le hc_lt_lo hJ_lo
  · simp at h_cert

/-! ### Set.Icc Bridge Theorems for ExprSupportedWithInv -/

/-- Bridge theorem for Set.Icc upper bounds with ExprSupportedWithInv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `061689e7b77ffdfc7df4d6e345946dffe49db0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
