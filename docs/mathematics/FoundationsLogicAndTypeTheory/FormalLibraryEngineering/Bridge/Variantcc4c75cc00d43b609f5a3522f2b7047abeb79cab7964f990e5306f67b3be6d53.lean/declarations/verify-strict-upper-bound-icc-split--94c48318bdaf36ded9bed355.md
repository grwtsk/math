# verify_strict_upper_bound_Icc_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce092e6db89b4336a50f9a6613738f249d427ae3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5b90f1b-21fb-f47c-f78b-5750885610c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c88a15e4-536d-8b80-984e-e30f0995e6ad",
  "kind": "theorem",
  "lexical_name": "verify_strict_upper_bound_Icc_split",
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
  "slug": "verify-strict-upper-bound-icc-split--94c48318bdaf36ded9bed355",
  "source": {
    "blob": "ce092e6db89b4336a50f9a6613738f249d427ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94c48318bdaf36ded9bed35513393d112e4f6a21a5e9af7cfa36b048f2aee1fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c88a15e4-536d-8b80-984e-e30f0995e6ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strict_upper_bound_Icc_split (e : Expr) (hsupp : ExprSupportedCore e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ) (cfg : EvalConfig)
    (h_left : checkStrictUpperBound e (splitMid ⟨lo, hi, hle⟩).1 c cfg = true)
    (h_right : checkStrictUpperBound e (splitMid ⟨lo, hi, hle⟩).2 c cfg = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) (hi : ℝ), Expr.eval (fun _ => x) e < c := by
  intro x hx
  have := verify_strict_upper_bound_split e hsupp ⟨lo, hi, hle⟩ c cfg h_left h_right
  apply this
  rwa [IntervalRat.mem_iff_mem_Icc]

/-- Bridge from subdivision to Set.Icc strict lower bound goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce092e6db89b4336a50f9a6613738f249d427ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
