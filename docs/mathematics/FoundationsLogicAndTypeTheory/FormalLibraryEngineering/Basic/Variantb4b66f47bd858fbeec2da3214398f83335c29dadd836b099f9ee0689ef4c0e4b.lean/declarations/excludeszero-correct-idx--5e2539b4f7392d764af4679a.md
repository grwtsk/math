# excludesZero_correct_idx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c31b31e-8a64-a91e-05ce-644b212d4602",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8ad2db5-4d5c-a0ff-b401-4858a2756932",
  "kind": "theorem",
  "lexical_name": "excludesZero_correct_idx",
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
  "slug": "excludeszero-correct-idx--5e2539b4f7392d764af4679a",
  "source": {
    "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e2539b4f7392d764af4679ad64eed5d9ad28fb137ff7458ab8badb14b8571a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ad2db5-4d5c-a0ff-b401-4858a2756932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem excludesZero_correct_idx (e : Expr) (hsupp : ExprSupported e)
    (ρ_int : IntervalEnv)
    (hexcl : excludesZero (evalInterval e ρ_int) = true) :
    ∀ ρ_real : Nat → ℝ, (∀ i, ρ_real i ∈ ρ_int i) → Expr.eval ρ_real e ≠ 0 := by
  intro ρ_real hρ hcontra
  -- From evalInterval_correct: f(ρ) ∈ [lo, hi]
  have hmem := evalInterval_correct e hsupp ρ_real ρ_int hρ
  simp only [IntervalRat.mem_def] at hmem
  -- excludesZero means hi < 0 ∨ 0 < lo
  simp only [excludesZero, decide_eq_true_eq] at hexcl
  cases hexcl with
  | inl hhi_neg =>
    have : (Expr.eval ρ_real e : ℝ) ≤ (evalInterval e ρ_int).hi := hmem.2
    have hcast : ((evalInterval e ρ_int).hi : ℝ) < 0 := by exact_mod_cast hhi_neg
    linarith [hcontra]
  | inr hlo_pos =>
    have : ((evalInterval e ρ_int).lo : ℝ) ≤ Expr.eval ρ_real e := hmem.1
    have hcast : (0 : ℝ) < (evalInterval e ρ_int).lo := by exact_mod_cast hlo_pos
    linarith [hcontra]

/-- If there is a sign change along coordinate `idx`, then by IVT there exists a root
    along that coordinate.
    N-variable version: for any fixed values of other coordinates satisfying `ρ_int`,
    there exists a value of coordinate `idx` where the function is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd95c784f254c3e8b7cff9c2c08b85870b070ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
