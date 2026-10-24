# mem_antidiagonalTuple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2053717-4944-0baa-dd86-2cd98199b7a5",
  "kind": "theorem",
  "lexical_name": "mem_antidiagonalTuple",
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
  "slug": "mem-antidiagonaltuple--402d71081508b4d8f0d3f5df",
  "source": {
    "blob": "a4a037559f0b86a711d85b284f878a1165649818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402d71081508b4d8f0d3f5df04618dea2705c4b330630d8d6ff9971450cd321c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2053717-4944-0baa-dd86-2cd98199b7a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_antidiagonalTuple {n : ℕ} {k : ℕ} {x : Fin k → ℕ} :
    x ∈ antidiagonalTuple k n ↔ ∑ i, x i = n := by
  induction x using Fin.consInduction generalizing n with
  | h0 =>
    cases n
    · simp
    · simp [eq_comm]
  | h x₀ x ih =>
    simp_rw [Fin.sum_cons]
    rw [antidiagonalTuple]  -- porting note: simp_rw doesn't use the equation lemma properly
    simp_rw [List.mem_bind, List.mem_map,
      List.Nat.mem_antidiagonal, Fin.cons_eq_cons, exists_eq_right_right, ih,
      @eq_comm _ _ (Prod.snd _), and_comm (a := Prod.snd _ = _),
      ←Prod.mk.inj_iff (a₁ := Prod.fst _), Prod.mk.eta, exists_eq_right]
#align list.nat.mem_antidiagonal_tuple List.Nat.mem_antidiagonalTuple

/-- The antidiagonal of `n` does not contain duplicate entries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4a037559f0b86a711d85b284f878a1165649818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
