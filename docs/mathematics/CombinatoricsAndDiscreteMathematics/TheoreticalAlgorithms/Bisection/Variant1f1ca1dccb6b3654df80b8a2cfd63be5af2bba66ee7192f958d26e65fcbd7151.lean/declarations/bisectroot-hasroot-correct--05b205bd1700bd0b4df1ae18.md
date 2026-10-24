# bisectRoot_hasRoot_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5a8f987-bbfd-ae1d-b5fb-cf7df67c8032",
  "kind": "theorem",
  "lexical_name": "bisectRoot_hasRoot_correct",
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
  "slug": "bisectroot-hasroot-correct--05b205bd1700bd0b4df1ae18",
  "source": {
    "blob": "781efbca1cefe925ae0a4bb5573a26ee4e906ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 524,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b205bd1700bd0b4df1ae184239fee8cf9b7ffe7c3861c19394bee471ab24e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5a8f987-bbfd-ae1d-b5fb-cf7df67c8032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bisectRoot_hasRoot_correct (e : Expr) (hsupp : ExprSupported e) (I : IntervalRat)
    (maxIter : ℕ) (tol : ℚ) (htol : 0 < tol)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi)) :
    let result := bisectRoot e I maxIter tol htol
    ∀ J s, (J, s) ∈ result.intervals → s = RootStatus.hasRoot →
      ∃ x ∈ J, Expr.eval (fun _ => x) e = 0 := by
  intro result J s hmem hs
  -- Step 1: Show signChange e J = true
  -- Initial work list has only unknown status, so BisectInv holds vacuously
  have hWorkInv : BisectInv e [(I, RootStatus.unknown)] := fun J' s' h' hs' => by
    simp only [List.mem_singleton, Prod.mk.injEq] at h'
    obtain ⟨_, hs''⟩ := h'
    subst hs''
    cases hs'  -- unknown ≠ hasRoot
  have hInv := go_hasRoot_has_signChange e tol maxIter [(I, RootStatus.unknown)] maxIter []
    hWorkInv
    (fun _ _ h _ => by simp only [List.mem_nil_iff] at h)
  have hsign : signChange e J = true := hInv J s hmem hs
  -- Step 2: Show J is a sub-interval of I
  have hSub := go_subinterval e tol maxIter I [(I, RootStatus.unknown)] maxIter []
    (subinterval_inv_initial I)
    (fun _ _ h => by simp only [List.mem_nil_iff] at h)
  have hJsub := hSub J s hmem
  -- Step 3: Use signChange_correct with continuity on J
  have hContJ : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc J.lo J.hi) := by
    apply ContinuousOn.mono hCont
    intro x hx
    simp only [Set.mem_Icc] at hx ⊢
    constructor
    · calc (I.lo : ℝ) ≤ J.lo := by exact_mod_cast hJsub.1
        _ ≤ x := hx.1
    · calc x ≤ J.hi := hx.2
        _ ≤ I.hi := by exact_mod_cast hJsub.2
  exact signChange_correct e hsupp J hsign hContJ

/-- If bisection returns noRoot for an interval, there really is no root.

    **Note**: The bisection algorithm discards noRoot intervals - when checkRootStatus
    returns noRoot, we call `go rest n done` without adding J to done. So noRoot
    never appears in the output intervals list.

    This means the theorem is vacuously true: there are no (J, noRoot) pairs in the output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781efbca1cefe925ae0a4bb5573a26ee4e906ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
