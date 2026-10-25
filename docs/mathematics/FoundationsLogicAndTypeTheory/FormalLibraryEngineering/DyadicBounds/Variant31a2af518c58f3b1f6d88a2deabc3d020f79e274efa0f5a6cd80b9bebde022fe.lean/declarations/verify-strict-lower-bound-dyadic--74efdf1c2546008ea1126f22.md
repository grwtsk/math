# verify_strict_lower_bound_dyadic'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56e5d82e14dfbc6936d823a36ffe770f8bb4eabd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e80e18bf-3b2f-2d51-9622-727a08aef62f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3602dc3d-d746-64fa-af68-ccf31f2adf94",
  "kind": "theorem",
  "lexical_name": "verify_strict_lower_bound_dyadic'",
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
  "slug": "verify-strict-lower-bound-dyadic--74efdf1c2546008ea1126f22",
  "source": {
    "blob": "56e5d82e14dfbc6936d823a36ffe770f8bb4eabd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74efdf1c2546008ea1126f22fc5730bcfa130015dcaaf9fa5b9e28d203284f78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3602dc3d-d746-64fa-af68-ccf31f2adf94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strict_lower_bound_dyadic' (e : Expr) (hsupp : ExprSupported e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ)
    (prec : Int) (depth : Nat) (h_prec : prec ≤ 0)
    (h_check : checkStrictLowerBoundDyadic e lo hi hle c prec depth = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) hi, c < Expr.eval (fun _ => x) e := by
  have hdom : evalDomainValidDyadic e
      (fun _ => IntervalDyadic.ofIntervalRat ⟨lo, hi, hle⟩ prec)
      { precision := prec, taylorDepth := depth } :=
    evalDomainValidDyadic_of_ExprSupported hsupp _ _
  exact verify_strict_lower_bound_dyadic e hsupp.toCore lo hi hle c prec depth h_prec hdom h_check

/-! ### WithInv Check Functions

These bundle domain validity + bound check for expressions containing inv/log.
A single `native_decide` call proves both domain validity and the bound. -/

/-- Check upper bound for WithInv expressions (inv/log). Includes domain validity check. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e5d82e14dfbc6936d823a36ffe770f8bb4eabd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
