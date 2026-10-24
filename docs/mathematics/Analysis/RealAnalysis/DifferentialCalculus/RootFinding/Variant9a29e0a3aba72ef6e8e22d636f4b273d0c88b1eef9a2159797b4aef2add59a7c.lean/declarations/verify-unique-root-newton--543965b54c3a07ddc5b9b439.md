# verify_unique_root_newton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0ca3c6d-705b-e3fd-3639-a07bcfd6d489",
  "kind": "theorem",
  "lexical_name": "verify_unique_root_newton",
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
  "slug": "verify-unique-root-newton--543965b54c3a07ddc5b9b439",
  "source": {
    "blob": "315d17660f460f5b4b197971d55addc12669fe53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543965b54c3a07ddc5b9b43945be416448653b41be6137b98257d612de9e4db1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ca3c6d-705b-e3fd-3639-a07bcfd6d489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_unique_root_newton (e : Expr) (hsupp : ExprSupported e)
    (hvar0 : UsesOnlyVar0 e) (I : IntervalRat) (cfg : NewtonConfig)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (h_cert : checkNewtonContracts e I cfg = true) :
    ∃! x, x ∈ I ∧ Expr.eval (fun _ => x) e = 0 := by
  simp only [checkNewtonContracts] at h_cert
  -- Extract the Newton step result
  split at h_cert
  · -- Newton step returned none
    exact absurd h_cert Bool.false_ne_true
  · -- Newton step returned some N
    rename_i N hN
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h_cert
    -- We have contraction: I.lo < N.lo and N.hi < I.hi
    have hContract : N.lo > I.lo ∧ N.hi < I.hi := ⟨h_cert.1, h_cert.2⟩
    -- Apply newton_contraction_unique_root directly
    -- This theorem already proves ∃! x, x ∈ I ∧ ... (uniqueness in I, not just N)
    exact newton_contraction_unique_root e hsupp hvar0 I N (Or.inr hN) hContract hCont

/-! ### Core MVT Lemmas for Newton Contraction Contradiction

These lemmas prove that if Newton contraction holds but f has constant sign at both
endpoints, we get a contradiction via MVT bounds.

Key insight: If f doesn't change sign on I (both endpoints positive or both negative),
then by monotonicity (from nonzero derivative), f has constant sign throughout I.
But Newton contraction requires specific quotient bounds that MVT proves are violated. -/

/-- MVT lower bound using derivIntervalCore: if f'(ξ) ∈ [dI.lo, dI.hi] for all ξ ∈ I,
    then f(y) - f(x) ≥ dI.lo * (y - x) for x ≤ y in I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315d17660f460f5b4b197971d55addc12669fe53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
