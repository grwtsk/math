# verify_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cb48ea4f9c2081a518861c4c7fa8116251a2655",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dd7a83d-67e6-0b9a-efa8-91bc211e9d27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0662a31c-3940-47d6-9b98-bf12d0c7b571",
  "kind": "theorem",
  "lexical_name": "verify_upper_bound",
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
  "slug": "verify-upper-bound--f2112ce65d6089d75e6079ea",
  "source": {
    "blob": "1cb48ea4f9c2081a518861c4c7fa8116251a2655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2112ce65d6089d75e6079ea3cec4770fae7200029b0ad20ea4455353a522a5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0662a31c-3940-47d6-9b98-bf12d0c7b571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_upper_bound (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig)
    (h_cert : checkUpperBound e I c cfg = true) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c := by
  simp only [checkUpperBound, Bool.and_eq_true, decide_eq_true_eq] at h_cert
  have hdom := checkDomainValid1_correct e I cfg h_cert.1
  have hhi := h_cert.2
  exact exprCore_le_of_interval_hi e hsupp I c cfg hdom hhi

/-- **Golden Theorem for Lower Bounds**

    If `checkLowerBound e I c cfg = true`, then `∀ x ∈ I, c ≤ Expr.eval (fun _ => x) e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4148514fd9a7b2a16c6ca23bc879d2d3b58900150a405ef205e0ef760f960f6d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb48ea4f9c2081a518861c4c7fa8116251a2655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
