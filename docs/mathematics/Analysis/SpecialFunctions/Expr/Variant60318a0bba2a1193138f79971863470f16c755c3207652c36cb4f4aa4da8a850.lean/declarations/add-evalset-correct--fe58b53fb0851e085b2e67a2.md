# add_evalSet_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fdb2ad9-e6d5-cb39-eecb-04ec13fd3e76",
  "kind": "theorem",
  "lexical_name": "add_evalSet_correct",
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
  "slug": "add-evalset-correct--fe58b53fb0851e085b2e67a2",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 557,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe58b53fb0851e085b2e67a2f505068570f0cf6738c2cf77f2a8480ff78c2968",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fdb2ad9-e6d5-cb39-eecb-04ec13fd3e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_evalSet_correct
    (e1 e2 : Expr) (domain : IntervalRat)
    (tm1 tm2 : TaylorModel)
    (hcenter : tm1.center = tm2.center)
    (hf1 : ∀ x ∈ domain, Expr.eval (fun _ => x) e1 ∈ tm1.evalSet x)
    (hf2 : ∀ x ∈ domain, Expr.eval (fun _ => x) e2 ∈ tm2.evalSet x) :
    ∀ x ∈ domain,
      Expr.eval (fun _ => x) (Expr.add e1 e2) ∈ (TaylorModel.add tm1 tm2).evalSet x := by
  intro x hx
  have h1 := hf1 x hx
  have h2 := hf2 x hx
  simp only [TaylorModel.evalSet, Set.mem_setOf_eq] at h1 h2
  rcases h1 with ⟨r1, hr1, hr1eq⟩
  rcases h2 with ⟨r2, hr2, hr2eq⟩
  have hxcent : (x - (tm2.center : ℝ)) = (x - tm1.center) := by
    have hcast : (tm2.center : ℝ) = tm1.center := by exact_mod_cast hcenter.symm
    simp [hcast]
  simp only [TaylorModel.evalSet, Set.mem_setOf_eq, TaylorModel.add]
  refine ⟨r1 + r2, ?_, ?_⟩
  · exact IntervalRat.mem_add hr1 hr2
  · have hmap :
        Polynomial.aeval (x - tm1.center) (tm1.poly + tm2.poly)
          = Polynomial.aeval (x - tm1.center) tm1.poly
            + Polynomial.aeval (x - tm1.center) tm2.poly :=
      (Polynomial.aeval (x - tm1.center)).map_add tm1.poly tm2.poly
    calc
      Expr.eval (fun _ => x) (Expr.add e1 e2)
          = (Polynomial.aeval (x - tm1.center) tm1.poly
              + Polynomial.aeval (x - tm1.center) tm2.poly) + (r1 + r2) := by
            simp [Expr.eval_add, hr1eq, hr2eq,
                  add_comm, add_left_comm, add_assoc, hxcent]
      _ = Polynomial.aeval (x - tm1.center) (tm1.poly + tm2.poly) + (r1 + r2) := by
            simp [hmap]

/-- If `e` evaluates into `tm.evalSet x` on the domain, then `-e` evaluates into
    `(neg tm).evalSet x` on the domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
