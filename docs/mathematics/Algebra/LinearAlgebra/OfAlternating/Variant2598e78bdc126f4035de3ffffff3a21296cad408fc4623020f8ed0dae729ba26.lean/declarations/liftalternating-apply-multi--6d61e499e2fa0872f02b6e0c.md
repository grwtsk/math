# liftAlternating_apply_ιMulti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4607292-c404-3a64-72b2-49c395985cc2",
  "kind": "theorem",
  "lexical_name": "liftAlternating_apply_ιMulti",
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
  "slug": "liftalternating-apply-multi--6d61e499e2fa0872f02b6e0c",
  "source": {
    "blob": "aa2df6d3476e99586c418661782c584e177a3837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d61e499e2fa0872f02b6e0cc3e7f82a2711ef2e2ab6a23f0ab77a3b7cf8b32c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4607292-c404-3a64-72b2-49c395985cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftAlternating_apply_ιMulti {n : ℕ} (f : ∀ i, AlternatingMap R M N (Fin i))
    (v : Fin n → M) : liftAlternating (R := R) (M := M) (N := N) f (ιMulti R n v) = f n v := by
  rw [ιMulti_apply]
  -- porting note: `v` is generalized automatically so it was removed from the next line
  induction' n with n ih generalizing f
  · -- porting note: Lean does not automatically synthesize the instance
    -- `[Subsingleton (Fin 0 → M)]` which is needed for `Subsingleton.elim 0 v` on line 114.
    letI : Subsingleton (Fin 0 → M) := by infer_instance
    rw [List.ofFn_zero, List.prod_nil, liftAlternating_one, Subsingleton.elim 0 v]
  · rw [List.ofFn_succ, List.prod_cons, liftAlternating_ι_mul, ih,
      AlternatingMap.curryLeft_apply_apply]
    congr
    exact Matrix.cons_head_tail _
#align exterior_algebra.lift_alternating_apply_ι_multi ExteriorAlgebra.liftAlternating_apply_ιMulti

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa2df6d3476e99586c418661782c584e177a3837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
