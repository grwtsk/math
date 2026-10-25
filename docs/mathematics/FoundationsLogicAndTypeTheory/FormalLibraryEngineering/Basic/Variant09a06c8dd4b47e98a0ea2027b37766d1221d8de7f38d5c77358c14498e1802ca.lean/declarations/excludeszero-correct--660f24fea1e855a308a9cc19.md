# excludesZero_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbc1e568-af09-5369-d0bd-6fdf2760ca75",
  "kind": "theorem",
  "lexical_name": "excludesZero_correct",
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
  "slug": "excludeszero-correct--660f24fea1e855a308a9cc19",
  "source": {
    "blob": "ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:660f24fea1e855a308a9cc19d51bff9530bbf92ec910c847e4fc5199d1366106",
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

Occurrence: `result:fbc1e568-af09-5369-d0bd-6fdf2760ca75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem excludesZero_correct (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (hexcl : excludesZero (evalInterval1 e I) = true) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≠ 0 := by
  intro x hx hcontra
  -- From evalInterval1_correct: f(x) ∈ [lo, hi]
  have hmem := evalInterval1_correct e hsupp x I hx
  simp only [IntervalRat.mem_def] at hmem
  -- excludesZero means hi < 0 ∨ 0 < lo
  simp only [excludesZero, decide_eq_true_eq] at hexcl
  cases hexcl with
  | inl hhi_neg =>
    -- hi < 0, so f(x) ≤ hi < 0, contradicting f(x) = 0
    have : (Expr.eval (fun _ => x) e : ℝ) ≤ (evalInterval1 e I).hi := hmem.2
    have hcast : ((evalInterval1 e I).hi : ℝ) < 0 := by exact_mod_cast hhi_neg
    linarith [hcontra]
  | inr hlo_pos =>
    -- 0 < lo, so 0 < lo ≤ f(x), contradicting f(x) = 0
    have : ((evalInterval1 e I).lo : ℝ) ≤ Expr.eval (fun _ => x) e := hmem.1
    have hcast : (0 : ℝ) < (evalInterval1 e I).lo := by exact_mod_cast hlo_pos
    linarith [hcontra]

/-- If there is a sign change, then by IVT there exists a root.
    This uses Mathlib's intermediate_value_Icc theorem.

    **Proof strategy**:
    1. signChange means f(lo) < 0 < f(hi) or f(hi) < 0 < f(lo)
    2. Use evalInterval1_correct on singletons to get actual values at endpoints
    3. Apply intermediate_value_Icc to conclude 0 is in the image -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
