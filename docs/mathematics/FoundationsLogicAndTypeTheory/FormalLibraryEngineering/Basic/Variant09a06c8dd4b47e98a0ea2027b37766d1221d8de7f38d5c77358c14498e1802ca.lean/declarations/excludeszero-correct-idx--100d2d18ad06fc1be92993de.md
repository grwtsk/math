# excludesZero_correct_idx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb322654-81ba-f402-8bd2-d7e71596e399",
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
  "slug": "excludeszero-correct-idx--100d2d18ad06fc1be92993de",
  "source": {
    "blob": "ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:100d2d18ad06fc1be92993de78b09703987b6b6b9bb1c99e05aff9247696fede",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb322654-81ba-f402-8bd2-d7e71596e399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–233.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
