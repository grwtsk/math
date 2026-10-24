# add_evalSet_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 549,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3160623b-529c-73c7-dc55-bd850ac09671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41922e77-cd82-a78c-1229-0c56e139241d",
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
  "slug": "add-evalset-correct--0ccd88e8edeea7417d097b5e",
  "source": {
    "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 549,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ccd88e8edeea7417d097b5eb55a3aa7ea20aa99f5de20fdfe18dd76d62b8150",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41922e77-cd82-a78c-1229-0c56e139241d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–584.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
