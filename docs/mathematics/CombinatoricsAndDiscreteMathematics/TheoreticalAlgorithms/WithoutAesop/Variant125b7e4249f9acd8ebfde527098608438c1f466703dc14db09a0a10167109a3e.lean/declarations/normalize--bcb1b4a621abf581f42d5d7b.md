# normalize'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4f42e4cbdaa9b6c5c9b05b0c634301a8816f6d8415ea99c96c6da8bd0b118e2",
  "kind": "def",
  "lexical_name": "normalize'",
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
  "slug": "normalize--bcb1b4a621abf581f42d5d7b",
  "source": {
    "blob": "4d3555e137de270858b065225976dfc57fbe4bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant125b7e4249f9acd8ebfde527098608438c1f466703dc14db09a0a10167109a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcb1b4a621abf581f42d5d7b66e654c805f2ac939fdc63c4bc9627db338771e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant125b7e4249f9acd8ebfde527098608438c1f466703dc14db09a0a10167109a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4f42e4cbdaa9b6c5c9b05b0c634301a8816f6d8415ea99c96c6da8bd0b118e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalize' (l : AList (fun _ : ℕ => Bool)) :
    (e : IfExpr) → { e' : IfExpr //
        (∀ f, e'.eval f = e.eval (fun w => (l.lookup w).elim (f w) id))
        ∧ e'.normalized
        ∧ ∀ (v : ℕ), v ∈ vars e' → l.lookup v = none }
  | lit b => ⟨lit b, by simp⟩
  | var v =>
    match h : l.lookup v with
    | none => ⟨var v, by simp_all⟩
    | some b => ⟨lit b, by simp_all⟩
  | .ite (lit true) t e =>
    have ⟨t', ht'⟩ := normalize' l t
    ⟨t', by simp_all⟩
  | .ite (lit false) t e =>
    have ⟨e', he'⟩ := normalize' l e
    ⟨e', by simp_all⟩
  | .ite (.ite a b c) d e =>
    have ⟨t', ht₁, ht₂⟩ := normalize' l (.ite a (.ite b d e) (.ite c d e))
    ⟨t', fun f => by rw [ht₁, eval_ite_ite'], ht₂⟩
  | .ite (var v) t e =>
    match h : l.lookup v with
    | none =>
      have ⟨t', ht₁, ht₂, ht₃⟩ := normalize' (l.insert v true) t
      have ⟨e', he₁, he₂, he₃⟩ := normalize' (l.insert v false) e
      ⟨if t' = e' then t' else .ite (var v) t' e', by
        refine ⟨fun f => ?_, ?_, fun w b => ?_⟩
        · simp only [eval, apply_ite, ite_eq_iff']
          cases hfv : f v
          · simp +contextual only [Bool.cond_false, h, he₁]
            refine ⟨fun _ => ?_, fun _ => ?_⟩
            · congr
              ext w
              by_cases h : w = v
              · subst h
                simp_all
              · simp_all
            · congr
              ext w
              by_cases h : w = v
              · subst h
                simp_all
              · simp_all
          · simp only [Bool.cond_true, h, ht₁]
            refine ⟨fun _ => ?_, fun _ => ?_⟩
            · congr
              ext w
              by_cases h : w = v
              · subst h
                simp_all
              · simp_all
            · congr
              ext w
              by_cases h : w = v
              · subst h
                simp_all
              · simp_all
        · have := ht₃ v
          have := he₃ v
          simp_all? says
            simp_all only [normalized, Bool.and_eq_true, Bool.not_eq_eq_eq_not, Bool.not_true,
              AList.lookup_insert_eq_none, ne_eq, AList.lookup_insert, reduceCtorEq, imp_false]
          obtain ⟨⟨⟨tn, tc⟩, tr⟩, td⟩ := ht₂
          split <;> rename_i h'
          · subst h'
            simp_all
          · simp_all
        · have := ht₃ w
          have := he₃ w
          by_cases h : w = v
          · subst h; simp_all
          · simp_all? says
              simp_all only [normalized, Bool.and_eq_true, Bool.not_eq_eq_eq_not, Bool.not_true,
                AList.lookup_insert_eq_none, ne_eq, not_false_eq_true, AList.lookup_insert_ne,
                implies_true]
            obtain ⟨⟨⟨en, ec⟩, er⟩, ed⟩ := he₂
            split at b <;> rename_i h'
            · subst h'; simp_all
            · simp_all only [vars, List.cons_append, List.mem_cons, List.mem_append, false_or]
              cases b <;> simp_all⟩
    | some b =>
      have ⟨e', he'⟩ := normalize' l (.ite (lit b) t e)
      ⟨e', by simp_all⟩
  termination_by e' => e'.normSize'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant125b7e4249f9acd8ebfde527098608438c1f466703dc14db09a0a10167109a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant125b7e4249f9acd8ebfde527098608438c1f466703dc14db09a0a10167109a3e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d3555e137de270858b065225976dfc57fbe4bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
