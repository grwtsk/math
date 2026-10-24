# mod_dioph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aa50e07-bc8a-366e-fcd3-8abd0f83b9ca",
  "kind": "theorem",
  "lexical_name": "mod_dioph",
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
  "slug": "mod-dioph--eae010984df923b9a0ee8c40",
  "source": {
    "blob": "bf1956a14f0558af61d22d906927310f409b5627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 615,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae010984df923b9a0ee8c4077a14ebea60be914004b4ee44a86904ccc5eb339",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aa50e07-bc8a-366e-fcd3-8abd0f83b9ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_dioph : DiophFn fun v => f v % g v :=
  have : Dioph fun v : Vector3 ℕ 3 => (v &2 = 0 ∨ v &0 < v &2) ∧ ∃ x : ℕ, v &0 + v &2 * x = v &1 :=
    (D&2 D= D.0 D∨ D&0 D< D&2) D∧ (D∃) 3 <| D&1 D+ D&3 D* D&0 D= D&2
  diophFn_comp2 df dg <|
    (diophFn_vec _).2 <|
      ext this <|
        (vectorAll_iff_forall _).1 fun z x y =>
          show ((y = 0 ∨ z < y) ∧ ∃ c, z + y * c = x) ↔ x % y = z from
            ⟨fun ⟨h, c, hc⟩ => by
              rw [← hc]; simp only [add_mul_mod_self_left]; rcases h with x0 | hl
              · rw [x0, mod_zero]
              exact mod_eq_of_lt hl, fun e => by
                rw [← e]
                exact ⟨or_iff_not_imp_left.2 fun h => mod_lt _ (Nat.pos_of_ne_zero h), x / y,
                  mod_add_div _ _⟩⟩

@[inherit_doc]
scoped infixl:80 " D% " => Dioph.mod_dioph

/-- The set of places where two Diophantine functions are congruent modulo a third
is Diophantine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1956a14f0558af61d22d906927310f409b5627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
